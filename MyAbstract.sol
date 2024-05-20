// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

abstract contract MyAbstract {

    // Abstract Contract Not Direct Deploy Only Deploy In Inherit Contract

    uint public num;

    constructor() {
        num = 1;
    }

    // Constructor & State Variables Are Declare In Abstract Contract

    function call() public view virtual returns(uint); // Not Implement

    // Not Implement Functions Must Be Virtual

    function UpdateNum(uint _num) public { // Implement
        num = _num;
    }

    // Declare Functions Implement & Not Implement (Both) In Abstract Contract

}

contract MyMainContract is MyAbstract {

    function call() public view override returns(uint) {
        return num;
    }

    // The Not Implement Function Implement In Inherit Contract

}