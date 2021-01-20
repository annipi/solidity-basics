// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract VariableTypes {
  // Tamaño fijo
  bool flag; // true, false
  uint a; // 1, 2, 3 ...
  address alice; // 0x1000000000000000000000000000000000000040
  address bob; // 0x1000000000000000000000000000000000000040
  bytes32 someString; // 0x1000000000000000000000000000000000000000000000000000000000000064

  // Tamaño variable
  string description;
  bytes descriptionOnHex; // byte1 array => new bytes(len)
  uint[] prices;
  mapping(uint => string) dniPeople; // dniPeople['123']  => Pepito

  // Definido por el usuario
  struct User {
    uint id;
    string username;
    mapping(string => uint) fiendNumbers;
  }
  enum State {
    CREATED,
    LOCKED,
    INACTIVE
  }
}
