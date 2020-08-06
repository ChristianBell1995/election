# Ethereum Elections Tutorial:

Youtube video: https://www.youtube.com/watch?v=3681ZYbDSSk&feature=youtu.be&t=21m50s
Blog: https://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial

## Setup

Install the truffle framework with: `npm install -g truffle`

Make sure you have **Ganache** up and running in the background I downloaded the MacOS app https://www.trufflesuite.com/ganache
This runs a local blockchain that you can test and run your solidity contracts on. It automatically gives you 10 accounts with 100 ETH each and runs on http://127.0.0.1:7545 .

Also install the **MetaMask** plugin for Chrome - https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=en . This is a wallet where you can add different accounts that connect you to the EVM.


When **Ganache** is running in the background.
Run `truffle migrate` to migrate the smart contracts onto your local blockchain.
Run `npm install && npm run dev` to install dependencies and run the webpage.
You can import an account from **Ganache** into **MetaMask** by copying the private key into the **MetaMask** import account tab. This should allow you to vote for a candidate!

## Notes and Tips

If you make any changes to smart contracts then you will have to run `truffle migrate --reset` to override the previous contracts. This is because contracts are immutable so you can't change them once they're on the blockchain.

Run `truffle console` to open a JS console where you can interact with your contracts. To get an instance of the election contract run ```Election.deployed().then(instance => { app = instance})``` then you can interact with the `app` object and inspect public interface of the contract.

To run the tests run `truffle test`

Web3.js - https://web3js.readthedocs.io/en/v1.2.11/. Is the JS framework that lets you interact with the EVM
