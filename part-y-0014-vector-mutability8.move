module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040, 2010, 2000, 2002];

        let _last_year = years.pop_back();

        years.push_back(1993);

        debug::print(&years);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] [ 2010, 2022, 2026, 2040, 2010, 2000, 1993 ]

// sui move test

