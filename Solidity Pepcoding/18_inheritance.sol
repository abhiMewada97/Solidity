// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A{

    uint public a = 100;
    address public owner = msg.sender;

    function check1() public pure returns(string memory) {
        return "I am in A";
    }

    function check2() public pure returns(string memory) {
        return "I am in A";
    }

    function check3() public pure virtual returns(string memory) {  // virtual means allow to update
        return "I am in A";
    }

    function check4() public pure virtual returns(string memory) {
        return "I am in A";
    }

}

contract B is A{   //child
    
    function check3() public pure override returns(string memory) {  // override keyword to override
        return "I am in B";
    }

    function check4() public pure virtual override returns(string memory) {
        return "I am in B";
    }
}

contract C is B{
    function check4() public pure override returns(string memory){
        return "I am in C";
    }
}