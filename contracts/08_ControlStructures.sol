// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ControlStructures {
  uint a = 5;
  uint b = 3;
  uint[] prices;
  uint public x = 0;

  function controlIf() view public returns(uint) {
    if(a >= b) { // && || > < == <= >= Solidity no entiende === operador js =value =type comparacion estricta
      return a;
    } else {
      return b;
    }
  }

  function controlFor() public {
    for(uint i = 0; i < 4; i++) {
      prices[i] = i + 1;
    }
  }

  function getPrices(uint _index) view public returns(uint) {
    return prices[_index];
  }

  function controlWhile() public {
    while(x < 4) {
      x = x + 1;
      // segunda compilada
      if( a == 2) continue;
      if( b == 3 ) break;
    }
  }
}
