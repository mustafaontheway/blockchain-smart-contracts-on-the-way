module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040, 2010, 2000];

        let len = vector::length(&years);

        if (len > 5) {

            vector::remove(&mut years, 3);
        };

        debug::print(&years);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026, 2010, 2000 ]

// sui move test

