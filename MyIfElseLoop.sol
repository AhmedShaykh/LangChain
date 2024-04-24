// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyIfElse {

    function checkValue(int256 val) public pure returns (string memory) {

        string memory value;

        if (val > 0) {
            value = "Value Is Greater Than Zero";
        } else if (val == 0) {
            value = "Value Is Equal To Zero";
        } else {
            value = "Value Is Less Than Zero";
        }

        return value;

    }

}

contract MyLoops {

    uint256[3] public arr;

    uint256 public count;

    // =============== While Loop =============== //

    function whileLoop() public {
        while (count < arr.length) {
            arr[count] = count;
            count++;
        }
    }

    // =============== For Loop =============== //

    function forLoop() public {
        for(uint i = count; i < arr.length; i++) {
            arr[count] = count;
            count++;
        }
    }

    // =============== While Loop =============== //

    function doWhileLoop() public {
        do {
            arr[count] = count;
            count++;
        }
        while(count < arr.length);
    }

}