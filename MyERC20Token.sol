// SPDX-License-Identifier: MIT

//Only contract owner should be able to mint tokens
//Any user can transfer tokens
//Any user can burn tokens

pragma solidity 0.8.18;

contract MyERC20Token {
    address public owner;
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
        tokenName = "Ether";
        tokenSymbol = "ETH";
        totalSupply = 0;
    }

   function mint(address _address, uint256 _value) public onlyOwner{
        require(_address == owner, "Only the contract owner can mint tokens");
        totalSupply += _value; 
        balances[_address] += _value;
    }


   function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value; 
            balances[_address] -= _value;
        }
    }

   function transfer( address _from,address _to,uint256 value) public {
        if (balances[_from] >= value) {

            balances[_from] -= value;
            balances[_to] += value;
        }
    }
}