// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Modifier{

    modifier sameCode(){   // jis function signature me Modifier add hai use use me code chal jayega
        for(uint _i=0; _i<10; _i++){

        }
        _;
    }

    function fun1() public pure sameCode returns(string memory){

        // for(uint _i=0; _i<10; _i++){
        // }
        return "fun1 say hi ";
    }

    function fun2() public sameCode pure returns(uint _x){

        // for(uint _i=0; _i<10; _i++){
        // }
        
        // return 20;
        _x = 20;   //return x value
    }

    // function fun3() public pure returns(){   // Error because address is a dynamic type
    function fun3() public sameCode view returns(address){ 

        // for(uint _i=0; _i<10; _i++){
        // }
        return msg.sender;
    }
}


// Modifier is use reuse
// Modifier is a special type function

//1 smart contract ke andar ek hi constructor ho sakta hai
//1 smart contract ke andar kitne bhi Modifier ho sakte hai


//    three 3 stag
//1 st stag // sabse pahle modifier ko run karega
//2 nd stag // _;   -->   use function me bapas chala ja jis function ke signature me add hai
//3 rd stag //function end ke bad    _;   ke pass chala jata check karne ke liye ki kujh or to code nahi hai



// modifier sameCode(){
//         for(uint _i=0; _i<10; _i++){         //
//                                              //
//         }                                    //  1st step    
//         _;           // go back to function
//         // Code                              // 3rd step
//     }



//     function fun1() public pure sameCode returns(string memory){
//
//         // for(uint _i=0; _i<10; _i++){      // 2nd step
//         // }                                 // whole function run
//         return "fun1 say hi ";               //
//     }                                        //