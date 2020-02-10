<project xmlns="com.autoesl.autopilot.project" name="servo" top="servo">
    <files>
        <file name="../servo_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
        <file name="servo/servo.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="servo/servo.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="servoSolution" status="active"/>
    </solutions>
</project>

