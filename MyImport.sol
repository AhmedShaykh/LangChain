// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyContract {

    uint256 public myRollNum = 4;

    function myBirthYear() public pure returns(uint256) {
        return 2000;
    }

}

// =============== Read Any Contract On BlockChain =============== //

contract MyImport {

    MyContract public exampleContract = MyContract(0xd9145CCE52D386f254917e481eB44e9943F39138);

    // Put Contract Address Now You Read Any Contract On BlockChain 

    function getContractData() public view returns(uint256, uint256) {
        return (exampleContract.myRollNum(), exampleContract.myBirthYear());
    }

}