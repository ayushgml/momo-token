const MomoToken = artifacts.require("MomoToken");

module.exports = function (deployer) {
  deployer.deploy(MomoToken);
};
