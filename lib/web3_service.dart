import 'package:dapp/services/contracts.dart';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

class Web3Service {
  late Web3Client client;

  Web3Service() {
    client = Web3Client(rpcUrl, Client());
  }

  Future<DeployedContract> loadContract() async {
    return DeployedContract(
      ContractAbi.fromJson(abi, "MessageStorage"),
      EthereumAddress.fromHex(contractAddress),
    );
  }

  Future<String> getMessage() async {
    final contract = await loadContract();
    final function = contract.function("getMessage");

    final result = await client.call(
      contract: contract,
      function: function,
      params: [],
    );

    return result[0];
  }

  Future<void> setMessage(String msg) async {
    final contract = await loadContract();
    final function = contract.function("setMessage");

    final credentials = EthPrivateKey.fromHex(privateKey);

    await client.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: function,
        parameters: [msg],
      ),
      chainId: 11155111,
    );
  }
}