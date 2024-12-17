// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {IBTToken} from "../src/IBTToken.sol";

contract DeployIBTToken is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the IBTToken contract
        IBTToken ibtToken = new IBTToken();

        // Prevent unused variable warning
        ibtToken;

        vm.stopBroadcast();
    }
}
