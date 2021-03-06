// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _servo_v3_HH_
#define _servo_v3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct servo_v3 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > in_left;
    sc_in< sc_lv<8> > in_right;
    sc_in< sc_lv<8> > in_up;
    sc_in< sc_lv<8> > in_down;
    sc_out< sc_lv<8> > out_speed;
    sc_out< sc_logic > out_speed_ap_vld;
    sc_in< sc_lv<8> > out_control;


    // Module declarations
    servo_v3(sc_module_name name);
    SC_HAS_PROCESS(servo_v3);

    ~servo_v3();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > speed;
    sc_signal< sc_lv<8> > select_ln27_fu_119_p3;
    sc_signal< sc_lv<8> > ap_phi_mux_speed_loc_1_phi_fu_54_p6;
    sc_signal< sc_lv<1> > icmp_ln25_fu_63_p2;
    sc_signal< sc_lv<8> > select_ln41_fu_92_p3;
    sc_signal< sc_lv<1> > icmp_ln39_fu_74_p2;
    sc_signal< sc_lv<1> > icmp_ln41_fu_80_p2;
    sc_signal< sc_lv<8> > add_ln47_fu_86_p2;
    sc_signal< sc_lv<1> > icmp_ln27_fu_107_p2;
    sc_signal< sc_lv<8> > add_ln33_fu_113_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_8;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln33_fu_113_p2();
    void thread_add_ln47_fu_86_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_speed_loc_1_phi_fu_54_p6();
    void thread_ap_ready();
    void thread_icmp_ln25_fu_63_p2();
    void thread_icmp_ln27_fu_107_p2();
    void thread_icmp_ln39_fu_74_p2();
    void thread_icmp_ln41_fu_80_p2();
    void thread_out_speed();
    void thread_out_speed_ap_vld();
    void thread_select_ln27_fu_119_p3();
    void thread_select_ln41_fu_92_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
