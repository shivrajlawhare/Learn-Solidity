// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier{
    address public owner;
    uint256 public x=10;
    bool public locked;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier dataValidate(address _addr){
        require(_addr != address(0),"not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner dataValidate(_newOwner) {
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked,"No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function increament(uint i) public noReentrancy {
        x += i;

        if(i > 1){
            increament(i-1);
        }
    }
}