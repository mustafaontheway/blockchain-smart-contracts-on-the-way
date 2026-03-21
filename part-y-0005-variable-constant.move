module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    const CAPITAL_USD: u32 = 3_500_000;
    const FIXED_COST_USD: u32 = 1_320_000;

    fun greet() {

        let expected_sales: u32 = 6_320_000;

        let result: u32 = CAPITAL_USD + expected_sales - FIXED_COST_USD;

        debug::print(&result);

    }

    #[test]
    fun test_greet() {

        greet(); // [debug] 8500000
    }
}

// sui move test

