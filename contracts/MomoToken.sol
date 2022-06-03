pragma solidity ^0.8.14;

contract MomoToken {
    uint256 public totalSupply;
    string public name = "Momo Token";
    string public symbol = "MOMO";
    string public standard = "Momo Token v1.0";

    mapping(address => uint256) public balanceOf;

    event Transfer(
        address indexed from, 
        address indexed to, 
        uint256 value
    );

    constructor(uint256 _initialSupply) {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }
    
    function transfer(address _to, uint256 _value) public returns (bool success) {
        
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
    }
}