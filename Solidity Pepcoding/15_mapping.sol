pragma solidity ^0.8.0;

contract Mapping{
    
    mapping(uint=>string) public emp_id;

    function setIds() public{

        emp_id[31] = "Abhishek";
        emp_id[27] = "Ankit";
        emp_id[33] = "Neetu";
        emp_id[20] = "Bhavna";
        emp_id[14] = "vishesh";
    }

    function getId(uint _id) public view returns(string memory){
        return emp_id[_id];
    }
}