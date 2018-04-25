pragma solidity ^0.4.17;

contract hello {
  // State variable.
  uint temp;
  // Person who will deploy the smart contract he will be the owner of this smart contract.
  address owner;

  // Defining event when data has changed.
  event dataChange(address changedBy, uint oldValue, uint newValue);

  // Defining a modifier to check the owner.
  modifier checkOwner() {
    if(owner == msg.sender) {
      _;
    }
  }

  // Since defining constructors as functions with the same name as the contract is deprecated.
  // We will use sayHello().
  function sayHello() public {
    // msg is a global variable provided by the Solidity.
    owner = msg.sender;
  }

  // We will pass a variable from outside.
  function setValue(uint tempInput) public checkOwner {
    temp = tempInput;
  }

  // We will get the temp value.
  function getValue() public view returns (uint tempStored) {
    return temp;
  }

  // If we want to change owner, simply we can define a new function for that.
  function changeOwner(address newOwner) public checkOwner {
    owner = newOwner;
  }
}
