// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Immutable{

    // address public immutable owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  ;
    address public immutable owner;
    
    constructor(address _owner){
        owner = _owner;
    }
}




// gas cost..........
// constant
// immutable 
// simple