var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "spirit supply whale amount human item harsh scare congress discover talent hamster";
module.exports = {
    networks: {
        development: {
            host: "127.0.0.1",
            port: 7545,
            network_id: 5777,
        },
        rinkeby: {
            provider: function() {
                return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/<https://rinkeby.infura.io/v3/39fd8275065749eeb0f6d2a0a139b904>");
            },
            network_id: 4,
            gas: 4500000,
            gasPrice: 20000000000,
        }
    }
};