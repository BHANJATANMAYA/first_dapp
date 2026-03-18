#  Flutter DApp - Message Storage
![Flutter](https://img.shields.io/badge/Flutter-Mobile_App-blue?logo=flutter)
![Ethereum](https://img.shields.io/badge/Ethereum-Sepolia_Testnet-black?logo=ethereum)
![Web3dart](https://img.shields.io/badge/Web3dart-Blockchain-orange)
![Status](https://img.shields.io/badge/Status-Active-success)
![License](https://img.shields.io/badge/License-MIT-green)

A simple decentralized application (DApp) built using Flutter and Ethereum that allows users to store and retrieve messages on the blockchain.

---

## 🧠 About the Project

This project demonstrates how a Flutter mobile application can interact with a smart contract deployed on the Ethereum blockchain (Sepolia testnet).

Users can:

* 📥 Read messages stored on the blockchain
* 📤 Send new messages via transactions
* 🔗 Interact with a deployed smart contract

---

## 🛠️ Tech Stack

* **Frontend:** Flutter
* **Blockchain:** Ethereum (Sepolia Testnet)
* **Smart Contract:** Solidity
* **Web3 Integration:** web3dart
* **RPC Provider:** Infura / Alchemy

---

## ✨ Features

* Connect Flutter app to Ethereum blockchain
* Read data from smart contract (gas-free)
* Write data to smart contract (requires gas)
* Secure environment variable handling using `.env`
* Clean and simple UI for interaction

---

## 📦 Project Structure

```
lib/
 ├── main.dart
 ├── constants.dart
 ├── services/
 │    └── web3_service.dart
 ├── abi.json
```

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/BHANJATANMAYA/first_dapp.git
cd first_dapp
```

### 2️⃣ Install Dependencies

```bash
flutter pub get
```

### 3️⃣ Setup Environment Variables

Create a `.env` file in the root directory:

```
RPC_URL=your_sepolia_rpc_url
PRIVATE_KEY=your_test_wallet_private_key
CONTRACT_ADDRESS=your_contract_address
```

---

### 4️⃣ Run the App

```bash
flutter run
```

---

## 🔐 Security Note

* This project uses a private key for testing purposes only.
* Do NOT use your main wallet.
* Never expose your `.env` file publicly.

---

## 🚀 Future Improvements

* 🔐 MetaMask / WalletConnect integration (remove private key)
* 🎨 UI/UX improvements
* 🌐 Multi-contract support
* 📦 Production deployment

---

## 📄 License

This project is open-source and available under the MIT License.

---

## 🙌 Acknowledgements

Built as a learning project to explore Flutter + Web3 integration.
