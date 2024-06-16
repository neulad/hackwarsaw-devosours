# EventoWeb3
## Description
EventoWeb3 is a Web3 platform for event registration and subscription, leveraging smartcontracts to foster web3 into the web2 world. Made as seemless as web2, we use power of blockchain to make payments more secure and the world more accessible.
![image](https://github.com/neulad/hackwarsaw-devosours/assets/116178300/6e7b2e79-bda4-4ba1-abd7-080d7cbfc9ec)

# cd ./smartcontracts
## Installation

```shell
curl -L https://foundry.paradigm.xyz | bash
foundryup
```
### Build

```shell
$ forge build
```
### Test

```shell
$ forge test
```

### Deploy

#### First set up avalanche
```shell
avalanche subnet create mysubnet
```
#### Deploy subnet
```shell
avalanche subnet deploy mysubnet
```
#### Somewhere in the output you will find your private key. Please use it in the next command
#### Deploy to the subnet
```shell
$ forge script DeployEventFactory.s.sol --rpc-url mysubnet --private-key <your_private_key>
```

# cd ../frontend
## Requirements
+ You need to have `python3` installed on your system
## Run locally
```shell
python3 -m http.server 8080
```
Now go to http://localhost:8080
