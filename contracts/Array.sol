// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{
    uint[] public array;
    uint[] public arr2 = [1,2,3];
    uint[10] public fixedSizedArray;


    function get(uint i) public view returns(uint){
        return array[i];
    }

    function getArr() public view returns(uint[] memory){
        return array;
    }

    function push(uint i) public {
        array.push(i);
    }

    function pop() public {
        array.pop();
    }

    function getLength() public view returns( uint ){
        return array.length;
    }

    function remove(uint i) public {
        delete array[i];
    }

    function examples() external pure {
        uint[] memory a = new uint[](5);
    }
}