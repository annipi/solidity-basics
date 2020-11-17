// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract A {
  function getValue(uint _value) pure external returns(uint) {
    return _value;
  }

  function getExternalFunction() view public returns(uint) {
    return this.getValue(2);
  }
}

contract B {
  address addressA;

  function setAddressA(address _addressA) public {
    addressA = _addressA;
  }

  function callAGetValue() view public returns(uint){
    A a = A(addressA);
    return a.getValue(3);
  }
}
