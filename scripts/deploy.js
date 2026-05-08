const token = await hre.viem.deployContract("RWAToken", [
  "Manhattan Property",
  "Real Estate",
]);

console.log("Deploying with account:", (await hre.viem.getWalletClients())[0].account.address);
console.log("RWAToken deployed to:", token.address);