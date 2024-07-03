pragma solidity ^0.8.22;
import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";

import {Counter} from "../src/Counter.sol";

contract DebugRemote is Script {

    address private deployedCounterAddress = vm.envOr("ADDR", address(0));

    function run() public {
        require(deployedCounterAddress != address(0), "ADDR env var missing");
        Counter(deployedCounterAddress).setNumber(1234);
    }
}