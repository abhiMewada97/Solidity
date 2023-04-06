pragma solidity ^0.8.0;

contract localVariable{

    uint public age;
    bool public b;
    address public newNod;

    function setValue(uint _x, bool _y, address _z) public returns(uint, bool){
        uint s = 123;
        bool f = true;    //local variable ke liye negligiable gas lagty hai

        age = _x;
        b = _y;
        newNod = _z;

        return (s,f);           //return more than one value
    }
}