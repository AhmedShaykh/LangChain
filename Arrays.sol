// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Arrays {

    // =============== Arrays =============== //

    uint8[] public myArrayVal = [255, 255];

    string[] public myArrayVal2 = ["Ahmed", "Shaikh"];

    string[3] myArrayVal3 = ["Ahmed", "Saleem", "Shaikh"]; // Give Array Size Fix

    string[4] public MyArray = myArrayVal3;

    int8[] public MyArray2 = [-128, 127, -72]; // Integer Array Compulsory 1 Value Should Be -ve & From The Start

    uint public lengthOfArrays = myArrayVal3.length;

    // =============== Dynamic Arrays =============== //

    uint[] public arr;

    function pushElement(uint item) public {
        arr.push(item);
    }

    function len() public view returns(uint) {
        return arr.length;
    }

    function popElement() public {
        arr.pop();
    }

}