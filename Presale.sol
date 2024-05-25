// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PresaleContract {

    ERC20 token = ERC20(0xd9145CCE52D386f254917e481eB44e9943F39138); // ERC20 Address

    function getTokenSupply() public view returns(uint256) {
        return token.totalSupply();
    }

}