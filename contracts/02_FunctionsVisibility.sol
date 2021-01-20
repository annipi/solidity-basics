// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract FunctionsVisibility {

  uint c = 2;

  function sum(uint _a, uint _b) view public returns (uint) {
    return _a + _b + c;
  }

  function useSum() view public {
    sum(2, 3);
  }

}

contract MyContract is FunctionsVisibility {
  function useSumOutside() view public {
    sum(1, 2);
  }
}
