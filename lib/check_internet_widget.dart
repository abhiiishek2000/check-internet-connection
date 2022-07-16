import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/check_internet_connection_provider.dart';

class CheckInternetWidget extends StatefulWidget {
  const CheckInternetWidget({Key? key}) : super(key: key);

  @override
  _CheckInternetWidgetState createState() => _CheckInternetWidgetState();
}

class _CheckInternetWidgetState extends State<CheckInternetWidget> {
  CheckInternet? _checkInternet;

  @override
  void initState() {
    _checkInternet = Provider.of<CheckInternet>(context, listen: false);
    _checkInternet?.checkRealtimeConnection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Internet Connectivity"),
      ),
      body: Consumer<CheckInternet>(builder: (context, provider, child) {
        return Container(
          width: double.maxFinite,
          height: 40,
          color: provider.status == "Offline" ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.status)
            ],
          ),
        );
      }),
    );
  }
}
