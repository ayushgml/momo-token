pragma solidity ^0.8.14;

contract MomoToken {
    uint256 public totalSupply;
    string public name = "Momo Token";
    string public symbol = "MOMO";
    string public standard = "Momo Token v1.0";

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }
    
    
    
}