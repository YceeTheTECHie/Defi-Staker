// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import './Rwd.sol';
import './Bcoin.sol';

contract DecentralizedBank {
    string public name = "Decentralized Bank";
    address public owner;
    Rwd public rwd;
    Bcoin public bcoin;

    constructor(Rwd _rwd,Bcoin _bcoin){
        rwd = _rwd;
        bcoin = _bcoin;
    }
}

