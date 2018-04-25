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
        // If the targeted contract is already deployed in the blockchain.
        // We have to use add operator.
        // That's mean we have to copy the address of that contract.
        // con = Sample1.at('THE_ADDRESS_OF_ALREADY_DEPLOYED_CONTRACT');
        con = new Sample1();
    }

    function getValue() public view returns (uint value) {
        return con.get();
    }
}