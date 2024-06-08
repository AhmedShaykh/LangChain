// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Functions {

    // =============== Function State Mutability =============== //

    function myFunc() public pure returns(uint16) {
        return 786; // Declare No State Variable Value
    }

    uint16 val = 456;

    function myFunc2() public view returns(uint16) {
        return val; // State Variable Value Change & Get (Read)
    }

    function myFunc3() public pure returns(uint8) {
        return 4 + 46;
    }

    function myFunc4() public view returns(uint16) {
        return val + 44;
    }

    function myFunc5(uint8 value, uint8 value2) public pure returns(uint16) {
        return value + value2;
    }

    // =============== Function Visibility =============== //

    function myFuncPublic(uint256 value, uint256 value2) public pure returns(uint256) { // Public Function Call Externally
        return value + value2; // Call With In Contract Every Function & Inherit Contract Function
    }

    function myFuncInternal(uint256 value, uint256 value2) internal pure returns(uint256) { // Internal
        return value + value2;
    }

    function myFuncInt() public pure returns(uint256) {
        // Internal Function Call With In Contract Function & Inherit Contract Function
        return myFuncInternal(10, 12);
    }

    function myFuncPrivate(uint256 value, uint256 value2) private pure returns(uint256) { // Private
        return value + value2;
    }

    function myFuncPrivate2() public pure returns(uint256) {
        // Private Function Only Call With In Contract
        return myFuncPrivate(23, 75);
    }

    function myFuncExternal(uint256 value, uint256 value2) external pure returns(uint256) { // Function Only Call Externally (Direct Own Function Access)
        return value + value2; // Not With In Contract Any Function & Not Inherit Contract Function Access But Direct Access Inherited Contract Like Public
    }

}

contract FunctionVisible is Functions { // Inherit

    function callFuncPublic() public pure returns(uint256) {
        return myFuncPublic(45, 55);
    }

    function callFuncInternal() public pure returns(uint256) {
        return myFuncInternal(45, 55);
    }

    // =============== Function Data Location =============== //

    string[] public student = ["Ahmed", "Usman", "Yaseen"]; // String Default Stored In Storage (BlockChain)

    function memo() public view {
        string[] memory s1 = student; // Memory Create New Copy Of Value & Value Save Only In Function
        s1[1] = "Abdullah"; // Memory Method Use In Local Variables
    }

    function store() public {
        string[] storage s1 = student; // Storage Value Save In Direct State Value & It Access Directly
        s1[1] = "Majid"; // Storage Method Use In State Variables
    }

    function getName(string memory _name) public pure returns(string memory) {
        _name = "Ahmed Shaikh"; // If Argument Value Is Change In Function Use Memory Method
        return _name;
    }

    function getData(string calldata _data) public pure returns(string calldata) {
        return _data; // In Call Data Method Initial Value Is Not Change
    }

    function getResponse(string calldata _data) public pure returns(string calldata) {
        string calldata NewData = _data; // Call Data Value Stored In Variable But Can't Change Value
        return NewData;
    }

    // If Argument Use Only In Function & Do Not Change Value Its Use To Call Data Method

}