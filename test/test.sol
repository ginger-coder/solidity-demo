// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyContract {
    string strVar = "Hello Word!!!";

    // 结构体
    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }

    Info[] infos;

    mapping(uint256 id => Info info) infoMapping;

    // view 只读
    function sayHello(uint256 _id) external view returns(string memory) {
        // return addinfo(strVar);
        // for (uint256 i = 0; i < infos.length; i++) 
        // {
        //     if(infos[i].id == _id) {
        //         return addinfo(infos[i].phrase);
        //     }
        // }

        if(infoMapping[_id].addr == address(0x0)) {
            return addinfo(strVar);
        } else {
            return addinfo(infoMapping[_id].phrase);
        }

    }

    function setHello(string memory newStr, uint256 _id) external {
        // strVar = newStr;
        // 临时变量 info 类 ts
        Info memory info = Info(newStr, _id, msg.sender);
        infoMapping[_id] = info;
        // infos.push(info);
    }

    // pure 纯计算
    function addinfo(string memory newStr) internal pure returns(string memory) {
        return string.concat(newStr, " from Ginger's contract!~");
    }

}