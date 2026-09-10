// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract CounterScript is Script {
    Counter public counter;
    IERC20 public erc20;

    function setUp() public {}

    function run() public {
        address tokenAdress_mock = vm.envAddress("IERC20_ADDRESS");
        vm.startBroadcast();
        erc20 = IERC20(tokenAdress_mock); 
        counter = new Counter(erc20, "Yield Vault OMFA", "yvOMFA");

        vm.stopBroadcast();
    }
}
