/*
Emit two events:

MintEvent which has the id of the newly minted SuiFren object.
BurnEvent which has the id of the SuiFren being deleted. Hint: Don't forget imports!
*/

module 0x123::sui_fren {
    use sui::object::{Self, ID, UID}; 
    use sui::transfer;
    use sui::tx_context::{Self, TxContext}; 
    use std::string::String;
    use std::vector;
    use sui::event;
    
    struct SuiFren has key {
        id: UID,
        generation: u64,
        birthdate: u64,
        attributes: vector<String>,
    }

    struct MintEvent has copy, drop {
        id: ID,
    }

    struct BurnEvent has copy, drop {
        id: ID,
    }

    public fun mint(generation: u64, birthdate: u64, attributes: vector<String>, ctx: &mut TxContext) {
        let uid = object::new(ctx);
        let id = object::uid_to_inner(&uid);
        
        let sui_fren = SuiFren {
            id: uid,
            generation,
            birthdate,
            attributes,
        };

        transfer::transfer(sui_fren, tx_context::sender(ctx));

        event::emit(MintEvent {
            id,
        });
    }

    public fun burn(sui_fren: SuiFren) {
        let SuiFren {
            id,
            generation: _,
            birthdate: _,
            attributes: _,
        } = sui_fren;

        let id_copy = object::uid_to_inner(&id);

        object::delete(id);

        event::emit(BurnEvent {
            id: id_copy,
        });
    }
}
