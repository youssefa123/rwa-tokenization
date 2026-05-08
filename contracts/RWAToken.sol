// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract RWAToken {
  string public assetName;
  string public assetType;
  address public owner;
  uint public totalSupply;

  mapping(address => uint) public balances;

  event Minted(address indexed to, uint amount);
  event Transferred(address indexed from, address indexed to, uint amount);

  constructor(string memory _assetName, string memory _assetType) {
        assetName = _assetName;
        assetType = _assetType;
        owner = msg.sender;
        totalSupply = 0;
    }

    function mint(address to, uint amount) public {
        require(msg.sender == owner, "Only owner can mint");
        balances[to] += amount;
        totalSupply += amount;
        emit Minted(to, amount);
    }

    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transferred(msg.sender, to, amount);
    }

    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }
}
  
