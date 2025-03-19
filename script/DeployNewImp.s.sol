// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "forge-std/Script.sol";
import {SalToken} from "../src/SalToken.sol";

contract DeployNewImp is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the new implementation contract
        SalToken newImp = new SalToken();

        console.log("New implementation deployed at:", address(newImp));
    }
}
