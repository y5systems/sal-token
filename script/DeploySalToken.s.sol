// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "forge-std/Script.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";
import {SalToken} from "../src/SalToken.sol";

contract DeploySalToken is Script {
    function run() external {
        address defaultAdmin = vm.envAddress("DEFAULT_ADMIN");
        address upgrader = vm.envAddress("UPGRADER");
        address recipient = vm.envAddress("RECIPIENT");
        address minter = vm.envAddress("MINTER");

        vm.startBroadcast();

        address proxy = Upgrades.deployUUPSProxy(
            "out/SalToken.sol/SalToken.json",
            abi.encodeCall(SalToken.initialize, (recipient, defaultAdmin, minter, upgrader))
        );

        console.log("SalToken UUPS Proxy deployed at:", proxy);

        vm.stopBroadcast();
    }
}
