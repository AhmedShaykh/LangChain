// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

interface IInterface {

    // Interface Is A Blueprint Of Contract & It Declared Functions Not Implement

    function addNum(uint _num) external; // Declared Functions Type Must Be External

    function getNum() external view returns(uint);

    // Constructor & State Variables Not Declare In Interface

}

interface ICounter { // Interface Inherit In Other Interface

    function count() external view returns (uint256); // State Variable As A Function Declared

    function increment() external; // Default Virtual

}

contract Counter is ICounter {

    uint256 public count; // State Variable

    function increment() external override {
        count += 1;
    }

}

contract Interface is IInterface {

    uint private number;

    function addNum(uint _num) public override {
        number = _num;
    }

    function getNum() public view override returns(uint) {
        return number;
    }

    function incrementCounter(address _counter) external {
        ICounter(_counter).increment(); // Easy Way Call Any Contract On BlockChain
    }

    // Put Contract Address With Use In Interface

    function getCount(address _counter) external view returns (uint256) {
        return ICounter(_counter).count();
    }

}