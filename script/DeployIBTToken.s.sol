// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {IBTToken} from "../src/IBTToken.sol";

contract DeployIBTToken is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the IBTToken contract
        IBTToken ibtToken = new IBTToken();

        console.log("IBTToken contract deployed at:", address(ibtToken));

        vm.stopBroadcast();
    }
}
