// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assert{
    bool result;

    function checkOverflow(uint _num1, uint _num2) public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns(string memory){
        if(result== true){
            return "no overflow";
        }else{
            return "overflow!!";
        }
    }
}