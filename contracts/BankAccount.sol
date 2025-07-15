// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BankAccount {
    // write out the events
    event Deposit(
        address indexed user, 
        uint256 indexed accountId, 
        uint256 value, 
        uint256 timestamp
    );
    event WithdrawRequested(
        address indexed user, 
        uint256 indexed accountId, 
        uint256 indexed withdrawId, 
        uint256 amount, 
        uint256 timestamp
    );
    event withdrawRequest(uint indexed withdrawId, uint timestamp);
    event AccountCreated(address[] owners, uint indexed id, uint timestamp);

  // write structs for data types 
    struct WithdrawRequest {
        address user;
        uint amount;
        uint approvals;
        mapping (address => bool) ownersApproved;
        bool approved;
    }
    struct Account {
        address[] owners;
        uint balance;
        mapping (uint => WithdrawRequest) WithdrawRequests;
    }

    mapping(uint => Account) accounts; // mapping of all accounts
    mapping(address => uint[]) userAccounts; // Id's of all accounts 

    //variable tracks the next ID's 
    uint nextAccountId;
    uint nextWithdrawalId;

    function deposit(uint accountId) external payable{}
    function createAccount(address[] calldata otherOwners) external {}
    function requestWithdrawl(uint accountId, uint amount) external{}
    function approveWithdrawl(uint accountId, uint withdrawId) external{}
    function withdraw(uint accountId, uint withdrawId) external{}

}