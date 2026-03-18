import 'package:flutter_dotenv/flutter_dotenv.dart';

final String rpcUrl = dotenv.get('YOUR_RPC_URL');

final String privateKey = dotenv.get('YOUR_PRIVATE_KEY'); // testing only

final String contractAddress = dotenv.get('YOUR_CONTRACT_ADDRESS');
