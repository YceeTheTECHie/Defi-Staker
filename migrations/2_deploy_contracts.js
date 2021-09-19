const DecentralizedBankBcoin = artifacts.require('Bcoin');
const Rwd = artifacts.require('Rwd.sol');
const DecentralizedBank = artifacts.require('DecentralizedBank');

module.exports = async function(deployer) {
   await deployer.deploy(Bcoin);
   await deployer.deploy(Rwd);
   await deployer.deploy(DecentralizedBank);

};
