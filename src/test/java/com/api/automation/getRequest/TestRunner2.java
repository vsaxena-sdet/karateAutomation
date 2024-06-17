package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner2 {

    @Test //without classpath
    public Karate runTest(){
        return Karate.run("variables").relativeTo(getClass());
    }
}
