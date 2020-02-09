// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "servo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic servo::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic servo::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> servo::ap_ST_fsm_state1 = "1";
const sc_lv<3> servo::ap_ST_fsm_state2 = "10";
const sc_lv<3> servo::ap_ST_fsm_state3 = "100";
const sc_lv<32> servo::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<8> servo::ap_const_lv8_0 = "00000000";
const sc_lv<32> servo::ap_const_lv32_1 = "1";
const sc_lv<1> servo::ap_const_lv1_1 = "1";
const sc_lv<32> servo::ap_const_lv32_2 = "10";
const sc_lv<1> servo::ap_const_lv1_0 = "0";
const sc_lv<8> servo::ap_const_lv8_FF = "11111111";
const sc_lv<32> servo::ap_const_lv32_3 = "11";
const sc_lv<32> servo::ap_const_lv32_7 = "111";
const sc_lv<5> servo::ap_const_lv5_1 = "1";
const sc_lv<8> servo::ap_const_lv8_1 = "1";
const sc_lv<8> servo::ap_const_lv8_64 = "1100100";
const sc_lv<7> servo::ap_const_lv7_64 = "1100100";
const sc_lv<7> servo::ap_const_lv7_0 = "0000000";
const sc_lv<7> servo::ap_const_lv7_8 = "1000";
const bool servo::ap_const_boolean_1 = true;

servo::servo(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln13_fu_152_p2);
    sensitive << ( select_ln8_fu_116_p3 );

    SC_METHOD(thread_add_ln21_fu_222_p2);
    sensitive << ( select_ln12_reg_306 );
    sensitive << ( select_ln16_reg_333 );

    SC_METHOD(thread_add_ln9_fu_110_p2);
    sensitive << ( current_speed );

    SC_METHOD(thread_and_ln12_fu_146_p2);
    sensitive << ( icmp_ln12_fu_124_p2 );
    sensitive << ( icmp_ln12_1_fu_140_p2 );

    SC_METHOD(thread_and_ln8_fu_104_p2);
    sensitive << ( icmp_ln8_fu_88_p2 );
    sensitive << ( icmp_ln8_1_fu_98_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_dutyCycle);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( select_ln25_fu_242_p3 );

    SC_METHOD(thread_dutyCycle_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_icmp_ln12_1_fu_140_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_fu_130_p4 );

    SC_METHOD(thread_icmp_ln12_fu_124_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( up );

    SC_METHOD(thread_icmp_ln16_fu_176_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( left_r );

    SC_METHOD(thread_icmp_ln20_1_fu_200_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( or_ln20_fu_194_p2 );

    SC_METHOD(thread_icmp_ln20_fu_188_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( right_r );

    SC_METHOD(thread_icmp_ln25_fu_236_p2);
    sensitive << ( select_ln20_fu_226_p3 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_icmp_ln26_fu_264_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_1_fu_255_p4 );

    SC_METHOD(thread_icmp_ln8_1_fu_98_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( current_speed );

    SC_METHOD(thread_icmp_ln8_fu_88_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( down );

    SC_METHOD(thread_or_ln12_fu_158_p2);
    sensitive << ( and_ln8_fu_104_p2 );
    sensitive << ( and_ln12_fu_146_p2 );

    SC_METHOD(thread_or_ln20_fu_194_p2);
    sensitive << ( left_r );
    sensitive << ( right_r );

    SC_METHOD(thread_select_ln12_fu_164_p3);
    sensitive << ( select_ln8_fu_116_p3 );
    sensitive << ( and_ln12_fu_146_p2 );
    sensitive << ( add_ln13_fu_152_p2 );

    SC_METHOD(thread_select_ln16_fu_215_p3);
    sensitive << ( current_duty_cycle );
    sensitive << ( icmp_ln16_reg_319 );
    sensitive << ( sub_ln17_fu_210_p2 );

    SC_METHOD(thread_select_ln20_fu_226_p3);
    sensitive << ( icmp_ln20_reg_324 );
    sensitive << ( select_ln16_reg_333 );
    sensitive << ( add_ln21_fu_222_p2 );

    SC_METHOD(thread_select_ln25_fu_242_p3);
    sensitive << ( icmp_ln25_fu_236_p2 );
    sensitive << ( trunc_ln25_fu_232_p1 );

    SC_METHOD(thread_select_ln26_1_fu_290_p3);
    sensitive << ( icmp_ln26_fu_264_p2 );
    sensitive << ( select_ln26_fu_283_p3 );

    SC_METHOD(thread_select_ln26_fu_283_p3);
    sensitive << ( trunc_ln16_reg_314 );
    sensitive << ( tmp_2_fu_276_p3 );

    SC_METHOD(thread_select_ln8_fu_116_p3);
    sensitive << ( current_speed );
    sensitive << ( and_ln8_fu_104_p2 );
    sensitive << ( add_ln9_fu_110_p2 );

    SC_METHOD(thread_speed);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( select_ln26_1_fu_290_p3 );

    SC_METHOD(thread_speed_ap_vld);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_sub_ln17_fu_210_p2);
    sensitive << ( current_duty_cycle );
    sensitive << ( select_ln12_reg_306 );

    SC_METHOD(thread_tmp_1_fu_255_p4);
    sensitive << ( select_ln12_reg_306 );

    SC_METHOD(thread_tmp_2_fu_276_p3);
    sensitive << ( select_ln12_reg_306 );

    SC_METHOD(thread_tmp_fu_130_p4);
    sensitive << ( select_ln8_fu_116_p3 );

    SC_METHOD(thread_trunc_ln16_fu_172_p1);
    sensitive << ( select_ln12_fu_164_p3 );

    SC_METHOD(thread_trunc_ln25_fu_232_p1);
    sensitive << ( select_ln20_fu_226_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    current_speed = "00000000";
    current_duty_cycle = "10010110";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "servo_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, up, "(port)up");
    sc_trace(mVcdFile, down, "(port)down");
    sc_trace(mVcdFile, left_r, "(port)left_r");
    sc_trace(mVcdFile, right_r, "(port)right_r");
    sc_trace(mVcdFile, dutyCycle, "(port)dutyCycle");
    sc_trace(mVcdFile, dutyCycle_ap_vld, "(port)dutyCycle_ap_vld");
    sc_trace(mVcdFile, speed, "(port)speed");
    sc_trace(mVcdFile, speed_ap_vld, "(port)speed_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, current_speed, "current_speed");
    sc_trace(mVcdFile, current_duty_cycle, "current_duty_cycle");
    sc_trace(mVcdFile, select_ln12_fu_164_p3, "select_ln12_fu_164_p3");
    sc_trace(mVcdFile, select_ln12_reg_306, "select_ln12_reg_306");
    sc_trace(mVcdFile, trunc_ln16_fu_172_p1, "trunc_ln16_fu_172_p1");
    sc_trace(mVcdFile, trunc_ln16_reg_314, "trunc_ln16_reg_314");
    sc_trace(mVcdFile, icmp_ln16_fu_176_p2, "icmp_ln16_fu_176_p2");
    sc_trace(mVcdFile, icmp_ln16_reg_319, "icmp_ln16_reg_319");
    sc_trace(mVcdFile, icmp_ln20_fu_188_p2, "icmp_ln20_fu_188_p2");
    sc_trace(mVcdFile, icmp_ln20_reg_324, "icmp_ln20_reg_324");
    sc_trace(mVcdFile, icmp_ln20_1_fu_200_p2, "icmp_ln20_1_fu_200_p2");
    sc_trace(mVcdFile, icmp_ln20_1_reg_329, "icmp_ln20_1_reg_329");
    sc_trace(mVcdFile, select_ln16_fu_215_p3, "select_ln16_fu_215_p3");
    sc_trace(mVcdFile, select_ln16_reg_333, "select_ln16_reg_333");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, or_ln12_fu_158_p2, "or_ln12_fu_158_p2");
    sc_trace(mVcdFile, select_ln20_fu_226_p3, "select_ln20_fu_226_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln8_fu_88_p2, "icmp_ln8_fu_88_p2");
    sc_trace(mVcdFile, icmp_ln8_1_fu_98_p2, "icmp_ln8_1_fu_98_p2");
    sc_trace(mVcdFile, and_ln8_fu_104_p2, "and_ln8_fu_104_p2");
    sc_trace(mVcdFile, add_ln9_fu_110_p2, "add_ln9_fu_110_p2");
    sc_trace(mVcdFile, select_ln8_fu_116_p3, "select_ln8_fu_116_p3");
    sc_trace(mVcdFile, tmp_fu_130_p4, "tmp_fu_130_p4");
    sc_trace(mVcdFile, icmp_ln12_fu_124_p2, "icmp_ln12_fu_124_p2");
    sc_trace(mVcdFile, icmp_ln12_1_fu_140_p2, "icmp_ln12_1_fu_140_p2");
    sc_trace(mVcdFile, and_ln12_fu_146_p2, "and_ln12_fu_146_p2");
    sc_trace(mVcdFile, add_ln13_fu_152_p2, "add_ln13_fu_152_p2");
    sc_trace(mVcdFile, or_ln20_fu_194_p2, "or_ln20_fu_194_p2");
    sc_trace(mVcdFile, sub_ln17_fu_210_p2, "sub_ln17_fu_210_p2");
    sc_trace(mVcdFile, add_ln21_fu_222_p2, "add_ln21_fu_222_p2");
    sc_trace(mVcdFile, icmp_ln25_fu_236_p2, "icmp_ln25_fu_236_p2");
    sc_trace(mVcdFile, trunc_ln25_fu_232_p1, "trunc_ln25_fu_232_p1");
    sc_trace(mVcdFile, select_ln25_fu_242_p3, "select_ln25_fu_242_p3");
    sc_trace(mVcdFile, tmp_1_fu_255_p4, "tmp_1_fu_255_p4");
    sc_trace(mVcdFile, tmp_2_fu_276_p3, "tmp_2_fu_276_p3");
    sc_trace(mVcdFile, icmp_ln26_fu_264_p2, "icmp_ln26_fu_264_p2");
    sc_trace(mVcdFile, select_ln26_fu_283_p3, "select_ln26_fu_283_p3");
    sc_trace(mVcdFile, select_ln26_1_fu_290_p3, "select_ln26_1_fu_290_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("servo.hdltvin.dat");
    mHdltvoutHandle.open("servo.hdltvout.dat");
}

servo::~servo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void servo::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln20_1_reg_329.read(), ap_const_lv1_0))) {
        current_duty_cycle = select_ln20_fu_226_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(or_ln12_fu_158_p2.read(), ap_const_lv1_1))) {
        current_speed = select_ln12_fu_164_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        icmp_ln16_reg_319 = icmp_ln16_fu_176_p2.read();
        icmp_ln20_1_reg_329 = icmp_ln20_1_fu_200_p2.read();
        icmp_ln20_reg_324 = icmp_ln20_fu_188_p2.read();
        select_ln12_reg_306 = select_ln12_fu_164_p3.read();
        trunc_ln16_reg_314 = trunc_ln16_fu_172_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        select_ln16_reg_333 = select_ln16_fu_215_p3.read();
    }
}

void servo::thread_add_ln13_fu_152_p2() {
    add_ln13_fu_152_p2 = (!ap_const_lv8_1.is_01() || !select_ln8_fu_116_p3.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_1) + sc_biguint<8>(select_ln8_fu_116_p3.read()));
}

void servo::thread_add_ln21_fu_222_p2() {
    add_ln21_fu_222_p2 = (!select_ln16_reg_333.read().is_01() || !select_ln12_reg_306.read().is_01())? sc_lv<8>(): (sc_biguint<8>(select_ln16_reg_333.read()) + sc_biguint<8>(select_ln12_reg_306.read()));
}

void servo::thread_add_ln9_fu_110_p2() {
    add_ln9_fu_110_p2 = (!ap_const_lv8_FF.is_01() || !current_speed.read().is_01())? sc_lv<8>(): (sc_bigint<8>(ap_const_lv8_FF) + sc_biguint<8>(current_speed.read()));
}

void servo::thread_and_ln12_fu_146_p2() {
    and_ln12_fu_146_p2 = (icmp_ln12_fu_124_p2.read() & icmp_ln12_1_fu_140_p2.read());
}

void servo::thread_and_ln8_fu_104_p2() {
    and_ln8_fu_104_p2 = (icmp_ln8_fu_88_p2.read() & icmp_ln8_1_fu_98_p2.read());
}

void servo::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void servo::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void servo::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void servo::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void servo::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void servo::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void servo::thread_dutyCycle() {
    dutyCycle = esl_zext<8,7>(select_ln25_fu_242_p3.read());
}

void servo::thread_dutyCycle_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dutyCycle_ap_vld = ap_const_logic_1;
    } else {
        dutyCycle_ap_vld = ap_const_logic_0;
    }
}

void servo::thread_icmp_ln12_1_fu_140_p2() {
    icmp_ln12_1_fu_140_p2 = (!tmp_fu_130_p4.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<1>(): (sc_bigint<5>(tmp_fu_130_p4.read()) < sc_bigint<5>(ap_const_lv5_1));
}

void servo::thread_icmp_ln12_fu_124_p2() {
    icmp_ln12_fu_124_p2 = (!up.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(up.read() != ap_const_lv8_0);
}

void servo::thread_icmp_ln16_fu_176_p2() {
    icmp_ln16_fu_176_p2 = (!left_r.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(left_r.read() == ap_const_lv8_0);
}

void servo::thread_icmp_ln20_1_fu_200_p2() {
    icmp_ln20_1_fu_200_p2 = (!or_ln20_fu_194_p2.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(or_ln20_fu_194_p2.read() == ap_const_lv8_0);
}

void servo::thread_icmp_ln20_fu_188_p2() {
    icmp_ln20_fu_188_p2 = (!right_r.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(right_r.read() == ap_const_lv8_0);
}

void servo::thread_icmp_ln25_fu_236_p2() {
    icmp_ln25_fu_236_p2 = (!select_ln20_fu_226_p3.read().is_01() || !ap_const_lv8_64.is_01())? sc_lv<1>(): (sc_bigint<8>(select_ln20_fu_226_p3.read()) < sc_bigint<8>(ap_const_lv8_64));
}

void servo::thread_icmp_ln26_fu_264_p2() {
    icmp_ln26_fu_264_p2 = (!tmp_1_fu_255_p4.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<1>(): (sc_bigint<5>(tmp_1_fu_255_p4.read()) < sc_bigint<5>(ap_const_lv5_1));
}

void servo::thread_icmp_ln8_1_fu_98_p2() {
    icmp_ln8_1_fu_98_p2 = (!current_speed.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): (sc_bigint<8>(current_speed.read()) > sc_bigint<8>(ap_const_lv8_0));
}

void servo::thread_icmp_ln8_fu_88_p2() {
    icmp_ln8_fu_88_p2 = (!down.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(down.read() != ap_const_lv8_0);
}

void servo::thread_or_ln12_fu_158_p2() {
    or_ln12_fu_158_p2 = (and_ln12_fu_146_p2.read() | and_ln8_fu_104_p2.read());
}

void servo::thread_or_ln20_fu_194_p2() {
    or_ln20_fu_194_p2 = (right_r.read() | left_r.read());
}

void servo::thread_select_ln12_fu_164_p3() {
    select_ln12_fu_164_p3 = (!and_ln12_fu_146_p2.read()[0].is_01())? sc_lv<8>(): ((and_ln12_fu_146_p2.read()[0].to_bool())? add_ln13_fu_152_p2.read(): select_ln8_fu_116_p3.read());
}

void servo::thread_select_ln16_fu_215_p3() {
    select_ln16_fu_215_p3 = (!icmp_ln16_reg_319.read()[0].is_01())? sc_lv<8>(): ((icmp_ln16_reg_319.read()[0].to_bool())? current_duty_cycle.read(): sub_ln17_fu_210_p2.read());
}

void servo::thread_select_ln20_fu_226_p3() {
    select_ln20_fu_226_p3 = (!icmp_ln20_reg_324.read()[0].is_01())? sc_lv<8>(): ((icmp_ln20_reg_324.read()[0].to_bool())? select_ln16_reg_333.read(): add_ln21_fu_222_p2.read());
}

void servo::thread_select_ln25_fu_242_p3() {
    select_ln25_fu_242_p3 = (!icmp_ln25_fu_236_p2.read()[0].is_01())? sc_lv<7>(): ((icmp_ln25_fu_236_p2.read()[0].to_bool())? ap_const_lv7_64: trunc_ln25_fu_232_p1.read());
}

void servo::thread_select_ln26_1_fu_290_p3() {
    select_ln26_1_fu_290_p3 = (!icmp_ln26_fu_264_p2.read()[0].is_01())? sc_lv<7>(): ((icmp_ln26_fu_264_p2.read()[0].to_bool())? select_ln26_fu_283_p3.read(): ap_const_lv7_8);
}

void servo::thread_select_ln26_fu_283_p3() {
    select_ln26_fu_283_p3 = (!tmp_2_fu_276_p3.read()[0].is_01())? sc_lv<7>(): ((tmp_2_fu_276_p3.read()[0].to_bool())? ap_const_lv7_0: trunc_ln16_reg_314.read());
}

void servo::thread_select_ln8_fu_116_p3() {
    select_ln8_fu_116_p3 = (!and_ln8_fu_104_p2.read()[0].is_01())? sc_lv<8>(): ((and_ln8_fu_104_p2.read()[0].to_bool())? add_ln9_fu_110_p2.read(): current_speed.read());
}

void servo::thread_speed() {
    speed = esl_zext<8,7>(select_ln26_1_fu_290_p3.read());
}

void servo::thread_speed_ap_vld() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        speed_ap_vld = ap_const_logic_1;
    } else {
        speed_ap_vld = ap_const_logic_0;
    }
}

void servo::thread_sub_ln17_fu_210_p2() {
    sub_ln17_fu_210_p2 = (!current_duty_cycle.read().is_01() || !select_ln12_reg_306.read().is_01())? sc_lv<8>(): (sc_biguint<8>(current_duty_cycle.read()) - sc_biguint<8>(select_ln12_reg_306.read()));
}

void servo::thread_tmp_1_fu_255_p4() {
    tmp_1_fu_255_p4 = select_ln12_reg_306.read().range(7, 3);
}

void servo::thread_tmp_2_fu_276_p3() {
    tmp_2_fu_276_p3 = select_ln12_reg_306.read().range(7, 7);
}

void servo::thread_tmp_fu_130_p4() {
    tmp_fu_130_p4 = select_ln8_fu_116_p3.read().range(7, 3);
}

void servo::thread_trunc_ln16_fu_172_p1() {
    trunc_ln16_fu_172_p1 = select_ln12_fu_164_p3.read().range(7-1, 0);
}

void servo::thread_trunc_ln25_fu_232_p1() {
    trunc_ln25_fu_232_p1 = select_ln20_fu_226_p3.read().range(7-1, 0);
}

void servo::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void servo::thread_hdltv_gen() {
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
        mHdltvinHandle << " , " <<  " \"up\" :  \"" << up.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"down\" :  \"" << down.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"left_r\" :  \"" << left_r.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"right_r\" :  \"" << right_r.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dutyCycle\" :  \"" << dutyCycle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dutyCycle_ap_vld\" :  \"" << dutyCycle_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"speed\" :  \"" << speed.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"speed_ap_vld\" :  \"" << speed_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

