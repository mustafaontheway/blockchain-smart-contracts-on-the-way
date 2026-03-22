module mustafa::sui_learning {

    // use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let age: u8 = 17;

        let year: u16 = 2026;

        let birth_year = year - (age as u16);

        debug::print(&birth_year);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 2009

// sui move test

