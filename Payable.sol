// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Payable {

    // =============== Payable Function Use For Transfer, Call & Receive Ether =============== //

    uint valueWei = 1 wei; // 1000000000000000000 (Units)

    uint valueGwei = 1 gwei; // 1000000000

    uint valueEther = 1 ether; // 1

    function getBalance(address _address) public view returns(uint256) {
        return _address.balance; // Get Every Account Balance
    }

    function getOwnBalance() public view returns(uint256) {
        return msg.sender.balance; // Get Owner Account Balance
    }

    function transferMoney(address payable _toAddress) payable public {
        _toAddress.transfer(msg.value); // This Method Direct Send Given Amount Value
    }

    // No Need To Give Amount Value Pass In Parameter In Function

}

contract EthSendContract { // Transfer Ethers To Contract

    constructor() payable {} // Constructor Require Ethers To Contract Deploy

    function getBalanceOfContract() public view returns(uint) {
        return address(this).balance; // Get Contract Balance
    }

    function getContractAddress() public view returns(address) {
        return address(this); // Get Contract Address
    }

}