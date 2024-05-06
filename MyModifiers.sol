// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyModifiers {

    address private owner;

    uint256 public priceOfCoin = 1 ether;

    bool public isDiscount = false;

    bool public isPause = false;

    uint256 internal number;

    constructor(uint256 _num) {
        owner = msg.sender;
        number = _num;
    }

    modifier isOwner() {
        require(msg.sender == owner, "You Are Not Owner"); // Logic
        _; // Before Or After Logic Continue
    }

    modifier isContractPause() {
        require(isPause == false);
        _;
    }

    function pauseContract() public {
        isPause = true;
    }

    function resumeContract() public {
        isPause = false;
    }

    function transferOwnerShip(address _address) isOwner() public {
        owner = _address;
    }

    function changePriceOfCoin(uint256 newPrice) isOwner() isContractPause() public {
        priceOfCoin = newPrice;
    }

    // Add Multiples Modifiers In Function

    function updateDiscount(bool value) isOwner() public {
        isDiscount = value;
    }

    function myNumber() public view returns(uint256) {
        return number;
    }

}

// =============== Inheritance =============== //

contract MyInherited is MyModifiers {

    string private ownerName = "Ahmed";

    constructor(uint256 _diffNum) MyModifiers(_diffNum) {}

    function setOwnerName(string memory _name) isOwner() public {
        ownerName = _name;
    }

    function getOwnerName() public view returns(string memory) {
        return ownerName;
    }

}