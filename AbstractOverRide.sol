// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

abstract contract AbstractContract {

    // Abstract Contract Not Direct Deploy Only Deploy In Inherit Contract

    uint internal num;

    constructor() {
        num = 1;
    }

    // Constructor & State Variables Are Declare In Abstract Contract

    function call() public view virtual returns(uint);

    // Not Implemented Function Must Be Use Virtual Keyword

    function UpdateNum(uint _num) public { // Implement
        num = _num;
    }

    // Functions Are Implement & Not Implement (Both) In Abstract Contract

}

contract Virtual {

    function getNumber() public pure virtual returns(uint) { // Virtual Keyword Use In Parent Function
        return 786;
    }

}

contract MainContract is AbstractContract, Virtual {

    function call() public view override returns(uint) {
        return num;
    }

    // =============== Virtual & OverRide =============== //

    function getNumber() public pure override returns(uint) { // OverRide Keyword Use In Child Function
        return 465;
    }

    function callGetNum() public pure returns(uint) {
        return getNumber(); // Return Contract Function
    }

    function callOriginalGetNum() public pure returns(uint) {
        return super.getNumber(); // Return Parent Contract Function
    }

}