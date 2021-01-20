// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract StorageLocation {
  // 1. storage Memoria persistente en la cadena de bloques, es llave-valor,
  // esta disponible entre llamados y transacciones
  // Como escribe en la cadena de bloques es le más costoso, tanto para leer como para escribir
  // usarlo solo cuando sea realmente necesario
  // guarda datos de tamaño 256 bit - 32 bytes
  // si guardamos un byte8 igual deberá pagar por ocupar el espacio de los 32 bytes - 20.000 gwei
  // el cambio de un espacio que ya está ocupado - 5.000 gwei
  uint public a;
  uint value;

  function incrementA() public {
    a++;
  }

  struct User {
    uint id;
  }

  User[] users;

  // users[0].name // cuando son datos muy anidados esto no será muy accesible
  // entonces podemos definir un apuntador
  // primero el tipo del apuntador

  function addUser(uint _id) external {
    users.push(User({ id: _id}));
  }

  function getUserId(uint _index) view external returns(uint) {
    User storage user = users[_index];
    return user.id;
  }

  function updateUser(uint _index, uint _id) external {
    User storage user = users[_index];
    user.id = _id;
  }

  function updateUserMemory(uint _index, uint _id) view external {
    User memory user = users[_index];
    user.id = _id;
  }

  function deleteUser(uint _index) external {
    delete users[_index];
  }

  function deleteUserMemory(uint _index) view external {
    User memory user = users[_index];
    delete user;
  }

  // 2. Memoria solo se mantiene en memoria durante la ejecucion de la funcion, despues es destruido, pasarla a otra funcion
  // Leer y escribir 3 gwei
  // el costo por operacion empieza a aumentar despues de 22 operaciones
  function usingMemoryVariable(User memory _user) internal {
    // do something
  }

  // 3. Stack: es la memoria interno donde las variables temporales de tamaño 32 bits.
  // Suele utilizarse para guardar variables que son necesarias para procesamiento inmediato.
  // En la mayoria d elos casos no es necesario manipular el stack, puede ser cosa del compilador
  // Lo unico es si alguna vez ven un error de stack exceeded es por que tiene muchas variables
  // dentro de na funcion y ya agotaron este espacio
  function stackVariables() pure external {
//    uint b; // está unicamente disponible para la función b
    //
  }

  // mapping(address => User) usersMapping;

  // function addUser(uint _id) public {
  //     users.push(user1);
  //     users.push(user2);
  //
  //     usersMapping[msg.sender] = user1;
  //     usersMapping[msg.sender] = User({ id: 5 });
  // }
}
