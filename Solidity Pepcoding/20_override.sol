// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A{

    uint public a;

    constructor(){
        a=100;
    }    

    function funA() public {
        a=10;
    }

    function fun() public pure virtual returns(string memory) {
        return "I am A";
    }
}

contract B is A {

    uint public b;

    constructor(){
        b=200;
        a=50;
    }    

    function funAB() public {
        b=20;
    }

    function fun() public pure virtual override returns(string memory) {
        return "I am B";
    }
}

contract C is A,B{  // order matter
    function fun() public pure virtual override(B,A) returns(string memory) {  //In override, oerder not matter
        return "I am C";
    }
}

contract D is A,B,C{
    function fun() public pure override(B,C,A) returns(string memory) { 
        return "I am D";
    }
}