module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greeting() {

        let sales: u32 = 500_000;

        let premium = if (sales > 500_000 && sales < 1_000_000) {
            
            (sales * 8 ) / 100 

        } else if (sales > 250_000) {

            (sales * 3) / 100

        } else {

            0
        };

        debug::print(&premium);
    }

    #[test]
    fun test_greeting() {

        greeting();
    }
}

// [debug] 15000

// sui move test

