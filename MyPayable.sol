// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MyPay {

    // =============== Payable Function Use For Transfer, Call & Receive Ether =============== //

    uint valueWei = 1 wei; // 1000000000000000000

    uint valueGwei = 1 gwei; // 1000000000

    uint valueEther = 1 ether; // 1

    function getBalance(address _address) public view returns(uint256) {
        return _address.balance; // Get Given Wallet Balance
    }

    function getYourBalance() public view returns(uint256) {
        return msg.sender.balance; // Get My Current Wallet Balance
    }

    function transferMoney(address payable _toAddress) payable public {
        _toAddress.transfer(msg.value); // This Method Direct Fetch Amount Value
    }

    // No Need Amount Value Pass In Parameter

}