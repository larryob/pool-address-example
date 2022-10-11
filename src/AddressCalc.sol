// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {PoolAddress} from "@uniswap/v3-periphery/contracts/libraries/PoolAddress.sol";

contract AddressCalc {
    address public constant factory = 0x1F98431c8aD98523631AE4a59f267346ea31F984;

    function computeAddress(address tokenA, address tokenB, uint24 fee) external pure returns (address pool) {
        pool = PoolAddress.computeAddress(factory, PoolAddress.getPoolKey(tokenA, tokenB, fee));
    }
}
