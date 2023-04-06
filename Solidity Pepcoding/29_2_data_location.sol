// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract dataLocation{

    function Memory(string memory str, uint[] memory arr) public {

        getInMemory(arr);   // memory to memory can send data
        // getInCall(arr);   // memory to call can not send data
    }

    function CallData(string calldata str, uint[] calldata arr) public {  // 1 calling

        getInMemory(arr);   // call to memory can send data
        getInCall(arr);   // call to call can send data
    }

    function getInMemory(uint[] memory arr) public {  //1 // memory me ek new array create hoga 
        
    }
    function getInCall(uint[] calldata arr) public {  //1 // call data me koi new array create nahi hoga balki usi same array ko point ker raha hota hai

    }
}