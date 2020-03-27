/*
    @author: DuHD
    @version: 1.0
    @date: 25/03/2020
    @project LOYALTY
*/

pragma solidity ^0.5.7;

contract Owned {
    address owner;

    constructor() public{
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'CHI OWNER CONTRACT MOI DUOC GOI HAM');
        _;
    }

    function getOwner() view public returns (address) {
        return owner;
    }

    function changeOwner(address _newOwner) onlyOwner public {
        owner = _newOwner;
    }
}
