#[starknet::interface]
trait ISRC5<TStorage> {
    /// @notice Query if a contract implements an interface
    /// @param interface_id The interface identifier, as specified in SRC-5
    /// @return `true` if the contract implements `interface_id`, `false` otherwis
    fn supports_interface(self: @TStorage, interface_id: felt252) -> bool;
}
