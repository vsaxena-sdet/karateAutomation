package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {

    @Test //without classpath
    public Karate runTest(){
        return Karate.run("postRequest").relativeTo(getClass());
    }
}
