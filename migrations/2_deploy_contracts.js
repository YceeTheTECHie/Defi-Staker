const Bcoin = artifacts.require('Bcoin');
module.exports = async function(deployer) {
   await deployer.deploy(Bcoin);
};
