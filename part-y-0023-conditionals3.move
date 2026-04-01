module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun voter(age: u8): bool {

        age >= 18 && age < 90
    }

    #[test]
    fun test_greeting() {

        let cond1 = voter(45);

        debug::print(&cond1);

        let cond2 = voter(13);

        debug::print(&cond2);
    }
}

// [debug] true
// [debug] false

// sui move test

