// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyContract {

    uint256 public myRollNum = 4;

    function myBirthDay() public pure returns(uint256) {
        return 27;
    }

}

contract MyImport {

    MyContract public exampleContract = MyContract(0x5FD6eB55D12E759a21C09eF703fe0CBa1DC9d88D);

    function getContractData() public view returns(uint256, uint256) {
        return (exampleContract.myRollNum(), exampleContract.myBirthDay());
    }

}