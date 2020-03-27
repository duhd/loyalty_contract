/*
    @author: DuHD
    @version: 1.0
    @date: 25/03/2020
    @project LOYALTY
*/
pragma solidity ^0.5.7;

interface InterfaceWalletHistory {
  
    function changeOwner(address _newOwner) external;
    
    function setCreateStashHistory(bytes32 _txRef, bytes32 _stashName, address _stashAddr, uint _timestamp_onchain, uint timestamp_offchain) external;
    function isCreateStashHistory(bytes32 _txRef) view external returns (bool);
 
    function getDebitHistoryIdxLength() view external returns (uint);
    function setDebitHistory(bytes32 _txRef, bytes32 _stashName, int _amount, uint _timestamp_onchain, uint timestamp_offchain) external;
    function getDebitHistoryByTxRef(bytes32 _txRef) view external returns (bytes32, bytes32, int, uint, uint);
    function isDebitHistory(bytes32 _txRef) view external returns (bool);
    function countAndSumDebit(uint _from_timestamp, uint _to_timestamp) view external returns(int, int);
    function txsDebit(uint _from_timestamp, uint _to_timestamp) view external returns(bytes32[] memory, bytes32[] memory, int[] memory, uint[] memory);
    
    function getCreditHistoryIdxLength() view external returns (uint);
    function setCreditHistory(bytes32 _txRef, bytes32 _stashName, int _amount, uint _timestamp_onchain, uint timestamp_offchain) external;
    function getCreditHistoryByTxRef(bytes32 _txRef) view external returns (bytes32, bytes32, int, uint, uint);
    function isCreditHistory(bytes32 _txRef) view external returns (bool);
    function countAndSumCredit(uint _from_timestamp, uint _to_timestamp) view external returns(int, int);
    function txsCredit(uint _from_timestamp, uint _to_timestamp) view external returns(bytes32[] memory, bytes32[] memory, int[] memory, uint[] memory);
        
    function getTransferHistoryIdxLength() view external returns (uint);
    function setTransferHistory(bytes32 _txRef, bytes32 _sender, bytes32 _receiver, int _amount, uint _timestamp_onchain, uint _timestamp_offchain) external;
    function getTransferHistoryByTxRef(bytes32 _txRef) view external returns (bytes32, bytes32, int, uint, uint);
    function isTransferHistory(bytes32 _txRef) view external returns (bool);
    function countAndSumTransfer(uint _from_timestamp, uint _to_timestamp) view external returns(int, int);
    function txsTransfer(uint _from_timestamp, uint _to_timestamp) view external returns(bytes32[] memory, bytes32[] memory, bytes32[] memory, int[] memory, uint[] memory);
        
    function getRevertHistoryIdxLength() view external returns (uint);
    function setRevertHistory(bytes32 _txRef, bytes32 _txRef_org, int _amount,  uint _timestamp_onchain, uint _timestamp_offchain) external;
    function getRevertHistoryByTxRef(bytes32 _txRef) view external returns (bytes32, uint, uint);
    function isRevertHistory(bytes32 _txRef) view external returns (bool);
    function countAndSumRevert(uint _from_timestamp, uint _to_timestamp) view external returns(int, int);
    function txsRevert(uint _from_timestamp, uint _to_timestamp) view external returns(bytes32[] memory, bytes32[] memory, int[] memory, uint[] memory);
}
