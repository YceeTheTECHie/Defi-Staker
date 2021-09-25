var assert = require('assert');
const Rwd = artifacts.require('Rwd');
const DecentralizedBank = artifacts.require('DecentralizedBank');

require("chai")
    .use(require('chai-as-promised'))
    .should();

contract(Rwd, (accounts) => {
    let rwd
    before(async () => {
        rwd = await Rwd.new();
    })
    
    describe('Token Deployment', async () => {
        it('name matches', async () => {
            const name = await rwd.name();
            assert.equal(name, 'Reward Token')
        })
    })
})