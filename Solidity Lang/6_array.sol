// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Array
{
// *******************************************************************************************
    // uint[4] public arr = [4,2,65,1];

    // function setter(uint index, uint value) public
    // {
    //     arr[index] = value ;
    // }

    // function length() public view returns(uint)
    // {
    //     return arr.length;   // buildin
    // }

    
// ********************************************************   Dynamic array

    uint[] public arr;

    function popElement(uint item) public
    {
        arr.push(item);
    }

    function popElement () public
    {
        arr.pop();
    }

    function length() public view returns(uint)
    {
        return arr.length;   // buildin
    }
// *******************************************************************************************
}