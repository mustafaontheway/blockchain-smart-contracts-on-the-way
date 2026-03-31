module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    public fun return_sum_mult(x: u256, y: u256): (u256, u256, u8) {

        (x + y, x * y, 15)
    }

    #[test]
    fun test_return_sum_mult() {

        let (s, _, _) = return_sum_mult(12, 15);

        debug::print(&s);
    }
}

// [debug] 27

