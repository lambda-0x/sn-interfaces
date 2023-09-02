use starknet::ContractAddress;

#[starknet::interface]
trait IERC20<TState> {
    fn name(self: @TState) -> felt252;
    fn symbol(self: @TState) -> felt252;
    fn decimals(self: @TState) -> u8;
    fn total_supply(self: @TState) -> u256;
    fn balance_of(self: @TState, account: ContractAddress) -> u256;
    fn allowance(self: @TState, owner: ContractAddress, spender: ContractAddress) -> u256;
    fn transfer(ref self: TState, recipient: ContractAddress, amount: u256) -> bool;
    fn transfer_from(
        ref self: TState, sender: ContractAddress, recipient: ContractAddress, amount: u256
    ) -> bool;
    fn approve(ref self: TState, spender: ContractAddress, amount: u256) -> bool;

    // camelCase method variants
    //
    // NOTE: This is only for compatibility with old cairo version.
    // new standard is snake_case method names. So this methods can
    // be removed in future
    //
    // Only implement this methods in terms of snake_case methods variants.
    // So if in future support for camelCase variants is removed contracts
    // works normally.

    fn balanceOf(self: @TState, account: ContractAddress) -> u256;
    fn totalSupply(self: @TState) -> u256;
    fn transferFrom(
        ref self: TState, sender: ContractAddress, recipient: ContractAddress, amount: u256
    ) -> bool;
}
