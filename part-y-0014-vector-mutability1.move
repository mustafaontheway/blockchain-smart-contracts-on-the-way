module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;
    //use std::vector;

    fun greet() {

        let mut years = vector[2010u16, 2022, 2026, 2040];

//         years[3] = 2004; /*  years[3] = 2004;
//    │         ^^^^^^^^ Index syntax it not yet supported in left-hand positions*/

        let year_updater = years.borrow_mut(3);

        *year_updater = 2004;

        assert!(years[3] < 2010, 0);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}



// sui move test

