module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;
    //use std::vector;

    fun greet() {

        let years = vector[2010u16, 2022, 2026, 2040];

        assert!(years.length() == 4, 0);

        assert!(!years.is_empty(), 1);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}


// sui move test

