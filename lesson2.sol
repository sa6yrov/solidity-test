// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

contract Owner {
    address public owner;
    bool public isPaused;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Access denied");
        _;
    }

    function setPaused(bool paused) external onlyOwner {
        isPaused = paused;
    }

    function getGreeting() external view returns (string) {
        require(!isPaused, "Contract is paused");
        return "Hello, World!";
    }
}