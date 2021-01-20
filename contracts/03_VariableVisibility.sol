// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract VariableVisibility {
  uint internal age;

  function getAge() view external returns (uint) {
    return age;
  }

  function setAge(uint _age) external {
    age = _age;
  }
}

contract MyContract is VariableVisibility {
  function getOlder() view external returns (uint) {
    return age + 1;
  }
}
