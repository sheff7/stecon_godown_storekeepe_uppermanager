import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NetworkConnectivity {
  ConnectivityResult? _connectivityResult;
  bool? _isConnectionSuccessful;

  Future<String> tryConnection() async {
    String? status;
    try {
      final response = await InternetAddress.lookup('https://www.google.com');

      _isConnectionSuccessful = response.isNotEmpty;
      print("online try");
      status = 'online';
    } on SocketException catch (e) {
      print("offline try");
      status = 'offline';
      _isConnectionSuccessful = false;
    }
    return status;
  }

  Future<bool?> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    bool? networkBool;
    if (result == ConnectivityResult.wifi) {
      print('Connected to a Wi-Fi network');
      networkBool=true;
    } else if (result == ConnectivityResult.mobile) {
      print('Connected to a mobile network');
      networkBool=true;
    } else {
      print('Not connected to any network');
      networkBool=false;
    }

    _connectivityResult = result;

    return networkBool;
  }
}
