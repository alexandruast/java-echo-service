package com.echo.helloworld;

import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.internal.AssumptionViolatedException;

public class EchoServiceClass1Test {

    @Test
    public void test() {
        double r = Math.random();
        if (r < 0.2) {
            throw new AssumptionViolatedException("skipping");
        }
    }
}
