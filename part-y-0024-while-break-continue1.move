module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun counter() {

        let mut s = 0u16;

        while (s < 20) {

            s = s + 1;

            if (s == 10) {

                continue
            };

            if (s == 14) {

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

// [debug] 14
 
// sui move test

