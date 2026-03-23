module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    public struct Employee has {
        full_name: String,
        department: String,
        salary_usd: u16,
        title: String
    }

    fun greet() {

        let emp_ayhan = Employee {
            full_name: string::utf8(b"Ayhan Bilir"),
            department: string::utf8(b"HR"),
            salary_usd: 2400,
            title: string::utf8(b"HR Expert"),
        };

        let Employee {full_name, department: _, salary_usd, title: _} = emp_ayhan;

        debug::print(&full_name);

        debug::print(&salary_usd);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] "Ayhan Bilir"
// [debug] 2400

// sui move test

