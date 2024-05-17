// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IInterface {

    function addNum(uint _num) external;

    function getNum() external view returns(uint);

}

interface ICounter {

    function count() external view returns (uint256);

    function increment() external;

}

contract Counter {

    uint256 public count;

    function increment() external {
        count += 1;
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

    function getCount(address _counter) external view returns (uint256) {
        return ICounter(_counter).count();
    }

}