module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    public struct Employee has drop {
        emp_id: u8,
        salary_usd: u16  
    }

    public fun new(emp_id: u8, salary_usd: u16): Employee {

        Employee {emp_id, salary_usd}
    }

    public fun set_salary(emp: &mut Employee, salary_usd: u16) {

        emp.salary_usd = salary_usd;
    }

    #[test]
    fun test_salary() {

        let mut new_emp = new(17, 4200);

        new_emp.set_salary(4600);

        let s = new_emp.salary_usd;

        debug::print(&s);
    }
}

// [debug] 4600
 
// sui move test

