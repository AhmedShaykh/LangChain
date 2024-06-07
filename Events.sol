// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

// import "./ImpLibrary.sol"; // Import Contract

contract Contract { // Creating Contract From A Contract

    function callMyName() public pure returns(string memory) {
        return "Ahmed Shaikh";
    }

}

contract Events {

    // Events Save In Transactions Log In BlockChain & Indexed Filter Data In GET To Front-End

    event MessageUpdated(address indexed _user, string _message); // Is Cheap Of Storage

    // Events Is Only GET In Front-End (Not Direct GET On Contract Like Variables)

    function updatedMessage(string memory _message) public {
        emit MessageUpdated(msg.sender, _message);
    }

    // Every Logic Successfully Run In Event Then Emit Send The Message

    event balance(address indexed _from, address indexed _to, string _message);

    function transferAmount(address _to, string memory _message) public {
        emit balance(msg.sender, _to, _message);
    }

    // Only Three Indexed Parameters Put In Event Method

    event depositMessage(string _message);

    function deposit() external payable {
        emit depositMessage("Deposit Successful");
    }

    Contract public newContract; // Creating Contract From A Contract

    function deployContract() public {
        newContract = new Contract();
    }

    function sayMyName() public view returns(string memory) {
        return newContract.callMyName();
    }

}