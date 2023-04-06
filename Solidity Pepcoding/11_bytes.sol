pragma solidity ^0.8.0;

contract bytes{
    bytes5 b5;
    bytes b6 ;

    function setValue() public{
        
        bytes5 b4 = "Abhi";    //pading     size 5 but value 4     at 5th index 0
        bytes b6 = "mewada";
    }

    function returnIndex() public view returns(bytes1)
    {
        return b4[1];
    }

    function returnIndex() public view returns(uint)
    {
        return b6.length;
    }
}

// bytes same as array
// 1 box indicate 1 bytes
// har ek index per hexadecimal digits ati hai
// 1 bytes = 8 bits
// 1 hexadecimal digit = 4 bits
// 1 bytes = 2 hexdecimal digits