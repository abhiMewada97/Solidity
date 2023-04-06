// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract dataLocation{

    uint[] public arr = [3,53,23,7,34,27];

    function Storage() public {
        uint [] storage arrs = arr;   // not copying but arrs & arr pointing to same location 
        arrs[3] = 99;                 // change in arr & arrs

    }

    // function Memory() public {
    function Memory() public view {     // A new array created then copy all data in arrm in memory
        uint [] memory arrm = arr;
        arrm[1] = 111;                 // change in arrm

    }
}




// gas cost..........
// constant
// immutable 
// simple