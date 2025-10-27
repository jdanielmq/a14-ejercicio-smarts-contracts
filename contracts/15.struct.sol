// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract myStruct {
    // ejercicio 1
    // estructura basica
    struct Persona {
        string nombre;
        int edad;
        bool activo;
    }

    //declarar de la esttructura
    Persona joven;
    // asignacion de valores a la estructura (inicializacion)
    function asignacionValores () public {
        joven.nombre = "Juan";
        joven.edad = 44;
        joven.activo = true;
    }

    function obtenerValores() public view returns (string memory, int, bool){
        return (joven.nombre, joven.edad, joven.activo);
    }


    //ejercicios 

    //estructura de auto
    struct Auto {
        string marca;
        string modelo;
        int anio;
        bool disponible;
    }   
    //declarar de la esttructura
    Auto public carro;
    // asignacion de valores a la estructura (inicializacion)
    function asignacionValoresAuto () public {
        carro.marca = "Toyota";
        carro.modelo = "Corolla";
        carro.anio = 2022;
        carro.disponible = true;
    }
    function obtenerValoresAuto() public view returns (string memory, string memory, int, bool){
        return (carro.marca, carro.modelo, carro.anio, carro.disponible);
    }

    function setarValores ( string memory _marca, string memory _modelo, int _anio, bool _disponible) public {
        carro.marca = _marca;
        carro.modelo = _modelo;
        carro.anio = _anio;
        carro.disponible = _disponible;
    }  

    Auto[] public ListaDeAutos;
    function agregarAuto (string memory _marca, string memory _modelo, int _anio, bool _disponible) public {
        Auto memory nuevoAuto = Auto(_marca, _modelo, _anio, _disponible);
        ListaDeAutos.push(nuevoAuto);
    } 
    function obtenerAuto (uint _id) public view returns (string memory, string memory, int, bool) {
        Auto storage autoAux = ListaDeAutos[_id];
        return ( autoAux.marca, autoAux.modelo, autoAux.anio, autoAux.disponible);
    }
}