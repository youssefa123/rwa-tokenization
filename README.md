# RWA Tokenization

> A smart-contract system for tokenizing real-world real-estate assets on Ethereum — built with Solidity, Hardhat 3, and TypeScript.

![Solidity](https://img.shields.io/badge/Solidity-0.8.x-363636?logo=solidity&logoColor=white)
![Hardhat](https://img.shields.io/badge/Built%20with-Hardhat%203-fff100?logo=ethereum&logoColor=black)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue)

---

## Overview

Real-world asset (RWA) tokenization brings physical assets on-chain as transferable, programmable tokens — unlocking fractional ownership, faster settlement, and transparent, auditable records. This project applies that model to **real estate**.

The repository implements **`RWAToken`**, an ERC-20 smart contract representing fractional ownership of a real-estate asset, alongside a complete Hardhat development environment for compiling, testing, and deploying the contract.

It demonstrates an end-to-end smart-contract workflow: contract development, automated testing, and reproducible deployment via Hardhat Ignition.

## Key Features

- **Real-estate tokenization** — the `RWAToken` contract represents on-chain ownership of a real-world property
- **Owner-controlled issuance** — token supply is minted by an authorized account, keeping issuance auditable
- **Standard ERC-20 transfers** — tokens are freely transferable between holders
- **Automated test suite** — contract behavior verified with Hardhat's testing framework
- **Reproducible deployments** — Hardhat Ignition modules make deployments declarative and repeatable
- **TypeScript-first tooling** — type-safe scripts, config, and tests throughout

## Tech Stack

| Layer | Technology |
|---|---|
| Smart contracts | Solidity (`^0.8.x`) |
| Development & testing | Hardhat 3 |
| Deployment | Hardhat Ignition |
| Chain interaction | ethers.js |
| Tooling / scripts | TypeScript |

## Project Structure

```
rwa-tokenization/
├── contracts/         # Solidity smart contracts (RWAToken)
├── ignition/          # Hardhat Ignition deployment modules
├── scripts/           # Deployment & utility scripts
├── test/              # Automated contract tests
├── hardhat.config.ts  # Hardhat configuration
├── package.json       # Dependencies & scripts
└── tsconfig.json      # TypeScript configuration
```

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) v18 or higher
- npm

### Installation

```bash
git clone https://github.com/youssefa123/rwa-tokenization.git
cd rwa-tokenization
npm install
```

### Compile the contracts

```bash
npx hardhat compile
```

### Run the test suite

```bash
npx hardhat test
```

### Start a local blockchain

```bash
npx hardhat node
```

### Deploy locally

In a separate terminal, deploy the contract to the local node using Ignition:

```bash
npx hardhat ignition deploy ignition/modules/RWAToken.ts --network localhost
```

## Smart Contract — `RWAToken`

`RWAToken` is an ERC-20 token that represents fractional ownership of a real-estate asset. Core capabilities include:

- **Minting** — controlled issuance of tokens to represent ownership stakes
- **Transfers** — standard ERC-20 transfer and approval flows between holders
- **Balance & supply tracking** — on-chain accounting of ownership across all holders

Each token unit corresponds to a defined share of the underlying property, enabling fractional, liquid ownership of an otherwise illiquid asset.

## Testing

Automated tests live in the `test/` directory and cover the contract's core behavior — minting, transfers, and balance accounting. Run them with:

```bash
npx hardhat test
```

## Roadmap

Potential extensions to evolve this from a proof of concept toward production:

- Role-based access control for issuers and administrators
- Compliance / whitelisting layer (e.g. ERC-3643 / ERC-1400 for permissioned transfers)
- Public testnet deployment (Sepolia) with verified source on Etherscan
- A frontend dApp for minting, viewing, and transferring tokens
- Security review and gas optimization pass

## Author

**Youssef Abdelhady**
- GitHub: [@youssefa123](https://github.com/youssefa123)

## License

Released under the [MIT License](LICENSE).
