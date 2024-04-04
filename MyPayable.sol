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

    // =============== Constant, Immutable & Constructor =============== //

    address public constant myAdd = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; // Constant Value Never Update

    function getConstant() public pure returns(address) {
        return myAdd; // Constant Value Get In Function But Not Update
    }

    // Constant Are Not Apply In Arrays, Mappings & Struct Types

    address immutable public owner;

    address public ownerShip;

    constructor() {
        owner = msg.sender;
        ownerShip = msg.sender;
    }

    function transferOwnerShip(address _address) public {
        ownerShip = _address;
    }

}