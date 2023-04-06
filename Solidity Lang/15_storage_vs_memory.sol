// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 <0.9.0;

contract demo
{
    string[] public student = ['Ravi', 'Akash', 'Meena'];

    function mem() public view
    {
        string[] memory s1 = student;  // ye copy banayega or ushme change karega
        s1[0] = 'Abhishek';  //no change in value
    }

    function sto() public
    {
        string[] storage s1 = student;  // s1 direct student ko hi point karne lagega
        s1[0] = 'Abhishek'; //value change ker dega
    }
}