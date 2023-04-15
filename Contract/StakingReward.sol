// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract StakingRewards is Ownable{
    IERC20 public immutable stakingToken;
    IERC20 public immutable rewardsToken;
    
    address public owner;

    uint public duration;
    uint public finishAt;
    uint public updateAt;
    uint public rewardRate;
    uint public rewardPerTokenStored;
    mapping (address => uint) public userRewardPerTokenPaid;
    mapping (address => uint) public rewards;

    uint public totalSupply;
    mapping (address => uint) public balanceOf;
    
    
    constructor(address _stakingToken, address _rewardsToken) {
        owner = msg.sender;
        stakingToken = IERC20(_stakingToken);
        rewardsToken = IERC20(_rewardsToken);
    }

    function setRewardDirection(uint _duration) external{
        
    }

    function  notifyRewardAmount(uint _amount) external onlyOwner{

    }
    function stake (uint _amount) external {}

    function withdraw (uint _amount) external {}
    
    function earned (address _account) external view returns (uint) {}

    function getReward (address _account) 

    

}