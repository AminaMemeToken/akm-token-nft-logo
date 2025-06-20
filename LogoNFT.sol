// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LogoNFT is ERC721URIStorage, Ownable {
    bool private minted;

    constructor() ERC721("LogoNFT", "LOGO") Ownable(msg.sender) {
        // msg.sender = deploy eden adres
    }

    function mint(string memory tokenURI) public onlyOwner {
        require(!minted, "Only one NFT can be minted");

        _safeMint(msg.sender, 0);
        _setTokenURI(0, tokenURI);

        minted = true;
    }
}
