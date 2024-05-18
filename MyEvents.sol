// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyEvents {

    // =============== Events =============== //

    string public message = "Ramadan Mubarak";

    event MessageUpdated(address indexed _user, string _message);

    // Event Variables Is Not Directly Access & Only Value Put In Emit On The Function

    function updatedMessage(string memory _message) public {
        message = _message;
        emit MessageUpdated(msg.sender, _message); // Message (Help To Get In Front-End)
    }

    // Every Logic Perform Successfully In Function Then Emit Send The Message

    event balance(address indexed _from, address indexed _to, string _message);

    function transferAmount(address payable _to, string memory _message) public {
        emit balance(msg.sender, _to, _message);
    }

    // Only Three Indexed Parameters Put In Event Variables

    event depositMessage(string _message);

    // event withdrawMessage(string _message);

    function deposit() external payable {
        emit depositMessage("Deposit Successful");
    }

    // function withdraw(uint _amount) external payable {
    //     _amount = _amount * 1 ether;
    //     payable(msg.sender).transfer(_amount);
    //     emit withdrawMessage("Withdraw Successful");
    // }

    // =============== Ternary Operator =============== //

    function boo(bool x) public pure returns(string memory) {
        string memory mess;
        mess = x == false ? "Continue Transaction" : "Stop Transaction";
        return mess;
    }

    // =============== Continue & Break =============== //

   function loop() public pure returns(uint) {
        uint count = 0;
        for(uint i = 0; i < 10; i = i + 2) {
            if(i == 6) {
                break;
            }
            count++;
        }
        return count;
    }
    
}