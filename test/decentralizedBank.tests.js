var assert = require('assert');
const { default: Web3 } = require('web3');
const Bcoin = artifacts.require('Bcoin');
const Rwd = artifacts.require('Rwd');
const DecentralizedBank = artifacts.require('DecentralizedBank');

require("chai")
    .use(require('chai-as-promised'))
    .should();

contract(DecentralizedBank, (accounts) => {

    // helper function to help token formatting
    const tokenFormatter = amount => {
        return Web3.utils.toWei(amount, 'tether')
    }
    let bcoin,rwd
    before(async () => {
        bcoin = await Bcoin.new();
        rwd = await Rwd.new();
        decentralizedBank = DecentralizedBank.new(rwd.address, bcoin.address);
        await rwd.transfer(decentralizedBank.address, tokenFormatter(1000000));
        await bcoin.transfer(accounts[1],tokenFormatter())
    })
    describe('Token Deployment', async () => {
        it('name matches', async () => {
            const name = await bcoin.name();
            assert.strictEqual(name, 'Bcoin Token')
        })
    })
})