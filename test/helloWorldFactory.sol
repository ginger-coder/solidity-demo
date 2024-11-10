// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { MyContract } from './test.sol';

contract HelloWorldFactory {

    MyContract hw;

    MyContract[] hws;

    function createHelloWorld() public {
        hw = new MyContract();
        hws.push(hw);
    }

    function getHelloWorldByIndex(uint256 _index) public view returns (MyContract) {
        return hws[_index];
    }

}