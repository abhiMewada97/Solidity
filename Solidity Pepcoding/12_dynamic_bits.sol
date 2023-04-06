pragma solidity ^0.8.0;

contract dynamicBits{

    bytes temp;

    constructor(){
        temp = "123fs";
    }

    function pushElement() public{
        temp.push("d");
    }

    function popElement(){
        temp.pop();
    }

    function length() public view returns(uint){
        return temp.length;
    }
}