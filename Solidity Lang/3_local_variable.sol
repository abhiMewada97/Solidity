// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Local 
{
    // string name = "Abhi"; //state variable correct
    // string memory name = "Abhi"; //error  // memory keyword can't use at contract level

    function store() pure public returns(uint)
    {
        // local variable 
        //string name = "Abhi"; //error   //by default ye storage me hi store hota hai
        string memory name = "Abhi";  // that's why we use memory keyword to store in memory
        uint age = 32;
        return age;
    }
   
}

//state variable contract storage and ether ki block chain me permanetly store hota hai
//local variable stack me store hota hai