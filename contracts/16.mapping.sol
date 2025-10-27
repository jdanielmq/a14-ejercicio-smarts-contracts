// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestMapping {
    //ejercicio1 

    //mapping que nos permite elegir un nombre mediante un numero
    mapping(uint => string) public nombres;

    //usar mapping
    function asignarNombre(uint _id, string memory _nombre) public {
        nombres[_id] = _nombre;
    }

    function obtenerNombre(uint _id) public view returns (string memory) {
        return nombres[_id];
    }

    //ejercicio2
    struct Persona {
        uint id;
        string nombre;
        int8 edad;
    }

    //mapping que nos permite elegir un nombre mediante un numero
    mapping(uint => Persona) public mappingPersonas;
    mapping(address => Persona) private mappingDirecciones;

    //funcion donde se agrega los datos a las persona y se agrega al mapping
    function agregarPersonaMapping(uint _id, string memory _nombre, int8 _edad) public {
        Persona memory sujeto = Persona(_id, _nombre, _edad);
        mappingPersonas[_id] = sujeto;
    }
     //funcion que nos permite obtener los datos de una persona
    function obtenerPersona(uint _id) public view returns (Persona memory) {
        return mappingPersonas[_id];
    }

    function asignarPersona(uint _id, string memory _nombre, int8 _edad) public {
        //creacion de objeto persona
        Persona memory sujeto = Persona(_id, _nombre, _edad);
        //setar los datos al mapping con la clave (key) address en al mappingDirecciones
        mappingDirecciones[msg.sender] = sujeto;
    }

    function obtenerPerdonaAddress() public view returns (uint, string memory, int8)  {
        return (mappingDirecciones[msg.sender].id, mappingDirecciones[msg.sender].nombre, mappingDirecciones[msg.sender].edad);
    }



}