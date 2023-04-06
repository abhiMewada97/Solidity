// SPDX-License-Identifier: GPL-3.0

// pragma solidity 0.5.0;  //0 money after setter
pragma solidity 0.8.0;     //not increase money after setter

contract local
{
    uint8 public money=255;

    function setter() public
    {
        money = money+1;
    }
}