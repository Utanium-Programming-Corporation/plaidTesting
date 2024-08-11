// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'index.dart'; // Imports other custom actions
import 'dart:developer' as logger;
import 'package:plaid_flutter/plaid_flutter.dart';

Future<String?> startPlaid(String generatedToken) async {
  // Add your function code here!

  var notFinished = true;
  var hasError = false;
  var publicToken = '';
  var onExitError = "Unkown Error";

  void _onSuccess(LinkSuccess event) {
    final token = event.publicToken;
    final metadata = event.metadata.description();
    print("onSuccess: $token, metadata: $metadata");
    publicToken = token;
    notFinished = false;
  }

  void _onExit(LinkExit event) {
    final metadata = event.metadata.description();
    final error = event.error?.description();
    print("onExit metadata: $metadata, error: $error");
    hasError = true;
    onExitError = error ?? "Erorr not defined";
    notFinished = false;
  }

  LinkConfiguration configuration = LinkTokenConfiguration(
    token: generatedToken,
  );

  PlaidLink.onSuccess.listen(_onSuccess);
  PlaidLink.onExit.listen(_onExit);

  final Result = PlaidLink.open(configuration: configuration);

  while (notFinished) {
    await Future.delayed(Duration(milliseconds: 500));
  }

  if (hasError) {
    print(onExitError);
    return null;
  } else {
    return publicToken;
  }
}
