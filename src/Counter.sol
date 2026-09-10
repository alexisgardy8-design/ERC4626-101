// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Counter is ERC4626 {
    constructor(IERC20 asset_, string memory name_, string memory symbol_)
        ERC20(name_, symbol_)
        ERC4626(asset_)
    {
    }

    function totalAssets() public view override returns (uint256) {
        return super.totalAssets();
    }

    function convertToShares(uint256 assets) public view override returns (uint256) {
        return super.convertToShares(assets);
    }

    function convertToAssets(uint256 shares) public view override returns (uint256) {
        return super.convertToAssets(shares);
    }

    function previewDeposit(uint256 assets) public view override returns (uint256) {
        return super.previewDeposit(assets);
    }

    function maxDeposit(address receiver) public view override returns (uint256) {
        return super.maxDeposit(receiver);
    }

    function deposit(uint256 assets, address receiver) public override returns (uint256) {
        return super.deposit(assets, receiver);
    }

    function previewMint(uint256 shares) public view override returns (uint256) {
        return super.previewMint(shares);
    }

    function maxMint(address receiver) public view override returns (uint256) {
        return super.maxMint(receiver);
    }

    function mint(uint256 shares, address receiver) public override returns (uint256) {
        return super.mint(shares, receiver);
    }

    function previewWithdraw(uint256 assets) public view override returns (uint256) {
        return super.previewWithdraw(assets);
    }

    function maxWithdraw(address owner) public view override returns (uint256) {
        return super.maxWithdraw(owner);
    }

    function withdraw(uint256 assets, address receiver, address owner)
        public
        override
        returns (uint256)
    {
        return super.withdraw(assets, receiver, owner);
    }

    function previewRedeem(uint256 shares) public view override returns (uint256) {
        return super.previewRedeem(shares);
    }

    function maxRedeem(address owner) public view override returns (uint256) {
        return super.maxRedeem(owner);
    }

    function redeem(uint256 shares, address receiver, address owner)
        public
        override
        returns (uint256)
    {
        return super.redeem(shares, receiver, owner);
    }
}
