// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// =============== Interface =============== //

// Interface Is A Blueprint Of Contract & It Declared Functions Not Implemented

interface IInterface {

    function addNum(uint _num) external; // Declared Functions Type Must Be External

    function getNum() external view returns(uint);

    // Constructor & State Variables Not Declare In Interface

}

interface ICounter { // Interface Inherited In Other Interface

    function count() external view returns (uint256); // State Variable Declared Is A Function

    function increment() external;

}

contract Counter {

    uint256 public count; // State Variable

    function increment() external {
        count += 1;
    }

}

// =============== Creating Contract From A Contract =============== //

contract MyContract {

    function callMyName() public pure returns(string memory) {
        return "Ahmed Shaikh";
    }

}

contract MyInterface is IInterface {

    uint private number;

    function addNum(uint _num) public {
        number = _num;
    }

    function getNum() public view returns(uint) {
        return number;
    }

    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    // Put Contract Address Which In Interface Implemented

    function getCount(address _counter) external view returns (uint256) {
        return ICounter(_counter).count();
    }

    MyContract public myNewContract; // Creating Contract From A Contract

    function deployContract() public {
        myNewContract = new MyContract();
    }

    function sayMyName() public view returns(string memory) {
        return myNewContract.callMyName();
    }

}