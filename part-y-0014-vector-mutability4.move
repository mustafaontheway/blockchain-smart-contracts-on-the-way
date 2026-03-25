module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040];

        let last_year = vector::pop_back(&mut years);

        debug::print(&years);

        debug::print(&last_year);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026 ]
// [debug] 2040

// sui move test

