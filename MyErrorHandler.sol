// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyErrorHandler {

    // =============== Revert Method =============== //

    address public ownerShip;

    constructor() {
        ownerShip = msg.sender;
    }

    function transferOwnerShip(address _address) public {
        if(msg.sender == ownerShip) {
            ownerShip = _address;
        } else {
            revert("Only Owner Transfer To OwnerShip"); // The Logic Is Not Same Then Given Value Is Revert (Return To Previous Value)
        }
    }

    // The Gas Fee is Negligible In Revert (Function Is Not Work Or Logic Is Not Update)

}