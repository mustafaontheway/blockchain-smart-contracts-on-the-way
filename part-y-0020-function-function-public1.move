module mustafa::sui_learning {

    //use std::string::{Self, String};
    //use std::debug;

    public fun return_sum_mult(x: u256, y: u256): (u256, u256) {

        (x + y, x * y)
    }

    #[test]
    fun test_return_sum_mult() {
    }
}

module mustafa::temp {

    use std::debug;

    #[test]
    fun test_func_call() {

        let (s, m) = mustafa::sui_learning::return_sum_mult(15, 140);

        debug::print(&s);

        debug::print(&m);
    }
}

// debug] 155
// [debug] 2100
