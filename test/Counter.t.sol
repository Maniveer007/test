import {GmpTestTools} from "@analog-gmp-testing/GmpTestTools.sol";

// Deploy gateway contracts and create forks for all supported networks
GmpTestTools.setup();

// Set `account` balance in all networks
GmpTestTools.deal(address(account), 100 ether);

// Switch to Sepolia network
GmpTestTools.switchNetwork(5);

// Switch to Shibuya network and set `account` as `msg.sender` and `tx.origin`
GmpTestTools.switchNetwork(7, address(account));

// Relay all pending GMP messages.
GmpTestTools.relayMessages();