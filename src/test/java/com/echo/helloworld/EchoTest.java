package com.echo.helloworld;

import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.internal.AssumptionViolatedException;

public class EchoServiceApplicationTest {

    @Test
    public void test() {
        double r = Math.random();
        if (r < 0.1) {
            fail("fail");
        } else if (r < 0.2) {
            throw new AssumptionViolatedException("skipping");
        }
    }
}
