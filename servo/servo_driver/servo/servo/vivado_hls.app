<project xmlns="com.autoesl.autopilot.project" name="servo" top="servo">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../servo_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="servo/servo.h" sc="0" tb="false" cflags="-DHW_COSIM" csimflags="" blackbox="false"/>
        <file name="servo/servo.c" sc="0" tb="false" cflags="-DHW_COSIM" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="servoSolution" status="active"/>
    </solutions>
</project>

