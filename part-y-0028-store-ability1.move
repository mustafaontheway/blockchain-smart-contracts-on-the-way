module mustafa::sui_learning {

    use std::string::{Self, String};
    use std::debug;

    use sui::object::{Self, UID};

    public struct Person has store, drop {

        person_first_name: String,
        person_last_name: String,
        person_birth_year: u16
    }

    public struct Employee has key {
        id: UID,
        emp_info: Person,
        department_id: u8,
        salary_usd: u16,  
    }

    public fun new(ctx: &mut TxContext, emp_info: Person, department_id: u8, salary_usd: u16): Employee {

        Employee {
            id: object::new(ctx),
            emp_info,
            department_id,
            salary_usd
        }
    }


    #[test]
    fun test_emp() {

        let mut ctx = sui::tx_context::dummy();

        let person_ayhan = Person {person_first_name: b"Ayhan".to_string(), person_last_name: b"Bilir".to_string(), person_birth_year: 1960};

        let emp_ayhan = new(&mut ctx, person_ayhan, 17, 4300);

        let Employee {id, emp_info: _, department_id: _, salary_usd} = emp_ayhan; // UID can't drop!

        debug::print(&salary_usd);

        object::delete(id);

    }
}

// [debug] 4300
 
// sui move test

