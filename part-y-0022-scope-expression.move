module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greeting() {

        let a: u16 = 100;
        let b: u16 = 2000;

        let sum = a + b;

        debug::print(&sum);

        let c = {

            let a: u16 = 10000;
            let b: u16 = 20000;
            a + b
        };

        debug::print(&c);
    }

    #[test]
    fun test_greeting() {

        greeting();
    }
}

// [debug] 2100
// [debug] 30000

// sui move tes

