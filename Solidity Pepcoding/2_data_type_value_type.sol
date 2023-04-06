pragma solidity ^0.8.0;

// data types - values & references

// Contract valuesTypes{   //Error
// contract VALUESTypes{   //Correct
contract valuesTypes{      //Case sensitive lang

    bool bootTemp = true;

    uint public temp = 243;
    
    int public temp2 = 143;

    address public addr;

    bytes32 public b3;    // solidity me null value nahi hoty sabh ki alag alag default value hai
}