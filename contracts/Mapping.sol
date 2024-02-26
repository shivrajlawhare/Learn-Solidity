// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping{
    mapping(address => uint) public myMap;

    function getUser(address _addr) public view returns(uint){
        return myMap[_addr];
    }

    function set(address _addr, uint _id) public {
        myMap[_addr]=_id;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract NestedMapping{
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr,uint _id) public view returns( bool){
        return nested[_addr][_id];
    }

    function add(
        address _addr,
        uint _id,
        bool _bol
    ) public {
        nested[_addr][_id]=_bol;
    }

    function remove( address _addr,uint _id) public {
        delete nested[_addr][_id];
    }
}