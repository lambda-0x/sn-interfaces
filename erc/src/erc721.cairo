use starknet::ContractAddress;

#[starknet::interface]
trait IERC721<TState> {
    fn initializer(ref self: TState, name_: felt252, symbol_: felt252, admin: ContractAddress);
    fn balance_of(self: @TState, account: ContractAddress) -> u128;
    fn owner_of(self: @TState, token_id: u128) -> ContractAddress;
    fn transfer_from(ref self: TState, from: ContractAddress, to: ContractAddress, token_id: u128);
    fn safe_transfer_from(
        ref self: TState,
        from: ContractAddress,
        to: ContractAddress,
        token_id: u128,
        data: Span<felt252>
    );
    fn approve(ref self: TState, to: ContractAddress, token_id: u128);
    fn set_approval_for_all(ref self: TState, operator: ContractAddress, approved: bool);
    fn get_approved(self: @TState, token_id: u128) -> ContractAddress;
    fn is_approved_for_all(
        self: @TState, owner: ContractAddress, operator: ContractAddress
    ) -> bool;
    fn mint(ref self: TState, to: ContractAddress, token_id: u128);
}
