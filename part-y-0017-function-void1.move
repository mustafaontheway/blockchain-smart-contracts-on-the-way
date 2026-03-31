module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    public fun print_sum(x: u128, y: u128) {

        let total = x + y;

        debug::print(&total);
    }

    #[test]
    fun test_print_sum() {

        print_sum(15, 140_000); 
    }
}

// [debug] 140015

// sui move test

