pragma solidity ^0.8.0;

contract stateVariable{

    // uint salary = 100;     //correct way
    uint salary;        //state variable
                        //outside function and inside contract
    // salary = 100;    //Error

    constructor(){
        salary = 1000;      //correct way
    }

    function setSalary() public{
        salary = 200;       //correct way
    }
}