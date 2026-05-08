import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("RWATokenModule", (m) => {
  const rwaToken = m.contract("RWAToken", ["Manhattan Property", "Real Estate"]);

  return { rwaToken };
});