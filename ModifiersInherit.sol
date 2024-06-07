// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Modifiers {

    address private owner;

    uint256 public priceOfCoin = 1 ether;

    bool public isDiscount = false;

    bool public isPause = false;

    uint256 public number;

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

    function getName() public pure virtual returns(string memory) { // Inheritance
        return "Ahmed Saleem Shaikh";
    }

}

contract Inherited is Modifiers {

    constructor(uint256 _diffNum) Modifiers(_diffNum) {

        // In Parent Contract Constructor Pass In Parameters So Inherited Contract Must Be Constructor Again Pass In Parameters

        priceOfCoin = 2 ether;

        // In Inherited Contract Variable OverRide Only In Constructor

    }

    function getName() public pure override returns(string memory) {
        return "Ahmed";
    }

    function callGetName() public pure returns(string memory) {
        return getName();
    }

    function callOriginalGetName() public pure returns(string memory) {
        return super.getName();
    }

    // Super Method GET Parent Contract Function

}