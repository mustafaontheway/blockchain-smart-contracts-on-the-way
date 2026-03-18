// Add a new function get_num_frens that takes an argument admin_cap of type &AdminCap object and returns the num_frens value.

module 0x123::sui_fren {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::TxContext;


    struct AdminCap has key {
        id: UID,
        num_frens: u64,
    }
    
    fun init(ctx: &mut TxContext) {
        let admin_cap = AdminCap {
            id: object::new(ctx),
            num_frens: 1000,
        };
        transfer::share_object(admin_cap);
    }


    fun get_num_frens(admin_cap: &AdminCap): u64 {
        admin_cap.num_frens
    }
}
