// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract sendETH{

    // address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); //type cast

    receive() external payable{}

    function checkbal() public view returns(uint){ 
        return address(this).balance;
    }

    event log(uint value);

    function SEND(address payable getter) public payable{  //msg.value hamesha payable ke sath hi use kar sakte hai
        
        emit log(msg.value);
        
        bool sent = getter.send(msg.value);
        require(sent,"Trans. is failed");
    }

    function TRANSFER(address payable getter) public payable{  // due to this function hamare smart contract account me ether aa rahe hai
        getter.transfer(msg.value);            //due to this, address ke account me transfer ho rahe hai ether
    }

    function CALL(address payable getter) public payable{
        (bool sent,) = getter.call{value:msg.value}("");
        require(sent,"Trans. is failed");
    }
}



contract GetETH{
    receive() external payable{}
    
    function checkbal() public view returns(uint){ 
        return address(this).balance;
    }
}