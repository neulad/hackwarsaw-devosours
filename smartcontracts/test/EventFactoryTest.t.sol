// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/EventFactory.sol";
import "../src/Event.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract EventFactoryTest is Test, IERC721Receiver {
    EventFactory public eventFactory;

    function setUp() public {
        eventFactory = new EventFactory();
    }

    function testCreateEvent() public {
        string memory name = "Sample Event";
        string memory symbol = "SEVT";
        uint256 ticketPrice = 0.1 ether;
        uint256 maxTickets = 10;

        eventFactory.createEvent(name, symbol, ticketPrice, maxTickets);

        Event[] memory events = eventFactory.getEvents();
        assertEq(events.length, 1);
        Event newEvent = events[0];

        assertEq(newEvent.name(), name);
        assertEq(newEvent.symbol(), symbol);
        assertEq(newEvent.ticketPrice(), ticketPrice);
        assertEq(newEvent.maxTickets(), maxTickets);
    }

    function testPurchaseTicket() public {
        string memory name = "Sample Event";
        string memory symbol = "SEVT";
        uint256 ticketPrice = 0.1 ether;
        uint256 maxTickets = 10;

        eventFactory.createEvent(name, symbol, ticketPrice, maxTickets);
        Event[] memory events = eventFactory.getEvents();
        Event newEvent = events[0];

        vm.deal(address(this), 1 ether); // Fund the test contract with ETH
        newEvent.purchaseTicket{value: ticketPrice}();

        assertEq(newEvent.balanceOf(address(this)), 1);
    }

    // Implementation of the IERC721Receiver interface
    function onERC721Received(address, address, uint256, bytes memory) public pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
