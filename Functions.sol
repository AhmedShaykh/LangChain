// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Functions {

    // =============== Function State Mutability =============== //

    function myFunc() public pure returns(uint16) {
        return 786; // Value Only Create With In Function Is Pure Function
    }

    uint16 val = 456;

    function myFunc2() public view returns (uint16) {
        return val; // Value Is Only GET (Read) In View Function
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
        return value + value2; // Call With In Contract Every Function & Inherited Contract Function & Externally
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

    function myFuncExternal(uint256 value, uint256 value2) external pure returns (uint256) { // Function Only Call Externally (Direct Own Function Access)
        return value + value2; // Not With In Contract Any Function & Not Inherited Contract Function Access But Direct Access Inherited Contract Like Public
    }

}

contract FunctionVisible is Functions { // Inherited

    function callFuncPublic() public pure returns (uint256) {
        return myFuncPublic(45, 55);
    }

    function callFuncInternal() public pure returns (uint256) {
        return myFuncInternal(45, 55);
    }

    // =============== Function Data Location =============== //

    string[] public student = ["Ahmed", "Usman", "Yaseen"]; // String & Array Are Default Stored In Storage

    function memo() public view {
        string[] memory s1 = student; // Memory Create New Copy Of Value & Value Save Only In Function
        s1[1] = "Abdullah"; // String Memory Method Use In Local Variables
    }

    function store() public {
        string[] storage s1 = student; // Storage Value Save In Direct State Value & It Access Directly
        s1[1] = "Majid"; // String Storage Method Use In State Variables
    }

    function getName(string memory _name) public pure returns(string memory) {
        _name = "Ahmed Shaikh"; // If Argument Value Is Change Use Memory Method
        return _name;
    }

    function getData(string calldata _data) public pure returns(string calldata) {
        return _data; // In CallData Initial Value Is Not Change
    }

    function getResponse(string calldata _data) public pure returns(string calldata) {
        string calldata NewData = _data; // CallData Value Stored In Variable But Can't Change Value
        return NewData;
    }

    // If Argument Use Only In Function & Do Not Change Value Its Use To CallData Method

}