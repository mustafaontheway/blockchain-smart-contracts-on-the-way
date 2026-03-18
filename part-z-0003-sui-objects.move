/*
Update AdminCap to have the key ability and an id field of type UID.
Add a new private function - fun init that takes an argument ctx of type &mut TxContext and creates the AdminCap object with num_frens set to 1000. 
An init function is automatically called when the module is deployed to the blockchain.
Share the AdminCap object so anyone can use to create Frens. We'll cover later how to make it so that only specific accounts can have AdminCap and create Frens.

*/

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
}
