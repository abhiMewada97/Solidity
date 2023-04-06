// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract aucation{

    address public owner = msg.sender;

    modifier onlyOwner(){
        require(owner != msg.sender,"You are not the owner");
        _;
    }

    function startAucation() public view onlyOwner{

    }

    function stopAucation() public onlyOwner view{
        
    }

    function checkStatus() public onlyOwner view{

    }


    uint public age=20;
    modifier temp(uint _y){
        age = age+_y;
        _;
    }

    // function changeAge(uint _y) public{
    function changeAge(uint _y) public temp(_y){
        // age = age+_y;
    }
}