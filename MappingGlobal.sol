// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Mapping {

    mapping(address => string) public userAddress; // Mapping Default Stored In Storage

    function addUser(address _yourAddress, string memory _yourName) public {
        userAddress[_yourAddress] = _yourName;
    }

    // Array Is Sequential Order (Index) & Mapping Is Non-Sequential Order (Direct Access To Particular Value)

    struct Student { // Mapping In Struct
        uint class;
        string name;
    }

    mapping(uint => Student) public data;

    function setter(uint _roll, uint _class, string memory _name) public {
        data[_roll] = Student(_class, _name);
    }

    // Address, UInt, Int, String & Bytes Types Key Give In Mapping
    
}

contract GlobalVariables {

    function myAddress() public view returns(address) {
        return msg.sender; // Return Current Selected Account Address
    }

    struct User {
        string name;
        uint number;
    }

    mapping(address => User) private userDetails;

    function register(string memory _name, uint _number) public {
        userDetails[msg.sender] = User(
            _name, 
            _number
        ); // No Need Address Put In Parameter
    }

    function getYourDetails() public view returns(User memory) {
        return userDetails[msg.sender]; // Global Variable Direct Fetch Account Address
    }

    function getUserBalance() public view returns(uint256) {
        return msg.sender.balance; // Get Balance
    }

    function myAddressBalance(address _address) public view returns(uint256) {
        return _address.balance; // Get Every Account Balance
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