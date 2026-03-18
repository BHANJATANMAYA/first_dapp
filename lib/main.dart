import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'web3_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Web3Service web3 = Web3Service();
  String message = "Loading...";
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadMessage();
  }

  Future<void> loadMessage() async {
    try {
      final msg = await web3.getMessage();
      setState(() {
        message = msg;
      });
    } catch (e) {
      setState(() {
        message = "Error loading message";
      });
    }
  }

  bool isLoading = false;

  Future<void> sendMessage() async {
    setState(() => isLoading = true);

    await web3.setMessage(controller.text);
    controller.clear();
    await loadMessage();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My First DApp 🚀"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Last Sent Message:", style: TextStyle(fontSize: 18)),
            Text(message, style: TextStyle(fontSize: 22)),

            const SizedBox(height: 50),

            TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "Enter new message"),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: isLoading ? null : sendMessage,
              child: isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text("Send to Blockchain"),
            ),
          ],
        ),
      ),
    );
  }
}
