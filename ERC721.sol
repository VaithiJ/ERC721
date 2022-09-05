// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract GameItem is ERC721, Ownable {
    

    uint NFTsMinted = 0;

    constructor() ERC721("GameItem", "ITM") {}

     function safeMint(address to, uint256 tokenId) public onlyOwner {
         require(NFTsMinted < 10, "Only 10 NFTs can be minted");
        _safeMint(to, tokenId);
        NFTsMinted +=1;
    }


   
}