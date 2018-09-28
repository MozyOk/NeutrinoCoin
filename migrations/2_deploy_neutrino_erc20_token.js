const NeutrinoToken = artifacts.require('./NeutrinoToken.sol')

module.exports = (deployer) => {
    let initialSupply = 1000000e18
    let maxSupply = 100000000e18
    deployer.deploy(NeutrinoToken, initialSupply, maxSupply, {
        gas: 2000000
    })
}
