import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'dart:convert';
// import 'package:flutter/services.dart';

final String rpcUrl = dotenv.get('YOUR_RPC_URL');

final String privateKey = dotenv.get('YOUR_PRIVATE_KEY'); // testing only

final String contractAddress = dotenv.get('YOUR_CONTRACT_ADDRESS');


const String abi = '''[
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"internalType": "string",
				"name": "newMessage",
				"type": "string"
			}
		],
		"name": "MessageUpdated",
		"type": "event"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_message",
				"type": "string"
			}
		],
		"name": "setMessage",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getMessage",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]
''';



// Future<String> loadAbi() async {
//   return await rootBundle.loadString('lib/abi.json');
// }