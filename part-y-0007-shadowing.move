module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let info = string::utf8(b"lorem ipsum");

        debug::print(&info);

        let info: u16 = 2026;

        debug::print(&info);

        let info = true;

        debug::print(&info);
     }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] "lorem ipsum"
// [debug] 2026
// [debug] true

// sui move test

