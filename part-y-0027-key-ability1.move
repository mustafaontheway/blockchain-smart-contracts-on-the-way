module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    use sui::object::{Self, UID};

    // Not all resources require the key ability; only those that need to be stored in global storage should have this ability

    public struct Employee has key {
        id: UID,
        emp_name: String,
        department_id: u8,
        salary_usd: u16,  
    }

    public fun new(ctx: &mut TxContext, emp_name: String, department_id: u8, salary_usd: u16): Employee {

        Employee {
            id: object::new(ctx),
            emp_name,
            department_id,
            salary_usd
        }
    }


    #[test]
    fun test_emp() {

        let mut ctx = sui::tx_context::dummy();

        let emp_ayhan = new(&mut ctx, b"Ayhan Bilir".to_string(), 17, 4300);

        let Employee {id, emp_name: _, department_id: _, salary_usd} = emp_ayhan; // UID can't drop!

        debug::print(&salary_usd);

        object::delete(id);

    }
}

// [debug] 4300
 
// sui move test

