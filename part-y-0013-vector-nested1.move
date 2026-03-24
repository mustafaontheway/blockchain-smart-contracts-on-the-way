module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;
    //use std::vector;

    fun greet() {

        let quarterly_sales: vector<vector<u32>> = vector[vector[550_000, 640_000, 537_000], vector[650_000, 445_000, 875_000], vector[874_000, 640_000, 612_000], vector[350_000, 340_000, 587_000]];

        let april_sales = quarterly_sales[1][0];

        debug::print(&april_sales); // [debug] 650000
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 12

// sui move test

