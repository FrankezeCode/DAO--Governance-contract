// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import {TimelockController}  from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    
    /**
     * 
     * @param minDelay This is how long you have to wait before executing
     * @param proposers This is the list of addresses that can propose
     * @param executors This is the list of  addresses that can execute
     */
    constructor(uint256 minDelay , address[] memory proposers, address[] memory executors)  TimelockController(minDelay,proposers,executors, msg.sender )
    {}
}