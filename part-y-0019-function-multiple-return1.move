module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    public fun return_sum_mult(x: u128, y: u128): (u128, u128) {

        (x + y, x * y)
    }

    #[test]
    fun test_return_sum_mult() {

        let (t, m) = return_sum_mult(15, 140_000); 

        debug::print(&t);

        debug::print(&m);
    }
}

// [debug] 140015
// [debug] 2100000

// sui move test

