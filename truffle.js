var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "asset mask pause joke very select work water culture gain catalog pattern";
var accessToken = "https://ropsten.infura.io/v3/13d3f2c3fc9e4f1eb089ed91bd2d7163";

module.exports = {
  networks: {
    ropsten: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic,
          "https://ropsten.infura.io/v3/13d3f2c3fc9e4f1eb089ed91bd2d7163"
        );
      },
      network_id: 3,
      gas: 500000
    }
  }
};
