module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040, 2010, 2000];

        let is_there = vector::contains(&years, &2002);

        if (!is_there) {

            vector::push_back(&mut years, 2002);
        };

        debug::print(&years);

    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026, 2040, 2010, 2000, 2002 ]

// sui move test

