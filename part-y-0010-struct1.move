module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    public struct Employee has drop {
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

        debug::print(&emp_ayhan);

        let new_salary_ayhan = emp_ayhan.salary_usd + 500;

        debug::print(&new_salary_ayhan);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 0x0::sui_learning::Employee {
//   full_name: "Ayhan Bilir",
//   department: "HR",
//   salary_usd: 2400,
//   title: "HR Expert"
// }
// [debug] 2900

// sui move test

