// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Require{
    function checkInput(uint256 _input) public pure returns(string memory){
        require(_input >= 0, "invalid uint8");
        require(_input <= 255, "invalid uint");

        return "input in uint8";
    }

    function odd(uint256 _input) public pure returns(bool){
        require(_input%2 != 0,"input is even");
        return true;
    }
}