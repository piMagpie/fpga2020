// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "up"
#define AUTOTB_TVIN_up  "../tv/cdatafile/c.servo.autotvin_up.dat"
// wrapc file define: "down"
#define AUTOTB_TVIN_down  "../tv/cdatafile/c.servo.autotvin_down.dat"
// wrapc file define: "dutyCycle"
#define AUTOTB_TVOUT_dutyCycle  "../tv/cdatafile/c.servo.autotvout_dutyCycle.dat"
// wrapc file define: "speed"
#define AUTOTB_TVOUT_speed  "../tv/cdatafile/c.servo.autotvout_speed.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "dutyCycle"
#define AUTOTB_TVOUT_PC_dutyCycle  "../tv/rtldatafile/rtl.servo.autotvout_dutyCycle.dat"
// tvout file define: "speed"
#define AUTOTB_TVOUT_PC_speed  "../tv/rtldatafile/rtl.servo.autotvout_speed.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			up_depth = 0;
			down_depth = 0;
			dutyCycle_depth = 0;
			speed_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{up " << up_depth << "}\n";
			total_list << "{down " << down_depth << "}\n";
			total_list << "{dutyCycle " << dutyCycle_depth << "}\n";
			total_list << "{speed " << speed_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int up_depth;
		int down_depth;
		int dutyCycle_depth;
		int speed_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void servo (
char* up,
char* down,
char* left,
char* right,
char* dutyCycle,
char* speed);

extern "C" void AESL_WRAP_servo (
char* up,
char* down,
char* left,
char* right,
char* dutyCycle,
char* speed)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "dutyCycle"
		aesl_fh.read(AUTOTB_TVOUT_PC_dutyCycle, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_dutyCycle, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_dutyCycle, AESL_token); // data

			sc_bv<8> *dutyCycle_pc_buffer = new sc_bv<8>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'dutyCycle', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'dutyCycle', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					dutyCycle_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_dutyCycle, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_dutyCycle))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: dutyCycle
				{
					// bitslice(7, 0)
					// {
						// celement: dutyCycle(7, 0)
						// {
							sc_lv<8>* dutyCycle_lv0_0_0_1 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: dutyCycle(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(dutyCycle[0]) != NULL) // check the null address if the c port is array or others
								{
									dutyCycle_lv0_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(dutyCycle_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: dutyCycle(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : dutyCycle[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : dutyCycle[0]
								// output_left_conversion : dutyCycle[i_0]
								// output_type_conversion : (dutyCycle_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(dutyCycle[0]) != NULL) // check the null address if the c port is array or others
								{
									dutyCycle[i_0] = (dutyCycle_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] dutyCycle_pc_buffer;
		}

		// output port post check: "speed"
		aesl_fh.read(AUTOTB_TVOUT_PC_speed, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_speed, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_speed, AESL_token); // data

			sc_bv<8> *speed_pc_buffer = new sc_bv<8>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'speed', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'speed', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					speed_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_speed, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_speed))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: speed
				{
					// bitslice(7, 0)
					// {
						// celement: speed(7, 0)
						// {
							sc_lv<8>* speed_lv0_0_0_1 = new sc_lv<8>[1];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: speed(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(speed[0]) != NULL) // check the null address if the c port is array or others
								{
									speed_lv0_0_0_1[hls_map_index].range(7, 0) = sc_bv<8>(speed_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: speed(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : speed[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : speed[0]
								// output_left_conversion : speed[i_0]
								// output_type_conversion : (speed_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(speed[0]) != NULL) // check the null address if the c port is array or others
								{
									speed[i_0] = (speed_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] speed_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "up"
		char* tvin_up = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_up);

		// "down"
		char* tvin_down = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_down);

		// "dutyCycle"
		char* tvout_dutyCycle = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_dutyCycle);

		// "speed"
		char* tvout_speed = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_speed);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_up, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_up, tvin_up);

		sc_bv<8>* up_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: up
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: up(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : up[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : up[0]
						// regulate_c_name       : up
						// input_type_conversion : up[i_0]
						if (&(up[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> up_tmp_mem;
							up_tmp_mem = up[i_0];
							up_tvin_wrapc_buffer[hls_map_index].range(7, 0) = up_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_up, "%s\n", (up_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_up, tvin_up);
		}

		tcl_file.set_num(1, &tcl_file.up_depth);
		sprintf(tvin_up, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_up, tvin_up);

		// release memory allocation
		delete [] up_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_down, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_down, tvin_down);

		sc_bv<8>* down_tvin_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: down
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: down(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : down[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : down[0]
						// regulate_c_name       : down
						// input_type_conversion : down[i_0]
						if (&(down[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> down_tmp_mem;
							down_tmp_mem = down[i_0];
							down_tvin_wrapc_buffer[hls_map_index].range(7, 0) = down_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_down, "%s\n", (down_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_down, tvin_down);
		}

		tcl_file.set_num(1, &tcl_file.down_depth);
		sprintf(tvin_down, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_down, tvin_down);

		// release memory allocation
		delete [] down_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		servo(up, down, left, right, dutyCycle, speed);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_dutyCycle, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_dutyCycle, tvout_dutyCycle);

		sc_bv<8>* dutyCycle_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: dutyCycle
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: dutyCycle(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : dutyCycle[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : dutyCycle[0]
						// regulate_c_name       : dutyCycle
						// input_type_conversion : dutyCycle[i_0]
						if (&(dutyCycle[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> dutyCycle_tmp_mem;
							dutyCycle_tmp_mem = dutyCycle[i_0];
							dutyCycle_tvout_wrapc_buffer[hls_map_index].range(7, 0) = dutyCycle_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_dutyCycle, "%s\n", (dutyCycle_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_dutyCycle, tvout_dutyCycle);
		}

		tcl_file.set_num(1, &tcl_file.dutyCycle_depth);
		sprintf(tvout_dutyCycle, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_dutyCycle, tvout_dutyCycle);

		// release memory allocation
		delete [] dutyCycle_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_speed, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_speed, tvout_speed);

		sc_bv<8>* speed_tvout_wrapc_buffer = new sc_bv<8>[1];

		// RTL Name: speed
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: speed(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : speed[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : speed[0]
						// regulate_c_name       : speed
						// input_type_conversion : speed[i_0]
						if (&(speed[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> speed_tmp_mem;
							speed_tmp_mem = speed[i_0];
							speed_tvout_wrapc_buffer[hls_map_index].range(7, 0) = speed_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_speed, "%s\n", (speed_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_speed, tvout_speed);
		}

		tcl_file.set_num(1, &tcl_file.speed_depth);
		sprintf(tvout_speed, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_speed, tvout_speed);

		// release memory allocation
		delete [] speed_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "up"
		delete [] tvin_up;
		// release memory allocation: "down"
		delete [] tvin_down;
		// release memory allocation: "dutyCycle"
		delete [] tvout_dutyCycle;
		// release memory allocation: "speed"
		delete [] tvout_speed;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

