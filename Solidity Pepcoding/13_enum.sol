pragma solidity ^0.8.0;

contract Enum{

    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel
    }

    Status status;

    function getStatus() public view returns(Status){
        return status;
    }

    function setStatus(Status _status) public{
        status = _status;
    }

    function rej() public{
        status = Status.Rejected;
    }

    function reset() public{
        delete status;
    }
}

// user define data type