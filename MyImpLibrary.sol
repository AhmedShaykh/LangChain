// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyImport {

    uint256 public myRollNum = 4;

    function myBirthYear() public pure returns(uint256) {
        return 2000;
    }

}

// =============== Library In Solidity =============== //

library MyLibrary { // Library & Contract Are Not Similar

    // In Library Only Create In Functions Not State Variables
    
    function getFunc() public pure returns(uint) {
        return 100 * 5;
    }

}

// =============== Read Any Contract On BlockChain =============== //

contract MyImportLibrary {

    MyImport public importContract = MyImport(0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99); // Address

    // Put Contract Address Now You Read Any Contract On BlockChain 

    function getContractData() public view returns(uint256, uint256) {
        return (importContract.myRollNum(), importContract.myBirthYear());
    }

    function callLibFunc() public pure returns(uint) {
        return MyLibrary.getFunc(); // Library Function
    }

    // Library Function Call In Contract Direct Call Function Not Inherited

}