pragma solidity ^0.8.0;

contract fixedSizeArray{

//**********************************************************************************************************/

    // uint[5] public arr = [10,20,30,40,50];

    // function array() pubilc returns(uint){

    //     // get
    //     uint temp;
    //     temp = arr[3];

    //     // update
    //     arr[2] = 432;

    //     // delete
    //     delete arr[4];

    //     // length
    //     uint len = arr.length;
    //     return len;
    // }






//**********************************************************************************************************/

    // uint[5] public arr;

    // function arrayWithLoop(uint _x) public{
    //     for (uint i = 0; i < arr.length; i++) {
    //         arr[i] = _x+i;
    //     }
    // }


//**********************************************************************************************************/

    // function createArray() public pure returns(uint){
    //     uint[] memory arrMem = new uint[](3);

    //     arrrMem[1]=33;

    //     return arrMem[1];
    // }


//**********************************************************************************************************/

    uint[5] arr;    // not public 

    constructor(){
        arr = [10,20,30,40,50];
    }

    function returnArray() public view returns(uint[5] memory){
        return arr;
    }
}

// value type            int, uint
// references type       string, array

// memory ke andar fixed size array hi bana sakte hai dynamic nahi