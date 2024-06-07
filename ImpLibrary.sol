// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Import { // No Required PUT Export Keyword

    uint256 public myRollNum = 4;

    function myBirthYear() public pure returns(uint256) {
        return 2000;
    }

}

library Library { // Library & Contract Are Not Similar

    // In Library Only Declare Functions Not State Variables
    
    function getFunc() public pure returns(uint) {
        return 100 * 5;
    }

}

// =============== Read Any Contract On BlockChain =============== //

contract ImportLibrary {

    Import public importContract = Import(0x0fC5025C764cE34df352757e82f7B5c4Df39A836); // Contract Address

    // Now You Read Any Contract On BlockChain 

    function getContractData() public view returns(uint256, uint256) {
        return (importContract.myRollNum(), importContract.myBirthYear());
    }

    function callLibFunc() public pure returns(uint) {
        return Library.getFunc(); // GET Function In Library
    }

    // Library Function Direct Call In Contract No Need Inherit

}