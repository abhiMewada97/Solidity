pragma solidity ^0.8.0;

contract ownable {
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner()                    //special type func 
    {                                       //permition dene ke kam ata hai 
        require (msg.sender == owner,"not owner");      //check owner
        _;                                  // agar above line chal jati hai to aage bad jao
    }

    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }

    function onlyOwnerCanAccess() public onlyOwner{
        //code
    }

    function anyOneCanAccess() public{
        //code
    }
}