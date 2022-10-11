// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {AddressCalc} from "../src/AddressCalc.sol";
import {AddressCalcFixed} from "../src/AddressCalcFixed.sol";

contract AddressTest is Test {
    AddressCalc public calc;
    AddressCalcFixed public calcFixed;

    function setUp() public {
        calc = new AddressCalc();
        calcFixed = new AddressCalcFixed();
    }

    function testAddress() public {
        address addrBad = calc.computeAddress(
            0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270, 0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174, 500
        );
        assertTrue(addrBad != 0xA374094527e1673A86dE625aa59517c5dE346d32);

        address addrGood = calcFixed.computeAddress(
            0x0d500B1d8E8eF31E21C99d1Db9A6444d3ADf1270, 0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174, 500
        );
        assertTrue(addrGood == 0xA374094527e1673A86dE625aa59517c5dE346d32);
    }
}
