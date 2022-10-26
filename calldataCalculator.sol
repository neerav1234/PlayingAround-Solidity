// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract CallDataCalculator {
    bytes4 ans;

    function calc() public {
        ans = bytes4(keccak256("pwn()"));
    }
    function seeAns() public view returns (bytes4) {
        return ans;
    }
 
}