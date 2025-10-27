// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MyModifier {
    address public  propietario;

    constructor(){
        propietario = msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender == propietario, "No es el propietario, solo el propietario puede llamar esta funcion.");
        _;
    }

    function mensaje() public  view soloPropietario returns (string memory){
        return "se esta ejecutando uan funcion";
    }
}
