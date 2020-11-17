// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract ArraysCrud {
  // storage arrays
  uint[] prices;

  // storage esta en la cadena de bloques y es la memoria qeu persiste una vez se despliegue un contrato
  function storageArray() public {
    // create
    prices.push(2);
    prices.push(3);

    // read
    prices[0];

    // update
    prices[0] = 1;

    // delete
    delete prices[0]; // Removes it's value and left the default value

    // get value
    for(uint i = 0; i < prices.length; i++) {
      prices[i];
    }
  }

  // memory arrays
  // Esta memomery es la memoria que solo existe durante la ejecución de una funcion y despues se destruye
  function memoryArrays() pure public returns(uint[] memory) {
    uint[] memory elements = new uint[](2);

    // create
    elements[0] = 4;
    elements[1] = 5;

    // read
    elements[0];

    // update
    elements[0] = 1;

    // delete
    delete elements[0]; // Removes it's value and left the default value

    // get value
    for(uint i = 0; i < elements.length; i++) {
      elements[i];
    }
    return elements;
  }

  // get arrays
  function getPrices() view public returns(uint[] memory) {
    return prices;
  }
}
