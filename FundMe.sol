// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FundMe {
    mapping (address => uint256) public fundersToAmount;
    // 收款函数
    function fund() external payable {
        fundersToAmount[msg.sender] = fundersToAmount[msg.sender] + msg.value;
    }
}