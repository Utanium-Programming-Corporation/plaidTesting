import '/backend/api_requests/api_calls.dart';
import '/components/blances_list_widget.dart';
import '/components/transaction_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'item_details_widget.dart' show ItemDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetailsModel extends FlutterFlowModel<ItemDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for blancesList component.
  late BlancesListModel blancesListModel;
  // Model for transactionList component.
  late TransactionListModel transactionListModel;

  @override
  void initState(BuildContext context) {
    blancesListModel = createModel(context, () => BlancesListModel());
    transactionListModel = createModel(context, () => TransactionListModel());
  }

  @override
  void dispose() {
    blancesListModel.dispose();
    transactionListModel.dispose();
  }
}
