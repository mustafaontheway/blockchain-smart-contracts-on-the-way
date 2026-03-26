module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    fun greet() {

        let emp1 = set_employee(4298, 3000, option::none());

        print_employee(&emp1);

        let emp2 = set_employee(3241, 4300, option::some(true));

        print_employee(&emp2);
    }

    public struct Employee has drop {

        emp_id: u16,
        salary_usd: u16,
        is_married: Option<bool>
    }

    fun set_employee(emp_id: u16, salary_usd: u16, is_married: Option<bool>): Employee {

        Employee {emp_id, salary_usd, is_married}
    }

    fun print_employee(emp: &Employee) {

        debug::print(&emp.emp_id);
        debug::print(&emp.salary_usd);
        debug::print(&emp.is_married);
    }

    #[test]
    fun test_greet() {

        greet(); 
    }
}

// [debug] 4298
// [debug] 3000
// [debug] 0x1::option::Option<bool> {
//   vec: []
// }
// [debug] 3241
// [debug] 4300
// [debug] 0x1::option::Option<bool> {
//   vec: [ true ]
// }

// sui move test

