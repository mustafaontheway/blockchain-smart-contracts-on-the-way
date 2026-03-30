module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut name = b"Mustaa".to_string();

        name.insert(5, b"f".to_string());

        debug::print(&name);

    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] "Mustafa"

// sui move test

