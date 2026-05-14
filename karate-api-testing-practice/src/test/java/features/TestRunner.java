package features;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate runAllTests() {
        return Karate.run("users", "posts", "create-user").relativeTo(getClass());
    }
}