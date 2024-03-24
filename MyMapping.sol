// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyMapping {

    mapping(address => string) public userAddress;

    function addUser(address yourAddress, string memory yourName) public {
        userAddress[yourAddress] = yourName;
    }

}