//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Baby{
    address public own;
    address public parents;

    constructor(address _own) payable {
        own = _own;
        parents = msg.sender;
    }
}


contract BabyFactory{
    Baby[] public babies;
    function makeBabies(address _own) external payable{
         Baby _babies = new Baby{value:1234}(_own); 
         babies.push(_babies);

    }
   
}
