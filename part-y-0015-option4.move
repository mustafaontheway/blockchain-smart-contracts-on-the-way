module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let mut sales: Option<u32> = option::some(500_000);

        if (sales.is_some()) {

            let sales_ref = sales.borrow_mut();
            
            *sales_ref = *sales_ref + 100_000;
        }; 

        //debug::print(&sales);

        debug::print(sales.borrow());
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

//[debug] 600000

// sui move test

