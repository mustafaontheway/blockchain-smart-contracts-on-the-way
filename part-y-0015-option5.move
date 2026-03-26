module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::some(500_000);

        let _ = sales.swap(700_000); 

        //debug::print(&sales);

        debug::print(sales.borrow());
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

//[debug] 700000

// sui move test

