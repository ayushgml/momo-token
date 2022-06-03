const MomoToken = artifacts.require("./MomoToken.sol");

module.exports = function (deployer) {
  deployer.deploy(MomoToken, 1000000);
};
