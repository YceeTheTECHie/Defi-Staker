var assert = require('assert');
const Bcoin = artifacts.require('Bcoin');
const Rwd = artifacts.require('Rwd');
const DecentralizedBank = artifacts.require('DecentralizedBank');

require("chai")
    .use(require('chai-as-promised'))
    .should();

contract(DecentralizedBank, (accounts) => {
    let bcoin,Rwd
    before(async () => {
        bcoin = await Bcoin.new();
    })
    describe('Token Deployment', async () => {
        it('name matches', async () => {
            const name = await bcoin.name();
            assert.strictEqual(name, 'Bcoin Token')
        })
    })
})