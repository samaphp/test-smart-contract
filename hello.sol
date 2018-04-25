pragma solidity ^0.4.17;

contract hello {
  // State variable.
  uint temp;
  // Person who will deploy the smart contract he will be the owner of this smart contract.
  address owner;

  // Since defining constructors as functions with the same name as the contract is deprecated.
  // We will use sayHello().
  function sayHello() public {
    // msg is a global variable provided by the Solidity.
    owner = msg.sender;
  }
}
