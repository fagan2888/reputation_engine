var ReputationFactory = artifacts.require("./ReputationFactory.sol");

module.exports = function(deployer) {
  deployer.deploy(ReputationFactory);
};
