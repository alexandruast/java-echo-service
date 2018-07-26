package com.echo.helloworld;

import org.junit.Test;
import static org.junit.Assert.*;

public class EchoServiceClass2Test {
    
    @Test
    public void test2() {
        EchoServiceClass2 test = new EchoServiceClass2();
        int out = test.getInt(9);
        assertTrue(out == 10);
    }
}
