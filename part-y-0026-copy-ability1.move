module mustafa::sui_learning {

    //use std::string::{Self, String};
    use std::debug;

    public struct Employee has copy {
        emp_id: u8,
        salary_usd: u16  
    }

    #[test]
    fun test_salary() {

        let new_emp = Employee {emp_id: 17, salary_usd: 3400};

        let copy_new_emp = new_emp;

        let Employee {emp_id: _, salary_usd: _} = new_emp;

        let Employee {emp_id, salary_usd} = copy_new_emp;

        debug::print(&emp_id);

        debug::print(&salary_usd);
    }
}

// [debug] 17
// [debug] 3400
 
// sui move test

