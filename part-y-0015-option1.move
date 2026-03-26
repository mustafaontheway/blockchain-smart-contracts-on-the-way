module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::none();

        debug::print(&sales);

        sales = option::some(500_000);

        debug::print(&sales);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 0x1::option::Option<u32> {
//   vec: []
// }
// [debug] 0x1::option::Option<u32> {
//   vec: [ 500000 ]
// }

// sui move test

