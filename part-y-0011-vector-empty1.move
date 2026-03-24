module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;
    use std::vector;

    fun greet() {

        let quarterly_completed: vector<bool> = vector[];

        let ages: vector<u8> = vector::empty<u8>();

        debug::print(&quarterly_completed);

        assert!(vector::is_empty(&ages), 0);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] []
// [ PASS    ] mustafa::sui_learning::test_greet

// sui move test

