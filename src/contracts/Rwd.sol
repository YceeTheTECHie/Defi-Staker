// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Rwd {
    string public name = "Reward Token";
    string public symbol = "USDT";
    uint public totalSupply = 1000000000000000000000000;
    uint8 public decimals = 18;


event Transfer(
    address  indexed _from,
    address indexed _to,
    uint _value

);

event Approval (
    address indexed _owner,
    uint value,
    address indexed _spender
);

mapping(address => uint) public balanceOf;
mapping(address => mapping(address => uint)) public allowance;


constructor(){
    balanceOf[msg.sender] = totalSupply;
}

function transfer(address _to,uint _value) public returns (bool success){
    require(balanceOf[msg.sender] <= _value);
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(_from,_to,_value);
    return true;

}

function Approval(uint _value, address _spender) public returns (bool success) {
    allowance[msg.sender][_spender] = _value;
    emit Approval(msg.sender,_value, _spender);
    return true;
}

function transferFrom(address _to,address _from, uint _value) public returns(bool success){
    require(_value <= balanceOf[msg.sender]);
    require(_value <= allowance[_from][msg.sender]);
    balanceOf[_from] += _value;
    balanceOf[_to] -= _value;
    allowance[_from][msg.sender] -= _value;
    emit Transfer(_from,_to,_value);
    return true;
}

}
