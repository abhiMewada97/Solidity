// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Array
{
    // bytes3 public b3;   //3 bytes array
    // bytes2 public b2;   //2 bytes array
    // bytes4 public b1;   //4 bytes array

    // function setter() public
    // {
    //     b3 ='abc';   //immutable
    //     b2 ='ab'; 
    //     b1 ='abc';  //remainig 1 so at the end add 0 in remainder place
    // }

//*****************************************************************************************
// Dynamic Array

    bytes public arr = "abc";

    function pushElement() public
    {
        arr.push('d');
    }

    function getElement(uint i) public view returns(bytes1)  // kisi ek particular element ko hi exis ker rahe hai
    {
        return arr[i];
    }

    function getLength() public view returns(uint)
    {
        return arr.length;
    }
}