/*
    @author: DuHD
    @version: 1.0
    @date: 25/03/2020
    @project LOYALTY
*/
pragma solidity ^0.5.7;

interface InterfaceWalletStorage {

    function changeOwner(address _newOwner) external;
    
    function checkMemberApi(address _member) view external  returns (bool);
    
    function addMemberApi(address _member) external;

    function delMemberApi(address _member) external;

    function getAllMemberApi() view external returns (address[] memory);
    
    function getMemberApiLength() view external returns (int16);
    
    function getStashRegistry(bytes32 _nameStash) view external returns (address);
    
    function getStashRegistryByIdx(uint _idx) view external returns (bytes32, address);
    
    function getStashByIdx(uint _idx) view external returns (address);
    
    function setStashRegistry(bytes32 _nameStash, address _stash) external;
    
    function getStashNamesLength() view external returns (uint);
    
    function getStashNames(uint _idx) view external returns (bytes32);

    function getAllStashRegistry() view external returns (bytes32[] memory, address[] memory);
    
    function isStashRegistry(bytes32 _nameStash) view external returns (bool);
    
}
