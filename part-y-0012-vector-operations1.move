module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;
    use std::vector;

    fun greet() {

        let ages: vector<u8> = vector[11, 12, 23];

        debug::print(&ages[1]);

        let _years = vector[2010u16, 2022, 2026, 2040];
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 12

// sui move test

