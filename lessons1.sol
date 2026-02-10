// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

contract Lessons1 {
    mapping(string => uint8) public stringCounter;

    function setString(string calldata str) external {
        stringCounter[str]++;
    }

    function getStringCount(string calldata str) external view returns (uint8) {
        return stringCounter[str];
    }
}
