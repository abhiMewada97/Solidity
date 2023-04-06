// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract fallback_receive{

    event log(string _fun, address _sender, uint _val, bytes _data);
    
    fallback() external payable{   // jab fallback or receive dono hote hai tabh
                                   // agar data or ether dono hai to fallback use hoga
                                   // agar sirf ether hai to receive use hoga
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable{
        emit log("fallback", msg.sender, msg.value,"");
    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }
}


/* fallback  ---> main use to get ether
It is executed when a non-existent function is called on the contract
It is required to ve marked external
It has no name
It has no arguments
It can not return any thing
It can be defined onr per contract
It not marked payable, it will throw exception if contract receives ether
It's main use is to directly send the ETH to contract

data bhi le sakta hai  or 
ether bhi le sakta hai (in form of bytes)  ---> hame payable banana padega



receive..........

receive is same as fallback

but receive can not take data 
only take Ether
or receive ko hame hamesha payble karna hi padega


//fallback    jo (receive) se kar sakte hai bo (fallback) se bhi kar sakte hai
//receive    but jo (fallback) se kar sakte hai bo (receive) se nahi kar sakte hai
*/