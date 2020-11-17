// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract OtherVariables {
  uint constant constante = 0;
  uint immutable inmutable;

  constructor(uint _inmutable) {
    inmutable = _inmutable;
  }

  // tx
  function getTxOriginA() view public returns(address) {
    return tx.origin;
  }

  // msg
  function getMsgValueA() payable public returns(uint) {
    return msg.value;
  }

  function getMsgSenderA() view public returns(address) {
    return msg.sender; // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
  }

  // block
  function getBlockTimeStamp() view public returns(uint) {
    return block.timestamp; // timestamp en el que fué minado el bloque
  }
}
