// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract checkWinningProposal
{
    uint public age = 10;

    function getter1() public view returns(uint)  //correct view only reading
    {
        return age;
    }

    function getter2() public view returns(uint)  // correct in both case
    {
        uint no=23;
        return no;
    }

    function getter3() public pure returns(uint)  //correct pure neigther readig nor writing
    {
        uint no=23;
        return no;
    }
}