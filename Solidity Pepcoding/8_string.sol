pragma solidity ^0.8.0;

contract _string{

    string public str = "hello";

    function checkString(string memory _x) public pure returns(string memory){

        string memory name = _x;

        return name;
    }
}

// string by default storage me save hota
// agar ham function ke andar string use karenge to string ke bad memory keyword ka use karna padega

// constant take less gas

//ternary operator