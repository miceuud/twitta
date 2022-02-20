//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";

contract UserModel {
  using Counters for Counters.Counter;
  Counters.Counter private count;

  struct User {
    string username;
    address userAddress;
    uint uid;
  }

  uint public uidCount;
  mapping(address => User) public UserController;
  mapping(address => bool) isCreated;

  function createUser(string calldata _username) external returns( address, string memory) {
     require(isCreated[msg.sender] == false, "User already exsit");

     count.increment();
     uidCount = count.current();

     UserController[msg.sender] = User(_username,msg.sender,uidCount);
     isCreated[msg.sender] = true;

    return( msg.sender,_username);
  }

  function getUserDetails() public view returns(address, string memory) {
     User memory user = UserController[msg.sender];
     address _address = user.userAddress;
     string memory _username = user.username;
     return (_address, _username);
  }

  function searchForUser (string calldata _username) public {}
  // this should delete user tweets also
  function deleteMyUserAccount (string memory _username) public  {} 


}
