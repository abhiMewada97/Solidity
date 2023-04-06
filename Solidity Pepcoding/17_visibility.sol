// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract A{
    
    uint private x = 10; //only within the contract
    uint internal y = 100;  //within the contract & in derived contract
    uint public z = 1000; // everywhere

    // uint external a = 1234;  // it will give error external not work with state variable

    function check1() private pure returns(string memory) {
        return "private";
    }

    function check2() internal pure returns(string memory) {
        return "internal";
    }

    function check3() external pure returns(string memory) {
        return "external";
    }

    function check4() public pure returns(string memory) {
        return "public";
    }

    // function checkAll() public view returns(uint){
    //     return x;
    // }

    function checkAll() public view returns(uint){   // use pure because check1() fun is pure
        check1();
        // check2();
        // check3();  //can not call within (internal)
        // check4();
    }

}

contract B is A{   //child
    
    // uint a = z;

    // string public s = check1();
    // string public s = check3();

    // string public s = check2();
    string public s = check4();
}

contract C{

    A obj = new A();  // creating object
    uint public a = obj.z();

    function anotherCall() public view returns(string memory){
        // return obj.check1();
        // return obj.check2();
        
        // return obj.check3();
        return obj.check4();
    }
}