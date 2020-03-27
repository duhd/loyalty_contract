/*
    @author: DuHD
    @version: 1.0
    @date: 25/03/2020
    @project LOYALTY
    To be deploy by Business, so that no human has owner access
*/
pragma solidity ^0.5.7;

import "./Owned.sol";


contract WalletStash is Owned {
    bytes32 account_id;
    int balance;
    int8 stateStash; /*  0: Inactive, 1:ActiveA, 3:Closed, 4:Blocked  */
    int8 typeStash; /* 0:A, 1:V, 2:D, 3:E, 4:F */
    int8 levelStash;
    uint createTime;

    constructor(bytes32 _account_id) public {
        account_id = _account_id;
        createTime = now;
        // changeOwner(_newOwner);
    }

    function credit(int _crAmt) onlyOwner public {
        balance += _crAmt;
    }

    function debit(int _dAmt) onlyOwner public {
        balance -= _dAmt;
    }

    function safe_debit(int _dAmt) onlyOwner public {
        require(_dAmt < balance, 'KHONG DU SO DU DE THUC HIEN GIAO DICH');
        balance -= _dAmt;
    }

    function getState() view public returns (int8){
        return stateStash;
    }

    function setState(int8 _stateStash) onlyOwner public {
        stateStash = _stateStash;
    }

    function getType() view public returns (int8){
        return typeStash;
    }

    function setType(int8 _typeStash) onlyOwner public {
        typeStash = _typeStash;
    }

    function getLevel() view public returns (int8){
        return typeStash;
    }

    function setLevel(int8 _levelStash) onlyOwner public {
        levelStash = _levelStash;
    }
    
    function getBalance() view public returns (int){
        return balance;
    }
    
    function getCreateTime() view public returns (uint){
        return createTime;
    }

}
