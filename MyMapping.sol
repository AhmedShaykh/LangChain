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

    function myAddress() public view returns(address) {
        return msg.sender; // Return Current Selected Account Address
    }

    struct User {
        string name;
        uint number;
    }

    mapping(address => User) public userDetails;

    function register(string memory _name, uint _number) public {
        userDetails[msg.sender] = User({
            name: _name, 
            number: _number
        }); // No Need Address Parameter Required
    }

    struct UserData {
        string name;
        uint number;
    }

    mapping(address => UserData) private userDetailsData;

    function myRegister(string memory _name, uint _number) public {
        userDetailsData[msg.sender] = UserData(_name, _number);
    }

    function getYourDetails() public view returns(UserData memory) {
        return userDetailsData[msg.sender]; // Global Variable Direct Fetch Account Address
    }

    function getUserBalance() public view returns(uint256) {
        return msg.sender.balance; // Get Balance
    }

    function myBalance() public view returns(uint256) {
        address myAddressBal = 0xb3590E61A1BB15F342d8148d2870d894c4C1FBCF;
        return myAddressBal.balance; // Get My Metamask Balance
    }

    function myAddressBalance(address _address) public view returns(uint256) {
        return _address.balance;
    }

    function globalVar() public view returns(uint, uint, address, uint) {
        return(
            block.number, 
            block.timestamp, 
            msg.sender,
            block.chainid
        );
    }
    
}