/*
The init function below currently sets num_frens in AdminCap to a constant (fixed value) DEFAULT_NUM_FRIENDS of type u16 despite num_frens is of type u64. 
This will fail to compile due to type mismatch. Fix this.
module 0x123::sui_fren {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::TxContext;

    const DEFAULT_NUM_FRIENDS: u16 = 1000;

    struct AdminCap has key {
        id: UID,
        num_frens: u64,
    }
    
    fun init(ctx: &mut TxContext) {
        let config = AdminCap {
            id: object::new(ctx),
            num_frens: DEFAULT_NUM_FRIENDS,
        };
        transfer::share_object(config);
    }
}
*/

module 0x123::sui_fren {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::TxContext;

    const DEFAULT_NUM_FRIENDS: u16 = 1000;

    struct AdminCap has key {
        id: UID,
        num_frens: u64,
    }
    
    fun init(ctx: &mut TxContext) {
        let config = AdminCap {
            id: object::new(ctx),
            num_frens: (DEFAULT_NUM_FRIENDS as u64),
        };
        transfer::share_object(config);
    }
}


