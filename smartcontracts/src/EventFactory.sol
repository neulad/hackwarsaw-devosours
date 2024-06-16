// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Event.sol";

contract EventFactory {
    Event[] public events;

    function createEvent(string memory name, string memory symbol, uint256 ticketPrice, uint256 maxTickets) public {
        Event newEvent = new Event(name, symbol, ticketPrice, maxTickets);
        newEvent.transferOwnership(msg.sender);
        events.push(newEvent);
    }

    function getEvents() public view returns (Event[] memory) {
        return events;
    }
}
