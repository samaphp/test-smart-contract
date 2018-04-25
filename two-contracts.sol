pragma solidity ^0.4.17;

/**
 * @file
 * This file is to show how to use a contract in another contract.
 */

contract Sample1 {
    uint temp;

    constructor() public {
        temp = 12;
    }

    function get() public view returns (uint value) {
        return temp;
    }
}

contract Sample2 {
    Sample1 con;

    constructor() public {
        con = new Sample1();
    }

    function getValue() public view returns (uint value) {
        return con.get();
    }
}