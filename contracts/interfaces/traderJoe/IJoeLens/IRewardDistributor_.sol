// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.8.0 <0.9.0;

interface IRewardDistributor_ {
    function _grantReward(
        uint8 rewardType,
        address recipient,
        uint256 amount
    ) external;

    function _setRewardSpeed(
        uint8 rewardType,
        address jToken,
        uint256 rewardSpeed
    ) external;

    function admin() external view returns (address);

    function claimReward(uint8 rewardType, address holder) external;

    function claimReward(
        uint8 rewardType,
        address holder,
        address[] calldata jTokens
    ) external;

    function claimReward(
        uint8 rewardType,
        address[] calldata holders,
        address[] calldata jTokens,
        bool borrowers,
        bool suppliers
    ) external payable;

    function getBlockTimestamp() external view returns (uint256);

    function initialize() external;

    function joeAddress() external view returns (address);

    function joetroller() external view returns (address);

    function rewardAccrued(uint8, address) external view returns (uint256);

    function rewardBorrowState(uint8, address)
        external
        view
        returns (uint224 index, uint32 timestamp);

    function rewardBorrowerIndex(
        uint8,
        address,
        address
    ) external view returns (uint256);

    function rewardInitialIndex() external view returns (uint224);

    function rewardSpeeds(uint8, address) external view returns (uint256);

    function rewardSupplierIndex(
        uint8,
        address,
        address
    ) external view returns (uint256);

    function rewardSupplyState(uint8, address)
        external
        view
        returns (uint224 index, uint32 timestamp);

    function setAdmin(address _newAdmin) external;

    function setJoeAddress(address newJoeAddress) external;

    function setJoetroller(address _joetroller) external;

    function updateAndDistributeBorrowerRewardsForToken(
        address jToken,
        address borrower,
        bytes memory marketBorrowIndex
    ) external;

    function updateAndDistributeSupplierRewardsForToken(
        address jToken,
        address supplier
    ) external;
}
