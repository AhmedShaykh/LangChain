// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

contract Variables {

    // =============== State & Local Variables =============== //

    uint public age; // State Variable Is Create In Contract & Its Value Is Permanent Stored
    
    // Default State Value Not Update Like Others Languages

    constructor() {
        age = 23; // Default State Value Is Update With Using Constructor & Function
    }

    function local() pure public returns(uint) {
        uint num = 24; // Local Variable Is Only Create In Function & Its Value Is Stored In Stack
        return num;
    }

    // Local Variable Is No Gas & State Variable Is Costly Gas Because Its Store Permanent In BlockChain

}

contract Logic {

    // =============== Ternary Operator =============== //

    function transac(bool x) public pure returns(string memory) {

        string memory message;

        message = x == false ? "Continue Transaction" : "Stop Transaction";
        return message;
    }

    // =============== Continue & Break =============== //

    function loop() public pure returns(uint) {

        uint count = 0;

        for(uint i = count; i < 10; i = i + 2) {

            if(i == 6) {
                break;
            }
            
            count++;
        }

        return count;

    }

}