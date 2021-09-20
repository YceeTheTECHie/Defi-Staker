const DecentralizedBankBcoin = artifacts.require('Bcoin');
const Rwd = artifacts.require('Rwd.sol');
const DecentralizedBank = artifacts.require('DecentralizedBank');

module.exports = async function (deployer,accounts,networks) {
   await deployer.deploy(Bcoin);
   const bcoin = await Bcoin.deployed();

   await deployer.deploy(Rwd);
   const rwd = await Rwd.deployed();

   await deployer.deploy(DecentralizedBank,rwd.address,bcoin.address);
   const decentralizedBank = await DecentralizedBank.deployed();

   // transfer all tokens from rwd into bank
   await rwd.transfer(decentralizedBank.address, '1000000000000000000000000');
   await bcoin.transfer(accounts[1],'1000000000000000000');
}