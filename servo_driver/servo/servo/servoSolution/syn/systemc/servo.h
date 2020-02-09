// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _servo_HH_
#define _servo_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct servo : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > up;
    sc_in< sc_lv<8> > down;
    sc_in< sc_lv<8> > left_r;
    sc_in< sc_lv<8> > right_r;
    sc_out< sc_lv<8> > dutyCycle;
    sc_out< sc_logic > dutyCycle_ap_vld;
    sc_out< sc_lv<8> > speed;
    sc_out< sc_logic > speed_ap_vld;


    // Module declarations
    servo(sc_module_name name);
    SC_HAS_PROCESS(servo);

    ~servo();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > current_speed;
    sc_signal< sc_lv<8> > current_duty_cycle;
    sc_signal< sc_lv<8> > select_ln12_fu_164_p3;
    sc_signal< sc_lv<8> > select_ln12_reg_306;
    sc_signal< sc_lv<7> > trunc_ln16_fu_172_p1;
    sc_signal< sc_lv<7> > trunc_ln16_reg_314;
    sc_signal< sc_lv<1> > icmp_ln16_fu_176_p2;
    sc_signal< sc_lv<1> > icmp_ln16_reg_319;
    sc_signal< sc_lv<1> > icmp_ln20_fu_188_p2;
    sc_signal< sc_lv<1> > icmp_ln20_reg_324;
    sc_signal< sc_lv<1> > icmp_ln20_1_fu_200_p2;
    sc_signal< sc_lv<1> > icmp_ln20_1_reg_329;
    sc_signal< sc_lv<8> > select_ln16_fu_215_p3;
    sc_signal< sc_lv<8> > select_ln16_reg_333;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > or_ln12_fu_158_p2;
    sc_signal< sc_lv<8> > select_ln20_fu_226_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln8_fu_88_p2;
    sc_signal< sc_lv<1> > icmp_ln8_1_fu_98_p2;
    sc_signal< sc_lv<1> > and_ln8_fu_104_p2;
    sc_signal< sc_lv<8> > add_ln9_fu_110_p2;
    sc_signal< sc_lv<8> > select_ln8_fu_116_p3;
    sc_signal< sc_lv<5> > tmp_fu_130_p4;
    sc_signal< sc_lv<1> > icmp_ln12_fu_124_p2;
    sc_signal< sc_lv<1> > icmp_ln12_1_fu_140_p2;
    sc_signal< sc_lv<1> > and_ln12_fu_146_p2;
    sc_signal< sc_lv<8> > add_ln13_fu_152_p2;
    sc_signal< sc_lv<8> > or_ln20_fu_194_p2;
    sc_signal< sc_lv<8> > sub_ln17_fu_210_p2;
    sc_signal< sc_lv<8> > add_ln21_fu_222_p2;
    sc_signal< sc_lv<1> > icmp_ln25_fu_236_p2;
    sc_signal< sc_lv<7> > trunc_ln25_fu_232_p1;
    sc_signal< sc_lv<7> > select_ln25_fu_242_p3;
    sc_signal< sc_lv<5> > tmp_1_fu_255_p4;
    sc_signal< sc_lv<1> > tmp_2_fu_276_p3;
    sc_signal< sc_lv<1> > icmp_ln26_fu_264_p2;
    sc_signal< sc_lv<7> > select_ln26_fu_283_p3;
    sc_signal< sc_lv<7> > select_ln26_1_fu_290_p3;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_64;
    static const sc_lv<7> ap_const_lv7_64;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<7> ap_const_lv7_8;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln13_fu_152_p2();
    void thread_add_ln21_fu_222_p2();
    void thread_add_ln9_fu_110_p2();
    void thread_and_ln12_fu_146_p2();
    void thread_and_ln8_fu_104_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_dutyCycle();
    void thread_dutyCycle_ap_vld();
    void thread_icmp_ln12_1_fu_140_p2();
    void thread_icmp_ln12_fu_124_p2();
    void thread_icmp_ln16_fu_176_p2();
    void thread_icmp_ln20_1_fu_200_p2();
    void thread_icmp_ln20_fu_188_p2();
    void thread_icmp_ln25_fu_236_p2();
    void thread_icmp_ln26_fu_264_p2();
    void thread_icmp_ln8_1_fu_98_p2();
    void thread_icmp_ln8_fu_88_p2();
    void thread_or_ln12_fu_158_p2();
    void thread_or_ln20_fu_194_p2();
    void thread_select_ln12_fu_164_p3();
    void thread_select_ln16_fu_215_p3();
    void thread_select_ln20_fu_226_p3();
    void thread_select_ln25_fu_242_p3();
    void thread_select_ln26_1_fu_290_p3();
    void thread_select_ln26_fu_283_p3();
    void thread_select_ln8_fu_116_p3();
    void thread_speed();
    void thread_speed_ap_vld();
    void thread_sub_ln17_fu_210_p2();
    void thread_tmp_1_fu_255_p4();
    void thread_tmp_2_fu_276_p3();
    void thread_tmp_fu_130_p4();
    void thread_trunc_ln16_fu_172_p1();
    void thread_trunc_ln25_fu_232_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
