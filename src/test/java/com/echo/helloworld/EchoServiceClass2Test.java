package com.echo.helloworld;

import org.junit.Test;
import static org.junit.Assert.*;

public class EchoServiceApplicationTest {
    
    @Test
    public void test2() {
        EchoServiceDemoMethod test = new EchoServiceDemoMethod();
        int out = test.getInt(9);
        assertTrue(out == 10);
    }
}
