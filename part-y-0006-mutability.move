module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let _expected_sales: u32 = 6_320_000; // immutable

        let mut year: u16 = 2025;

        year = 2026;

        debug::print(&year);
    }

    #[test]
    fun test_greet() {

        greet(); // [debug] 2026
    }
}

// sui move test

