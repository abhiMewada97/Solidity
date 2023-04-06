// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

struct Student{   //storage type
    string name;
    uint roll;
}

contract Demo
{
    Student public s1;

    constructor (uint _roll, string memory _name)
    {
        s1.name =_name;
        s1.roll =_roll;
    }

//***********************************************************************change value
    function change(uint _roll, string memory _name) public
    {
        Student memory new_student = Student( { roll:_roll,name:_name } );

        s1 = new_student;
    }
}