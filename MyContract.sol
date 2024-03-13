// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract MyContract {

    // =============== Data Types & Visibility =============== //

    string greet = "My First Contract"; // Default Variable Visibility Is Private
    uint256 public myUint = 456; // Unsigned Integer Value Always Positive
    int256 public myInt = -456; // But Integer Value Are Both
    bool internal isNumber = true; // With In This Contract & Inherited Contract Access This Variable
    address owner = 0xb3590E61A1BB15F342d8148d2870d894c4C1FBCF;

    // =============== Unsigned Integer & Integer Values Range =============== //

    uint myUintval = 10000; // Default Value Range 256 Set In Integer & Unsigned Integer
    int256 myIntval = -10000; // Values Range Assign Between (8 to 256) Memory Limit

    // =============== 2 ** Val = TotalVal - 1 => StoreVal =============== //

    uint8 myUintval2 = 255; // 2 ** 8 = 256 - 1 = 255 Value (Limit)
    uint16 myUintval3 = 65535; // Put Val To Total Value Should Less 1 Value Assign

    int8 myIntval2 = -128; // 2 ** 8 = 256/2 = 128 x -1 = 128 In -ve Value
    int8 myIntval3 = 127; // 2 ** 8 = 256/2 = 128 - 1 = 127 But +ve Value Should Less 1 Value

    // =============== Check Maximum & Minimum Values =============== //

    int public val = type(int256).max;
    int public val2 = type(int256).min;

    uint public val3 = type(uint256).max;
    uint public val4 = type(uint8).max - 5;

    // =============== Types Convert =============== //

    uint16 public myVal = 65535;
    uint8 public myVal2 = uint8(myVal);
    
}