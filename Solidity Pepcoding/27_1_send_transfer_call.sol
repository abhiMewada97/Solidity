// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract sendETH{

    address payable public getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); //type cast

    receive() external payable{}

    function checkbal() public view returns(uint){
        return address(this).balance;
    }

    function SEND() public {
        bool sent = getter.send(1000000000000000000);
        require(sent,"Trans. is failed");
    }

    function TRANSFER() public {
        getter.transfer(1000000000000000000);
    }

    function CALL() public {
        // (bool send,byte memory data) = getter.call{value:1000000000000000000}("");
        (bool sent,) = getter.call{value:1000000000000000000}("");
        require(sent,"Trans. is failed");
    }
}

/*
contract ( Ether )  ---> send to  ---> another account ,or another contract
3 ways

1 send.............
return bool value       true on transaction succ. or false on tran. unsuc.
limits    2300 gas only if more then send function fail , error --->   out of gas
if function fail then nothing is revert (no cost revert)
transaction fail hone per bhi change rah jata hai
agar hum chahte hai any change and gas revert ho jaye to hame (require) ka use karna chahiye

2 transfer..............
nothing return
limits    2300 gas
it revert if transaction fail we not need of (require)
transfer ke pass revert inbuilt hota hai

3 call................
same as (send) except
we decide gas limit
it return two thing     bool value & data in byte

*/