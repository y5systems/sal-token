// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "forge-std/Script.sol";
import {SalToken} from "../src/SalToken.sol";

contract DeployNewImp is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the new implementation contract
        SalToken newImp = new SalToken(0x26fdE4B9C41F9A233c368ea589060b05071c2Da7);
        
        console.log("New implementation deployed at:", address(newImp));
        
    }
}