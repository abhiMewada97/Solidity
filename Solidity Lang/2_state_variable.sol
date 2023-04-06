// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract State   //
{
    uint public age;  //func ya variabl ke age public likhne se uske liye auto matic 1 get func create ho jata hai
    
    uint public no; // we can not declear a new variable in contract becouse
                    //this is staticaly type lang. that's why all thing decide during compile time
                    // if we made new variable so we have to deploy again

    // uint public age = 12;  //correct

    //  constructor() public   //also correct
    //  {
    //      age =12;
    //  }
    
    function setAge() public   //also correct
    {
        age =12;
    }

    //error
    //age = 12; //state variable ko ish tarah initialize nahi ker sakte

}

//state variable jo contract per declare kiye jate hai
//state variable permanatly store hota hai
// jitne jyada honge utni gas pay karni padegi
// variable ki default value hoty hai null bagera kujh nahi hota
//all thing done during compile time
// it is not dynamic type language