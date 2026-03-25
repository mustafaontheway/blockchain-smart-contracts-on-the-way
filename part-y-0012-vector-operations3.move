module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let years = vector[2010u16, 2022, 2026, 2040, 2010, 2000, 2002];

        let (found, its_index) = vector::index_of(&years, &2000);

        debug::print(&found);

        debug::print(&its_index);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] true
// [debug] 5

// sui move test

