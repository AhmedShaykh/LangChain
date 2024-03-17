// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyFunctions {
    // =============== Function State Mutability =============== //

    function myFunc() public pure returns (uint16) {
        return 786; // State Variable Is Not Access & Modification In Pure Function
    }

    uint16 val = 456; // State Variable

    function myFunc2() public view returns (uint16) {
        return val; // State Variable Is Only GET (Read) In View Function
    }

    function myFunc3() public pure returns (uint8) {
        return 4 + 46;
    }

    function myFunc4() public view returns (uint16) {
        return val + 44;
    }

    function myFunc5(uint8 value, uint8 value2) public pure returns (uint16) {
        return value + value2;
    }

    // =============== Function Visibility =============== //

    function myFuncPublic(uint value, uint value2) public pure returns (uint) {
        // Public Function Call Externally
        return value + value2; // // Public Function Call Externally, With In Contract Every Function & Inherited Contract Function With Externally
    }

    function myFuncInternal(
        uint value,
        uint value2
    ) internal pure returns (uint) {
        // Internal
        return value + value2;
    }

    function myFuncInt() public pure returns (uint) {
        // Internal Function Call With In Contract Function & Inherited Contract Function
        return myFuncInternal(10, 12);
    }

    function myFuncPrivate(
        uint value,
        uint value2
    ) private pure returns (uint) {
        // Private
        return value + value2;
    }

    function myFuncPrivate2() public pure returns (uint) {
        // Private Function Only Call With In Contract
        return myFuncPrivate(23, 75);
    }

    function myFuncExternal(
        uint value,
        uint value2
    ) external pure returns (uint) {
        // External Function Only Call Externally (Direct Own Function Access)
        return value + value2; // Not With In Any Contract Function & Inherited Contract Function
    }
}

contract FunctionVisible is MyFunctions {
    // Inherited
    function callFuncPublic() public pure returns (uint) {
        return myFuncPublic(45, 55);
    }

    function callFuncInternal() public pure returns (uint) {
        return myFuncInternal(45, 55);
    }
}
