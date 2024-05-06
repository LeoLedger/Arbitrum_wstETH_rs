// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.8.0 <0.9.0;

interface IMasterChefJoeV3 {
    function JOE() external view returns (address);

    function MASTER_CHEF_V2() external view returns (address);

    function MASTER_PID() external view returns (uint256);

    function add(
        uint256 allocPoint,
        address _lpToken,
        address _rewarder
    ) external;

    function deposit(uint256 pid, uint256 amount) external;

    function emergencyWithdraw(uint256 pid) external;

    function harvestFromMasterChef() external;

    function init(address dummyToken) external;

    function joePerSec() external view returns (uint256 amount);

    function massUpdatePools(uint256[] memory pids) external;

    function owner() external view returns (address);

    function pendingTokens(uint256 _pid, address _user)
        external
        view
        returns (
            uint256 pendingJoe,
            address bonusTokenAddress,
            string memory bonusTokenSymbol,
            uint256 pendingBonusToken
        );

    function poolInfo(uint256)
        external
        view
        returns (
            address lpToken,
            uint256 accJoePerShare,
            uint256 lastRewardTimestamp,
            uint256 allocPoint,
            address rewarder
        );

    function poolLength() external view returns (uint256 pools);

    function renounceOwnership() external;

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        address _rewarder,
        bool overwrite
    ) external;

    function totalAllocPoint() external view returns (uint256);

    function transferOwnership(address newOwner) external;

    function updatePool(uint256 pid) external;

    function userInfo(uint256, address)
        external
        view
        returns (uint256 amount, uint256 rewardDebt);

    function withdraw(uint256 pid, uint256 amount) external;
}
