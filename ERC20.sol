// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ADXToken is ERC20 {

    constructor(uint256 initialSupply) ERC20("ACID X COIN", "ADX") {
        _mint(msg.sender, initialSupply);
    }

    function decimals() public pure override returns(uint8) {
        return 8;
    }

}