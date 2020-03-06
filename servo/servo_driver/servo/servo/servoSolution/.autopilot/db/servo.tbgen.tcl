set moduleName servo
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {servo}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_up int 8 regular {pointer 0}  }
	{ p_down int 8 regular {pointer 0}  }
	{ p_left int 8 regular {pointer 0}  }
	{ p_right int 8 regular {pointer 0}  }
	{ p_dutyCycle int 8 regular {pointer 1}  }
	{ p_speed int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_up", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_up","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_down", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_down","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_left", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_left","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_right", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_right","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dutyCycle", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_dutyCycle","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_speed", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_speed","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_up sc_in sc_lv 8 signal 0 } 
	{ p_down sc_in sc_lv 8 signal 1 } 
	{ p_left sc_in sc_lv 8 signal 2 } 
	{ p_right sc_in sc_lv 8 signal 3 } 
	{ p_dutyCycle sc_out sc_lv 8 signal 4 } 
	{ p_dutyCycle_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ p_speed sc_out sc_lv 8 signal 5 } 
	{ p_speed_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_up", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_up", "role": "default" }} , 
 	{ "name": "p_down", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_down", "role": "default" }} , 
 	{ "name": "p_left", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_left", "role": "default" }} , 
 	{ "name": "p_right", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_right", "role": "default" }} , 
 	{ "name": "p_dutyCycle", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dutyCycle", "role": "default" }} , 
 	{ "name": "p_dutyCycle_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_dutyCycle", "role": "ap_vld" }} , 
 	{ "name": "p_speed", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_speed", "role": "default" }} , 
 	{ "name": "p_speed_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_speed", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "servo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_up", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_down", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_left", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_right", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dutyCycle", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_speed", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "current_speed", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "current_duty_cycle", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	servo {
		p_up {Type I LastRead 0 FirstWrite -1}
		p_down {Type I LastRead 0 FirstWrite -1}
		p_left {Type I LastRead 0 FirstWrite -1}
		p_right {Type I LastRead 1 FirstWrite -1}
		p_dutyCycle {Type O LastRead -1 FirstWrite 1}
		p_speed {Type O LastRead -1 FirstWrite 1}
		current_speed {Type IO LastRead -1 FirstWrite -1}
		current_duty_cycle {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_up { ap_none {  { p_up in_data 0 8 } } }
	p_down { ap_none {  { p_down in_data 0 8 } } }
	p_left { ap_none {  { p_left in_data 0 8 } } }
	p_right { ap_none {  { p_right in_data 0 8 } } }
	p_dutyCycle { ap_vld {  { p_dutyCycle out_data 1 8 }  { p_dutyCycle_ap_vld out_vld 1 1 } } }
	p_speed { ap_vld {  { p_speed out_data 1 8 }  { p_speed_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
