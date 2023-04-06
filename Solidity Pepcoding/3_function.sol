pragma solidity ^0.8.0;

contract functionIntro{

    uint age = 20;    // by default visibility internal hai

    function add(uint x, uint _y) public pure returns (uint){
        return x + _y;
    }

    function changeAge() public{
        age+=1;
    }

    function getage() public view returns(uint){
        return age;
    }

    function fun() internal{
        // code
    }

}


function dummy(uint _x)pure returns(uint){    //enxternal function we can not change visibility
    return _x*10;
}