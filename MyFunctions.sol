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

    function myFuncPublic(uint256 value, uint256 value2) public pure returns (uint256) { // Public Function Call Externally
        return value + value2; // Public Function Call Externally, With In Contract Every Function & Inherited Contract Function With Externally
    }

    function myFuncInternal(uint256 value, uint256 value2) internal pure returns (uint256) { // Internal
        return value + value2;
    }

    function myFuncInt() public pure returns (uint256) {
        // Internal Function Call With In Contract Function & Inherited Contract Function
        return myFuncInternal(10, 12);
    }

    function myFuncPrivate(uint256 value, uint256 value2) private pure returns (uint256) { // Private
        return value + value2;
    }

    function myFuncPrivate2() public pure returns (uint256) {
        // Private Function Only Call With In Contract
        return myFuncPrivate(23, 75);
    }

    function myFuncExternal(uint256 value, uint256 value2) external pure returns (uint256) { // External Function Only Call Externally (Direct Own Function Access)
        return value + value2; // Not With In Any Contract Function & Inherited Contract Function
    }

}

contract FunctionVisible is MyFunctions { // Inherited

    function callFuncPublic() public pure returns (uint256) {
        return myFuncPublic(45, 55);
    }

    function callFuncInternal() public pure returns (uint256) {
        return myFuncInternal(45, 55);
    }

    // =============== Function Data Location =============== //

    string[] public student = ["Ahmed", "Usman", "Bilal"]; // String & Array Are Default Stored In Storage

    function memo() public view {
        string[] memory s1 = student; // Memory Value Save In Create New Copy Value & Only Access With In Function
        s1[1] = "Abdullah"; // String Memory Method Use In Local Variables
    }

    function store() public {
        string[] storage s1 = student; // Storage Value Save In Direct State Value & It Access Directly
        s1[1] = "Yaseen"; // String Storage Method Use In State Variables
    }

    function getName(string memory _name) public pure returns(string memory) {
        _name = "Ahmed Shaikh"; // If Argument Change Value Use Memory Method
        return _name;
    }

    function getData(string calldata _data) public pure returns(string calldata) {
        return _data; // In CallData Initial Value Is Not Change
    }

    function getResponse(string calldata _data) public pure returns(string memory) {
        string memory NewData = _data; // CallData Stored Variable Only Use In Function Logic
        return NewData; // But Can't Change It
    }

    // If Argument Use Only In Function & Do Not Change Value Its Use To CallData Method

}