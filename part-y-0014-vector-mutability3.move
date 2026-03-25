module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040];

        vector::pop_back(&mut years);

        debug::print(&years);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026 ]

// sui move test

