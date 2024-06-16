// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Event is ERC721, Ownable {
    uint256 private _tokenId;

    uint256 public ticketPrice;
    uint256 public maxTickets;

    constructor(string memory name, string memory symbol, uint256 price, uint256 maxSupply)
        ERC721(name, symbol)
        Ownable(msg.sender)
    {
        ticketPrice = price;
        maxTickets = maxSupply;
    }

    function purchaseTicket() public payable {
        require(_tokenId < maxTickets, "All tickets have been sold");
        require(msg.value == ticketPrice, "Incorrect value sent");

        ++_tokenId;
        _safeMint(msg.sender, _tokenId);
    }

    function withdraw() public onlyOwner {
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");
        payable(owner()).transfer(balance);
    }
}
