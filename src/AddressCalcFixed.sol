// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {PoolAddressFixed} from "./PoolAddressFixed.sol";

contract AddressCalcFixed {
    address public constant factory = 0x1F98431c8aD98523631AE4a59f267346ea31F984;

    function computeAddress(address tokenA, address tokenB, uint24 fee) external pure returns (address pool) {
        pool = PoolAddressFixed.computeAddress(factory, PoolAddressFixed.getPoolKey(tokenA, tokenB, fee));
    }
}
