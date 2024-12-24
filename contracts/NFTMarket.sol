// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
import {ERC721URIStorage, ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTMarket is ERC721URIStorage {
    uint256 private _ids =0;

    constructor() ERC721("NFTMarket", "NFTM") {}

    function createNFT(string calldata tokenURL) public returns (uint256) {
        _ids++;
        _mint(msg.sender, _ids);
        _setTokenURI(_ids, tokenURL);
        return _ids;
    }
}   