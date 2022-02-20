//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./User.sol";

contract TweetModel is UserModel {
  using Counters for Counters.Counter;
  Counters.Counter private count;

  uint public tweetId;

  struct Tweet {
    string tweet;
    address userAddress;
    string username;
    uint tweetId;
    uint timeStamp;
  }
  // Tweet[] myTweet;
  mapping(address => Tweet) public TweetController;
  mapping(uint => Tweet) public TweetId;

  function createTweet(string calldata tweet) external returns (string calldata ,uint) {
    (address _address, string memory _username) = getUserDetails();

    count.increment(); 
    tweetId = count.current();
    
    TweetController[msg.sender] = Tweet(
      tweet,
      _address,
      _username,
      tweetId,
      block.timestamp
    );
    return (tweet,tweetId);
  }

}
