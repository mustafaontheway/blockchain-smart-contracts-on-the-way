module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::some(500_000);

        let mut old_sales = sales.swap(700_000); 

        // let ref_old_sales = &mut old_sales;
        // *ref_old_sales = *ref_old_sales - 100_000;

        old_sales = old_sales - 100_000;

        //debug::print(&sales);

        debug::print(sales.borrow());

        debug::print(&old_sales);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 700000
// [debug] 400000

// sui move test

