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

    function callSayHelloWorldFromFactory(uint256 _index, uint _id) public view returns (string memory) {
        return hws[_index].sayHello(_id);
    }

    function callSetHelloWorldFromFactory(uint256 _index, string memory newStr, uint256 _id) public {
        hws[_index].setHello(newStr, _id);
    }

}