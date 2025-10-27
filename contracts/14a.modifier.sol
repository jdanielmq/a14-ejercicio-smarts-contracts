// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MyModifier {
    modifier isPar(uint _number) {
        require(_number % 2 == 0, "Number is not par");
        _;
    }

    modifier noEsCero(address _address){
        require(_address != address(0), "Address is zero");
        _;
    }

    modifier noEstaVacia(string memory _texto){
        require(bytes(_texto).length > 0, "String is empty");
        _;
    }

    function par(uint _number) public pure isPar(_number) returns (string memory) {
        return "The number is par";
    }

    function noCero(address _address) public pure noEsCero(_address) returns (string memory) {
        return "The address is not zero";
    }

    function noVacia(string memory _texto) public pure noEstaVacia(_texto) returns (string memory) {
        return "The string is not empty";
    }

}
