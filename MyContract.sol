// SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.24;

contract MyContract {

    // =============== Data Types =============== //
    string greet = "My First Contract"; // By Default Variable Visibility Is Private
    uint public num = 456; // Unsigned Integer Value Always Positive
    int public num2 = -456; // But Integer Value Are Both
    bool internal isNumber = true; // With In This Contract & Inherited Contract Access This Variable
    address owner = 0xb3590E61A1BB15F342d8148d2870d894c4C1FBCF;
    
}