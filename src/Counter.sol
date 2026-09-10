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
}
