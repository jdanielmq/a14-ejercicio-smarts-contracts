// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract testArrays {
    uint256[3] public numerosFijos = [1,2,3];
    
    uint256[] public numeroDinamicos = [1,2,3,4,5,6,7,8];

    string[] private nombres;

    function addNombre(string memory _nombre) public  {
        nombres.push(_nombre);
    }

    function getNombre(uint _index) public view returns (string memory) {
        return  nombres[_index];
    }

    //Estructura
    struct Estudiante {
        string nombre;
        uint edad;
        string curso;
    }

    Estudiante[] public estudiantes;

    function addEstudiante(string memory _nombre, uint _edad, string memory _curso) public {
        estudiantes.push(Estudiante(_nombre, _edad, _curso));
    }

    function getEstudiante(uint _index) public view returns (string memory, uint, string memory) {
        return (estudiantes[_index].nombre, estudiantes[_index].edad, estudiantes[_index].curso);
    }

    function getEstudianteStruct(uint _index) public view returns (Estudiante memory) {
        return estudiantes[_index];
    }

    function getLongitud() public view returns (uint) {
        return estudiantes.length;
    } 
}