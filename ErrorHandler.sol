// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract ErrorHandler {

    address public ownerShip;

    address public owner; 

    constructor() {
        ownerShip = msg.sender;
        owner = msg.sender;
    }

    function transferOwnerShip(address _address) public {
        if(msg.sender == ownerShip) {
            ownerShip = _address;
            owner = _address;
        } 
        else {
            revert("Only Owner Transfer To OwnerShip"); // Value Return To Previous Value
        }
    }

    // Gas Fee is Negligible In Revert (Function Is Not Work Or Logic Is Not Update)

    function sendOwnerShip(address _address) public {
        require(msg.sender == owner, "Invalid Owner");
        ownerShip = _address;
        owner = _address;
    }

    // Require Check If Value Is Correct Then Implement To Next Logic Otherwise Value Is Revert

}

contract Enum {

    enum user {
        allowed,
        notAllowed,
        hold
    }

    user public u1 = user.allowed;

    user public u2 = user.hold;

    uint public lottery = 1000;

    function lotteryOwner() public {
        if(u1 == user.allowed) {
            lottery = 0;
        } 
        else if(u1 != user.allowed) {
            lottery = 1000;
        }
    }

    function changelotteryOwner() public {
        u1 = user.notAllowed;
    }

}