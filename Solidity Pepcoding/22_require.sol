// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Rquire{

    address public owner = msg.sender;
    uint public age = 25;

    function checkRquire(uint _x) public{
        age +=5;  // jo bhi change hua bo bapas unchange ho jayega when condition fall
        require(_x > 2,"your age is less then 3");  //if condition fall then it will not go forward
                                                    // transaction fees will return after the contion jo bhi lagegi
    }

    function onlyOwner() public{
        require(owner==msg.sender,"You are not owner");
        age -=2;
    }    
}


// Reauire  ---->   error handling methode 
// use to error handling in function of smart contract
//   use in    // input validation
//   use in    // access control

// Revert       In defrent place to error handling
// Assert       In defrent place to error handling