// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyModifiers {

    address private owner;

    uint256 public priceOfCoin = 1 ether;

    bool public isDiscount = false;

    bool public isPause = false;

    constructor() {
        owner = msg.sender;
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

    function updateDiscount(bool value) isOwner() public {
        isDiscount = value;
    }

    // Add Multiples Modifiers In Function

}