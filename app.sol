// SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.24;

contract HelloWorld {

    // =============== Data Types =============== //
    string public greet = "Hello World!"; // By Default Varaible Is Private
    uint public num = 456; // Unsigned Integer Not Support Negative Value
    int public num2 = -456; // But Integer Support Both Values
    bool internal  isNumber = true;
    address myAccount = 0xb3590E61A1BB15F342d8148d2870d894c4C1FBCF;
    
}