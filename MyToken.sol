// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


contract ReinaToken {

    address public owner;
    uint public  totalSupply;  
    string public name = "MyToken";
    string public symbol = "MT";
    uint8 public decimals = 18;

    mapping(address => uint) public balanceOf;
    event Transfer(address to, address from, uint256 amount);


    constructor() {
        owner = msg.sender;
    }
    

    function mint(uint amount, address _address) external {
        require(msg.sender == owner,"Only the owner can mint tokens");

        balanceOf[_address] += amount;
        totalSupply += amount;

        emit Transfer(address(0), msg.sender, amount);
    }

    function transfer(address recipient, uint amount) external returns (bool) {
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient] += amount;

        emit Transfer(msg.sender, recipient, amount);

        return true;
    }


    function burn(uint amount) external {
        balanceOf[msg.sender] -= amount;
        totalSupply -= amount;

        emit Transfer(msg.sender, address(0), amount);
    }

}