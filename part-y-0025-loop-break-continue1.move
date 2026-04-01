module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun counter() {

        let mut s = 0u16;

        loop {

            s = s + 2;

            if (s == 10) {

                continue
            };

            if (s == 20) {

                break
            };
        };   

        debug::print(&s);
    }

    #[test]
    fun test_counter() {

        counter();
    }
}

// [debug] 20
 
// sui move test

