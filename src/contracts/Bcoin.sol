// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bcoin {
    string public name = "Bcoin";
    string public symbol = "USDT";
    uint public totalSupply = 1000000000000000000000000;
    uint8 public decimals = 18;


event Transfer(
    address _from,
    address _to,
    uint _value

);

event Approve (
    address _receipient,
    uint value,
    address _sender
);

mapping(address => uint) public balanceOf;

constructor(){
    balanceOf[msg.sender] = totalSupply;
}

function transfer(address _to,uint _value) public returns (bool success){
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(_from,_to,_value);
    return true;

}

function transferFrom(address _to,address _from, uint _value) public returns(bool success){
      balanceOf[_from] += _value;
     balanceOf[_to] -= _value;
     emit Transfer(_from,_to,_value);
    return true;
}

}
