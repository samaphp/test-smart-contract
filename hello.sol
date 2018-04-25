pragma solidity ^0.4.17;

contract hello {
  // State variable.
  uint temp;
  // Person who will deploy the smart contract he will be the owner of this smart contract.
  address owner;

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
    // Making sure the owner is the same sender before setting the value.
    if(owner == msg.sender) {
      temp = tempInput;
    }
  }

  // We will get the temp value.
  function getValue() public view returns (uint tempStored) {
    return temp;
  }

  // If we want to change owner, simply we can define a new function for that.
  function changeOwner(address newOwner) public {
      if(owner == msg.sender) {
          owner = newOwner;
      }
  }
}
