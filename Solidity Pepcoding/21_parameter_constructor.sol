// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A{

    string public name;
    uint public age;

    constructor(string memory _name, uint _age){
        name = _name;
        age = _age;
    }    
}

contract B {

    string public addr;
    uint public salary;

    constructor(string memory _addr, uint _salary){
        addr = _addr;
        salary = _salary;
    }    
}

contract C is A("Abhishek",22),B("Bhopal",40000){  //fixed
                                                    // order of execution A then B

}

contract D is B,A{ // order not matter because both same base like
                        // order of execution B then A , depened on order
// contract D is A,B{   // order of execution A then B , depened on order
    constructor() A("Abhishek",22) B("Bhopal",40000){  //fixed

    }
}

contract E is B,A{      // Dynamic
    constructor(string memory _name, uint _age, string memory _addr, uint _salary) A(_name, _age) B(_addr, _salary){

    }
}

// passing parameter to parent constructor in multiple inheritance 


//order of inheritance is order of execution


// left to right  ---->  parent constructor ke case me
//                       execution of constructor ke case me

// right to left ---->   jab value le raha hota parent constructor se 
//                       jab property copy ker raha hota hai on constructor