require("babel-register");
require("babel-polyfill");

module.exports = {
    networks: { 
        "Development": {
            host:'127.0.0.1:',
            port:'7545',
            networkId:'*'
        } 
    },
    contracts_directory: './src/contracts/',
    contracts_build_directory: './src/truffle_abis',
    
    compilers: {
        solc: {
            version: '^0.5.0',
            optimizer: {
                enabled: true,
                runs: 200
            }
        }
    }
}