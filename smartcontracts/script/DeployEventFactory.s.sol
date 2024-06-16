// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/EventFactory.sol";

contract DeployEventFactory is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the EventFactory contract
        EventFactory eventFactory = new EventFactory();

        // Optionally, you can log the address of the deployed contract
        console.log("EventFactory deployed at:", address(eventFactory));

        vm.stopBroadcast();
    }
}
