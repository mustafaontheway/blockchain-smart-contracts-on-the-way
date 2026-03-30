module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut name = b"Mustafa".to_string();

        name.append(b" Buyukdereli".to_string());

        debug::print(&name);

    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] "Mustafa Buyukdereli"

// sui move test

