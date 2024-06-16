# MyERC20Token Smart Contract
Write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

---
# Overview
MyERC20Token is a basic ERC20-like token smart contract implemented in Solidity. It includes functionalities for minting, burning, and transferring tokens. This contract is designed for educational purposes and demonstrates the basic concepts of token creation and management on the Ethereum blockchain.

# MyToken Contract

This is a basic token contract implemented in Solidity. It allows for token minting, burning, and transfer functionality. The contract owner has the authority to mint new tokens, while any address can burn their own tokens and transfer tokens to other addresses.

## Contract Details

- Contract name: MyToken
- License: MIT
- Solidity version: 0.8.18

## Contract Variables

- `owner`: The address of the contract owner.
- `tokenName`: The name of the token.
- `tokenSymbol`: The symbol or abbreviation of the token.
- `totalSupply`: The total supply of the token.
- `balances`: A mapping that stores the token balances of addresses.

## Functions

1. ## mint(address _address, uint256 _value):
   Mints new tokens to the specified address. Only the contract owner can call this function.
- Parameters:
    _address: Address to receive the minted tokens.
    _value: Number of tokens to mint.
- Conditions:
    _address must be the owner's address.
- Actions:
    Increases totalSupply by _value.
    Adds _value to the balance of _address.

    
2. ## burn(address _address, uint256 _value):
   Burns tokens from the specified address.
- Parameters:
   _address: Address from which to burn tokens.
   _value: Number of tokens to burn.
- Conditions:
   _address must have at least _value tokens.
- Actions:
   Decreases totalSupply by _value.
   Subtracts _value from the balance of _address.
  
  
3. ## transfer(address _from, address _to, uint256 value):
   Transfers tokens from one address to another.
- Parameters:
    _from: Address to transfer tokens from.
    _to: Address to transfer tokens to.
     value: Number of tokens to transfer.
- Conditions:
    _from must have at least value tokens.
- Actions:
    Subtracts value tokens from _from.
    Adds value tokens to _to.

### `constructor()`

- Initializes the contract owner, token name, token symbol, and total supply.
- The contract owner is set as the deployer of the contract.

### `mint(address _address, uint256 _value)`

- Mints new tokens and assigns them to the specified address.
- Only the contract owner can call this function.
- Increases the total supply of the token.

### `burn(address _address, uint256 _value)`

- Burns (destroys) tokens from the specified address.
- The address must have a sufficient balance to burn.
- Decreases the total supply of the token.

### `transfer(address _from, address _to, uint256 _value)`

- Transfers tokens from one address to another.
- The sender must have a sufficient balance to transfer.
- Decreases the sender's balance and increases the recipient's balance.

## Usage

1. Open Command prompt in your system.
2. Deploy local hardhat network using npx hardhat node.
3. Deploy the contract on Remix.
4. Set the environment to dev-Hardhat provider.
5. Set the contract owner as the desired address.
6. The contract owner can mint new tokens using the `mint` function, specifying the recipient address and the amount of tokens to mint.
7. Any address can burn their own tokens using the `burn` function, specifying the amount of tokens to burn.
8. Addresses can transfer tokens to other addresses using the `transfer` function, specifying the sender address, recipient address, and the amount of tokens to transfer.

---

## License

This contract is licensed under the MIT License.
