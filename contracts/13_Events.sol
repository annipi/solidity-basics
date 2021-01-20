// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract EventExample {
  event Supplied(address from, uint amount);

  function supply(uint amount) public {
    emit Supplied(msg.sender, amount);
  }
}
