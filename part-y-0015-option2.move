module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::none();

        let val = sales.destroy_with_default(0);

        debug::print(&val);

        sales = option::some(500_000);

        let val = sales.destroy_with_default(0);

        debug::print(&val);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 0
// [debug] 500000

// sui move test

