// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract CryptographicFunctions {

  function callKeccak256() public pure returns(bytes32){
    return keccak256("Hola mundo");
  }

  // call external contracts
  function callSha256() public pure returns(bytes32){
    return sha256("Hola mundo");
  }
}
