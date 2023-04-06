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
}

// contract C is B,A{
contract C is A,B{  // Order is matter, which is more base come first
                    // it will not take any thing from a because B already inherit all thing of A
                    // B ki property dominate karengi na ki A ki, agar A & B same property de raha hai to
    
}