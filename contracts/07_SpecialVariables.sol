// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract OtherVariables {
  uint constant constante = 0;
  uint immutable inmutable = 2;

  //   constructor(uint _inmutable) {
  //     inmutable = _inmutable;
  //   }

  // tx
  function getTxOrigin() view public returns(address) {
    return tx.origin;
  }

  // msg
  function getMsgValue() payable public returns(uint) {
    return msg.value; // number of wei sent with the message
  }

  function getMsgSender() view public returns(address) {
    return msg.sender; // sender of the message (current call)
  }

  function getMsgData() payable public returns(bytes calldata) {
    return msg.data; // complete calldata
  }

  function getMsgSig() pure public returns(bytes4) {
    return msg.sig; // first four bytes of the calldata (i.e. function identifier)
  }

  // block
  function getBlockChainId() view public returns(uint) {
    return block.chainid; //  current chain id
  }

  function getBlockCoinbase() view public returns(address) {
    return block.coinbase; //  current block miner’s address
  }

  function getBlockDifficulty() view public returns(uint) {
    return block.difficulty; //  current block difficulty
  }

  function getBlockGasLimit() view public returns(uint) {
    return block.gaslimit; // current block gaslimit
  }

  function getBlockNumber() view public returns(uint) {
    return block.number; // current block number
  }

  function getBlockTimeStamp() view public returns(uint) {
    return block.timestamp; // current block timestamp as seconds since unix epoch
  }

  // functions
  function getBlockHash(uint blockNumber) view public returns(bytes32) {
    return blockhash(blockNumber); // hash of the given block - only works for 256 most recent, excluding current, blocks
  }

  function getgasLeft() view public returns(uint) {
    return gasleft(); // remaining gas
  }
}
