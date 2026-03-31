module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    public fun return_sum(x: u128, y: u128): u128 {

        x + y
    }

    #[test]
    fun test_return_sum() {

        let t = return_sum(15, 140_000); 

        debug::print(&t);
    }
}

// [debug] 140015

// sui move test

