// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Rquire{

    address public owner = msg.sender;
    uint public age = 25;

    // function checkRquire(uint _x) public{
    //     age +=5;
    //     require(_x > 2,"your age is less then 3");
    // }

    error checkError(string);

    function checkRevert(uint _x) public {
        age = age + 5;
        if(_x < 2){
        revert checkError("value of x is less than 3");   //gas cost is less
        }
    }


    function onlyOwner() public{
        if(owner!=msg.sender){
        revert("You are not owner");
        }
        age -=2;
    }    

    //Assert

    function checkOwner() public view{
        assert(owner != 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        // assert(owner != 0xAb84815835cb2);     //error not owner
    }
}
