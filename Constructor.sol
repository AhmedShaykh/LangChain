// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Constructor {

    // =============== Constant, Immutable & Constructor =============== //

    address constant myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // Constant Value Never Update

    function getConstant() public pure returns(address) {
        return myAdd; // Constant Value Get In Function But Not Update
    }

    // Constant Are Not Apply In Functions, Arrays, Mappings & Struct Types

    address immutable owner; // Immutable Value Update Only In One Time

    address public ownerShip;

    address immutable setOwner;

    constructor(address _ownerAddress) {
        owner = msg.sender; // Immutable Value Only Update With In Constructor
        ownerShip = msg.sender;
        setOwner = _ownerAddress;
    }

    function getOwner() public view returns(address) {
        return owner;
    }

    function transferOwnerShip(address _address) public {
        if(msg.sender == setOwner) { // Set Owner To Transfer OwnerShip
            ownerShip = _address;
        }
    }

    function getSetOwner() public view returns(address) {
        return setOwner;
    }
    
}