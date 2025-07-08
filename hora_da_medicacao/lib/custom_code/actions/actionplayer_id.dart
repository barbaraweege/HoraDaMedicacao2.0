// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:async';

Future<String> actionplayerId() async {
  Completer<String> completer = Completer<String>();

  OneSignal.initialize('b8051e36-ea0c-496e-9a6d-4b5ebfe72659');
  OneSignal.Notifications.requestPermission(true);

  OneSignal.User.pushSubscription.addObserver((state) {
    final playerId = state.current.id;

    if (playerId != null && !completer.isCompleted) {
      FFAppState().update(() {
        FFAppState().playerid = playerId;
      });
      completer.complete(playerId);
    }
  });

  Future.delayed(Duration(seconds: 10), () {
    if (!completer.isCompleted) {
      completer.complete('');
    }
  });

  final result = await completer.future;
  return result;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
