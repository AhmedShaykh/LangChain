// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyEventsInt {

    // =============== Events =============== //

    string public message = "Ramadan Mubarak";

    event MessageUpdated(address indexed _user, string _message);

    // Event Variables Is Not Directly Access & Only Value Put In Emit On The Function

    function updatedMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, _message);
    }

    event balance(address indexed _from, address indexed _to, string mess);

    function transferAmount(address payable _to, string memory mess) public {
        emit balance(msg.sender, _to, mess);
    }

    // Only Three Indexed Parameters Put In Event Variables

}