package com.echo.helloworld;

import static org.junit.Assert.*;
import org.junit.internal.AssumptionViolatedException;

class Base {
    protected void run() {
        double r = Math.random();
        if (r < 0.1) {
            fail("failed");
        } else if (r < 0.2) {
            throw new AssumptionViolatedException("skipping");
        }
    }
}