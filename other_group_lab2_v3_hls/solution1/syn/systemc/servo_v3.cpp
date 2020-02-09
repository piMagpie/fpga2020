// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "servo_v3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic servo_v3::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic servo_v3::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> servo_v3::ap_ST_fsm_state1 = "1";
const sc_lv<32> servo_v3::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<8> servo_v3::ap_const_lv8_0 = "00000000";
const sc_lv<1> servo_v3::ap_const_lv1_1 = "1";
const sc_lv<1> servo_v3::ap_const_lv1_0 = "0";
const sc_lv<8> servo_v3::ap_const_lv8_1 = "1";
const sc_lv<8> servo_v3::ap_const_lv8_FF = "11111111";
const sc_lv<8> servo_v3::ap_const_lv8_8 = "1000";
const bool servo_v3::ap_const_boolean_1 = true;

servo_v3::servo_v3(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln33_fu_113_p2);
    sensitive << ( speed );

    SC_METHOD(thread_add_ln47_fu_86_p2);
    sensitive << ( speed );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_speed_loc_1_phi_fu_54_p6);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( speed );
    sensitive << ( select_ln27_fu_119_p3 );
    sensitive << ( icmp_ln25_fu_63_p2 );
    sensitive << ( select_ln41_fu_92_p3 );
    sensitive << ( icmp_ln39_fu_74_p2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_icmp_ln25_fu_63_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_up );

    SC_METHOD(thread_icmp_ln27_fu_107_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( speed );
    sensitive << ( icmp_ln25_fu_63_p2 );

    SC_METHOD(thread_icmp_ln39_fu_74_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_down );
    sensitive << ( icmp_ln25_fu_63_p2 );

    SC_METHOD(thread_icmp_ln41_fu_80_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( speed );
    sensitive << ( icmp_ln25_fu_63_p2 );
    sensitive << ( icmp_ln39_fu_74_p2 );

    SC_METHOD(thread_out_speed);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_phi_mux_speed_loc_1_phi_fu_54_p6 );

    SC_METHOD(thread_out_speed_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_select_ln27_fu_119_p3);
    sensitive << ( icmp_ln27_fu_107_p2 );
    sensitive << ( add_ln33_fu_113_p2 );

    SC_METHOD(thread_select_ln41_fu_92_p3);
    sensitive << ( icmp_ln41_fu_80_p2 );
    sensitive << ( add_ln47_fu_86_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "1";
    speed = "00000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "servo_v3_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_left, "(port)in_left");
    sc_trace(mVcdFile, in_right, "(port)in_right");
    sc_trace(mVcdFile, in_up, "(port)in_up");
    sc_trace(mVcdFile, in_down, "(port)in_down");
    sc_trace(mVcdFile, out_speed, "(port)out_speed");
    sc_trace(mVcdFile, out_speed_ap_vld, "(port)out_speed_ap_vld");
    sc_trace(mVcdFile, out_control, "(port)out_control");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, speed, "speed");
    sc_trace(mVcdFile, select_ln27_fu_119_p3, "select_ln27_fu_119_p3");
    sc_trace(mVcdFile, ap_phi_mux_speed_loc_1_phi_fu_54_p6, "ap_phi_mux_speed_loc_1_phi_fu_54_p6");
    sc_trace(mVcdFile, icmp_ln25_fu_63_p2, "icmp_ln25_fu_63_p2");
    sc_trace(mVcdFile, select_ln41_fu_92_p3, "select_ln41_fu_92_p3");
    sc_trace(mVcdFile, icmp_ln39_fu_74_p2, "icmp_ln39_fu_74_p2");
    sc_trace(mVcdFile, icmp_ln41_fu_80_p2, "icmp_ln41_fu_80_p2");
    sc_trace(mVcdFile, add_ln47_fu_86_p2, "add_ln47_fu_86_p2");
    sc_trace(mVcdFile, icmp_ln27_fu_107_p2, "icmp_ln27_fu_107_p2");
    sc_trace(mVcdFile, add_ln33_fu_113_p2, "add_ln33_fu_113_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("servo_v3.hdltvin.dat");
    mHdltvoutHandle.open("servo_v3.hdltvout.dat");
}

servo_v3::~servo_v3() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void servo_v3::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        if (esl_seteq<1,1,1>(icmp_ln25_fu_63_p2.read(), ap_const_lv1_1)) {
            speed = select_ln27_fu_119_p3.read();
        } else if ((esl_seteq<1,1,1>(icmp_ln25_fu_63_p2.read(), ap_const_lv1_0) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln39_fu_74_p2.read()))) {
            speed = select_ln41_fu_92_p3.read();
        }
    }
}

void servo_v3::thread_add_ln33_fu_113_p2() {
    add_ln33_fu_113_p2 = (!speed.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(speed.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void servo_v3::thread_add_ln47_fu_86_p2() {
    add_ln47_fu_86_p2 = (!speed.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<8>(): (sc_biguint<8>(speed.read()) + sc_bigint<8>(ap_const_lv8_FF));
}

void servo_v3::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void servo_v3::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void servo_v3::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void servo_v3::thread_ap_phi_mux_speed_loc_1_phi_fu_54_p6() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        if ((esl_seteq<1,1,1>(icmp_ln25_fu_63_p2.read(), ap_const_lv1_0) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln39_fu_74_p2.read()))) {
            ap_phi_mux_speed_loc_1_phi_fu_54_p6 = speed.read();
        } else if ((esl_seteq<1,1,1>(icmp_ln25_fu_63_p2.read(), ap_const_lv1_0) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln39_fu_74_p2.read()))) {
            ap_phi_mux_speed_loc_1_phi_fu_54_p6 = select_ln41_fu_92_p3.read();
        } else if (esl_seteq<1,1,1>(icmp_ln25_fu_63_p2.read(), ap_const_lv1_1)) {
            ap_phi_mux_speed_loc_1_phi_fu_54_p6 = select_ln27_fu_119_p3.read();
        } else {
            ap_phi_mux_speed_loc_1_phi_fu_54_p6 = "XXXXXXXX";
        }
    } else {
        ap_phi_mux_speed_loc_1_phi_fu_54_p6 = "XXXXXXXX";
    }
}

void servo_v3::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void servo_v3::thread_icmp_ln25_fu_63_p2() {
    icmp_ln25_fu_63_p2 = (!in_up.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<1>(): sc_lv<1>(in_up.read() == ap_const_lv8_1);
}

void servo_v3::thread_icmp_ln27_fu_107_p2() {
    icmp_ln27_fu_107_p2 = (!speed.read().is_01() || !ap_const_lv8_8.is_01())? sc_lv<1>(): sc_lv<1>(speed.read() == ap_const_lv8_8);
}

void servo_v3::thread_icmp_ln39_fu_74_p2() {
    icmp_ln39_fu_74_p2 = (!in_down.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<1>(): sc_lv<1>(in_down.read() == ap_const_lv8_1);
}

void servo_v3::thread_icmp_ln41_fu_80_p2() {
    icmp_ln41_fu_80_p2 = (!speed.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(speed.read() == ap_const_lv8_0);
}

void servo_v3::thread_out_speed() {
    out_speed = ap_phi_mux_speed_loc_1_phi_fu_54_p6.read();
}

void servo_v3::thread_out_speed_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        out_speed_ap_vld = ap_const_logic_1;
    } else {
        out_speed_ap_vld = ap_const_logic_0;
    }
}

void servo_v3::thread_select_ln27_fu_119_p3() {
    select_ln27_fu_119_p3 = (!icmp_ln27_fu_107_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln27_fu_107_p2.read()[0].to_bool())? ap_const_lv8_8: add_ln33_fu_113_p2.read());
}

void servo_v3::thread_select_ln41_fu_92_p3() {
    select_ln41_fu_92_p3 = (!icmp_ln41_fu_80_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln41_fu_80_p2.read()[0].to_bool())? ap_const_lv8_0: add_ln47_fu_86_p2.read());
}

void servo_v3::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm =  (sc_lv<1>) ("X");
            break;
    }
}

void servo_v3::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_left\" :  \"" << in_left.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_right\" :  \"" << in_right.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_up\" :  \"" << in_up.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_down\" :  \"" << in_down.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_speed\" :  \"" << out_speed.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_speed_ap_vld\" :  \"" << out_speed_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_control\" :  \"" << out_control.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

