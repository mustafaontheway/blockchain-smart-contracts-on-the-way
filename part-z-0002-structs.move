// Add a new struct AdminCap with a single field num_frens of type u64

module 0x123::sui_fren {

    use sui::object::UID;
    
    struct AdminCap has key {
        id: UID,
        num_frens: u64,
    }
}
