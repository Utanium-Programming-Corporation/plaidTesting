import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/transaction_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for transactionList component.
  late TransactionListModel transactionListModel;

  @override
  void initState(BuildContext context) {
    transactionListModel = createModel(context, () => TransactionListModel());
  }

  @override
  void dispose() {
    transactionListModel.dispose();
  }
}
