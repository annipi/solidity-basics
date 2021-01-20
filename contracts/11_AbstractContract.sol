// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// Contracts need to be marked as abstract when at least one of their functions is not implemented.
abstract contract Feline {
  function utterance() public pure virtual returns (bytes32);
}

// If a contract inherits from an abstract contract and does not implement all non-implemented
// functions by overriding, it needs to be marked as abstract as well.
contract Cat is Feline {
  function utterance() public pure override returns (bytes32) {
    return "miaow"; // web3.utils.hexToString('0x6d69616f77000000000000000000000000000000000000000000000000000000')
  }
}

// Interfaces are similar to abstract contracts, but they cannot have any functions implemented.
// There are further restrictions:
//They cannot inherit from other contracts, but they can inherit from other interfaces.
//All declared functions must be external.
//They cannot declare a constructor.
//They cannot declare state variables.
interface Token {
  enum TokenType { Fungible, NonFungible }
  struct Coin { string obverse; string reverse; }
  function transfer(address recipient, uint amount) external;
}
