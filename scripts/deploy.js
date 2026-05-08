import { viem } from "hardhat";

async function main() {
  const [deployer] = await viem.getWalletClients();
  console.log("Deploying with account:", deployer.account.address);

  const token = await viem.deployContract("RWAToken", [
    "Manhattan Property",
    "Real Estate",
  ]);

  console.log("RWAToken deployed to:", token.address);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});