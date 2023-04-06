// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract sendETH{

    // address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); //type cast

    receive() external payable{}

    function checkbal() public view returns(uint){ 
        return address(this).balance;
    }

    function SEND(address payable getter) public {  //getter ke age payble use karna padega
        bool sent = getter.send(1000000000000000000);
        require(sent,"Trans. is failed");
    }

    function TRANSFER(address payable getter) public {
        getter.transfer(1000000000000000000);
    }

    function CALL(address payable getter) public {
        (bool sent,) = getter.call{value:1000000000000000000}("");
        require(sent,"Trans. is failed");
    }
}