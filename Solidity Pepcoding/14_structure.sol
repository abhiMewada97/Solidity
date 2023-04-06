pragma solidity ^0.8.0;

    struct Emp{
        string name;
        uint age;
        address acc;
    }

contract Structure{

    // struct Emp{                      // both are same
    //     string name;
    //     uint age;
    //     address acc;
    // }

    Emp public emp;

constructor(string memory _name, uint _age, address _acc){
    emm.name = _name;
    emp.age = _age;
    emp.acc = _acc;
}

    Emp[] public emps;

    function setValues() public {

        Emp memory emp1 = Emp("abhishek", 21, 0X48235234c2342343ec43E34sdf4sdfa23);

        Emp memory emp2 = Emp({acc :msg.sender, name:"ajay", age:23});

        Emp memory emp3;

        emp3.name = "aman";
        emp3.age = 23;
        emp3.acc = msg.sender;

        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

        emps.push(Emp("ritik",99,msg.sender));

        // Emp memory emp_temp = emp;
        Emp storage emp_temp = emp;         // reference
        emp_temp.name = "harsh";

    }
}


contract Structure2{        // we can make 2 contract in same programm

    Emp public emp_struct2 = Emp("aajay",42,msg.sender);

}