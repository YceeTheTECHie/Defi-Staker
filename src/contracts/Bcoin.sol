// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bcoin {
    string public name = "Bcoin";
    string public symbol = "USDT";
    uint public totalSupply = 1000000000000000000000000;
    uint8 public decimals = 18;


event Transfer(
    address  indexed _from,
    address indexed _to,
    uint _value

);

event Approval (
    address indexed _receipient,
    uint value,
    address indexed _sender
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
