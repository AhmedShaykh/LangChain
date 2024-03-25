// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyMapping {

    mapping(address => string) public userAddress; // Mapping Is Default Stored In Storage

    function addUser(address _yourAddress, string memory _yourName) public {
        userAddress[_yourAddress] = _yourName;
    }

    // Array Is Sequential Order (Index) & Mapping Is Non-Sequential Order Direct Access To Particular Value

    struct Student { // Mapping In Struct
        uint class;
        string name;
    }

    mapping(uint => Student) public data;

    function setter(uint _roll, uint _class, string memory _name) public {
        data[_roll] = Student(_class, _name);
    }

    // Key Cannot Create Mapping, Dynamic Arrays, Enum & Struct Types

    // =============== Global Variables =============== //

}