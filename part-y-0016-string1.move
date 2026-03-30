module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let areas = string::utf8(b"Fintech & Web3");

        let name: String = "Mustafa";

        debug::print(&areas);

        debug::print(&name);
    }

    
    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] "Fintech & Web3"
// [debug] "Mustafa"

// sui move test

