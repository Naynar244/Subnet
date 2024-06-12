# ERC20 and Vault Contracts

## Overview

There are smart contracts, an ERC20 token contract and a Vault contract, that work together to allow users to mint, transfer, approve, deposit, and withdraw tokens. The ERC20 contract handles the token logic, while the Vault contract provides functionality for depositing tokens and withdrawing corresponding shares.

## ERC20 Contract

The ERC20 contract is a standard implementation of the ERC20 token. It includes functions for minting, burning, transferring tokens, and managing allowances.

### Functions

- **transfer(address recipient, uint amount)**: Transfers tokens.
- **approve(address spender, uint amount)**: Approves `spender` to spend tokens.
- **transferFrom(address sender, address recipient, uint amount)**: Transfers tokens using the allowance mechanism.
- **mint(uint amount)**: Mints new tokens.
- **burn(uint amount)**: Burns tokens.

## Vault Contract
Allows users to deposit into the vault and make withdrawals.
- **deposit** :Deposit funds into the vault.
- **withdraw** : Make withdrawals.
