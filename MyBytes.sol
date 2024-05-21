// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyBytes {

    // =============== Bytes Array =============== //

    // 1 Bytes = 8 Bits & 1 Hexadecimal Digits = 4 Bits

    bytes3 public b3; // 3 Bytes Array

    bytes2 public b2; // 2 Bytes Array

    bytes2 public bx; // Bytes Array Cannot Be Modified

    function setter() public { // ASCII Code (Character To Hexadecimal)
        b2 = "ab"; // a = 61 & b = 62 => 0x 61 21 (2 Bytes Array)
        b3 = "xyz"; // x = 78, y = 79 & z = 7A
        bx = "c"; // c = 62 => 0x 63 00 (Value Padding Of Zeros)
    }

    // Every Value Stored In Bytes Array Value Save In Hexadecimal Digits

    // =============== Bytes Dynamic Size Array =============== //

    bytes public bz = "abc"; // Dynamic Array

    function pushElement() public {
        bz.push("d");
    }

    function getElement(uint index) public view returns(bytes1) {
        return bz[index];
    }

    function getLength() public view returns(uint) {
        return bz.length;
    }

}

// =============== Cryptographic Hashing Functions =============== //

contract HashFunction {

    function generatePass(string memory _pass) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_pass));
    }

    bytes32 public password;

    function savePass(string memory _pass) public {
        password = keccak256(abi.encodePacked(_pass));
    }

    function sendMoney(string memory _pass) public view {
        require(keccak256(abi.encodePacked(_pass)) == password, 
            "Wrong Password"
        );
    }

    function getPass(string memory _pass, string memory _name) public pure returns(bytes32) {
        return keccak256(abi.encode(_pass, _name));
    }

}