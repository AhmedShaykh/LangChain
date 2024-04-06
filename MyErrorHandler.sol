// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyErrorHandler {

    // =============== Revert Method =============== //

    address public ownerShip;

    address public owner;

    uint public count;  

    constructor() {
        ownerShip = msg.sender;
        owner = msg.sender;
    }

    function transferOwnerShip(address _address) public {
        if(msg.sender == ownerShip) {
            ownerShip = _address;
        } 
        else {
            revert("Only Owner Transfer To OwnerShip"); // The Logic Is Not Same Then Given Value Is Revert (Return To Previous Value)
        }
    }

    // The Gas Fee is Negligible In Revert (Function Is Not Work Or Logic Is Not Update)

    // =============== Require Method =============== //

    function sendOwnerShip(address _address) public {
        count++;
        require(msg.sender == owner, "Invalid Owner"); // The Value Is Not Correct Will Revert The Logic Automatically 
        owner = _address;
    }

    // Require Check Value Is Correct Implement To Next Logic Otherwise Value Is Reverted (No Need Given Revert In Method)

}