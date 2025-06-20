// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AminaMemeToken is ERC20Burnable, Ownable {
    address public rewardWallet;
    address public constant burnAddress = 0x000000000000000000000000000000000000dEaD;
    uint256 public constant TRANSFER_FEE = 2;

    constructor(address _rewardWallet)
        ERC20("Amina Meme Token", "AKM")
        Ownable(msg.sender)
    {
        rewardWallet = _rewardWallet;
        _mint(msg.sender, 850_000_000_000 * 10 ** decimals());
    }

    // Bu fonksiyon artık override edilmedi, farklı şekilde yakım/ödül yapılabilir.
    function transferWithFee(address to, uint256 amount) external returns (bool) {
        uint256 fee = (amount * TRANSFER_FEE) / 100;
        uint256 burnPart = fee / 2;
        uint256 rewardPart = fee - burnPart;
        uint256 netAmount = amount - fee;

        _transfer(msg.sender, burnAddress, burnPart);
        _transfer(msg.sender, rewardWallet, rewardPart);
        _transfer(msg.sender, to, netAmount);

        return true;
    }
}
