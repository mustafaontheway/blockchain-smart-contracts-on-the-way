module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040];

        vector::push_back(&mut years, 2004);

        debug::print(&years);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026, 2040, 2004 ]

// sui move test

