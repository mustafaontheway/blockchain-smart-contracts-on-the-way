module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::none();

        if (sales.is_none()) {

            sales.fill(500_000);
        }; 

        //debug::print(&sales);

        debug::print(sales.borrow());
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 500000

// sui move test

