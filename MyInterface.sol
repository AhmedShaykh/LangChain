// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IInterface {

    function addNum(uint _num) external;

    function getNum() external view returns(uint);

}

contract MyInterface is IInterface {

    uint private number;

    function addNum(uint _num) public {
        number = _num;
    }

    function getNum() public view returns(uint) {
        return number;
    }

}