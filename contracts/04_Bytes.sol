// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Bytes {
  uint number = 31;
  string text = 'Hola mundo';

// 0x0000000000000000000000000000000000000000000000000000000001020304
//num => bytes32(0x01020304);  variables se rellenan hacia la derecha

// 0x486f6c61206d756e646f00000000000000000000000000000000000000000000
//str => = bytes32("Hola mundo"); variables se rellenan hacia la derecha

  function numberToBytes32() view external returns(bytes32) {
    return bytes32(number);
  }

  function stringToBytes32() view external returns(bytes memory) {
    return bytes(text);
  }

  function getDescription() pure external returns(bytes memory) {
    bytes memory description = new bytes(4); // bytes1 []
    description[0] = 0x1f;
    description[1] = 0x5f;
    description[2] = 0x48;
    description[3] = 0x48;
    return description;
  }
}
