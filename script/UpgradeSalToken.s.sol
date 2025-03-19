// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "forge-std/Script.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";

contract UpgradeSalToken is Script {
    function run() external {
        // address proxy = vm.envAddress("PROXY_ADDRESS");
        address newImp = vm.envAddress("NEW_IMP");

        vm.startBroadcast();

        // Generate the raw transaction
        bytes memory data = abi.encodeWithSignature("upgradeTo(address)", newImp);

        console.log("Raw TX Data (Hex):", vm.toString(data));

        vm.stopBroadcast();
    }
}
