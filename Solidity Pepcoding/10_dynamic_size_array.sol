pragma solidity ^0.8.0;

contract dynamicSizeArray{

    uint[] public arr = [10,299,3432,434,34,34,1];


//*************************************************** */

    function returnArray() public view returns(uint[] memory){
        return arr;
    }


//*************************************************** */
    // function fun() public {
    //     // get
    //     uint temp = arr[3];

    //     // update
    //     arr[4] = 222;

    //     // delete
    //     delete arr[1];

    //     // len
    //     uint len = arr.length;

    //     // push
    //     arr.push(111);

    //     // pop
    //     arr.pop();
    // }
}