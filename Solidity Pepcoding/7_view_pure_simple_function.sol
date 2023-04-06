pragma solidity ^0.8.0;
contract viewAndPureFunction{
    
    uint public age=20;
    
    function viewFunc() public view returns(uint){     //2 gas
        return age;
    }

    function purefunc1() public pure returns(uint){     //1 gas
        return 1;
    }

    function purefunc2(uint _x) public pure returns(uint){  //1 gas
        return _x;
    }

    function simplefunc() public{       //3 gas
        age = age + 12;
    }
}