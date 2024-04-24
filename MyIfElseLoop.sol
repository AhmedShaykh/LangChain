// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyIfElse {

    function checkValue(int256 val) public pure returns (string memory) {

        string memory value;

        if (val > 0) {
            value = "Value Is Greater Than Zero";
        } 
        else if (val == 0) {
            value = "Value Is Equal To Zero";
        } 
        else {
            value = "Value Is Less Than Zero";
        }

        return value;

    }

}