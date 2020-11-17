// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract FunctionOverloadingModifiers {
  address owner;
  uint value;

  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner() { // Internal by default - modificardor de acceso muy común
    require(msg.sender == owner);// condición
    _; // placeholder o  marcador de posición que representa la función a la que estará atado el modificador
  }

  // un modificador también puede recibir argumentos entonces
  modifier myModifier(uint number) {
    require(number > 5);
    _;
  }

//  function sum(uint _a, uint _b) pure public returns(uint) {
//    return _a + _b;
//  }

  // Modifier 01
//  function sum(uint _a, uint _b) view public onlyOwner() returns(uint) {
//    return _a + _b;
//  }

  // Modifier 02
//  function sum(uint _a, uint _b) view public myModifier(3) returns(uint) {
//    return _a + _b;
//  }

  // Puedo aplicarle más de un modificador a una misma función y se ejecutaran en orden
  function sum(uint _a, uint _b) view public onlyOwner() myModifier(3) returns(uint) {
    return _a + _b;
  }

  function sum(uint _a, uint _b, uint _c) pure public returns(uint) {
    return _a + _b + _c;
  }

  function setValue(uint _value) public {
    value = _value;
  }
}
