package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner3 {

    @Test //without classpath
    public Karate runTest(){
        return Karate.run("ValidationfromFile").relativeTo(getClass());
    }
}
