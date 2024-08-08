import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'empty_links_widget.dart' show EmptyLinksWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmptyLinksModel extends FlutterFlowModel<EmptyLinksWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getLinkToken)] action in LinkButton widget.
  ApiCallResponse? generatedLinkToken;
  // Stores action output result for [Custom Action - startPlaid] action in LinkButton widget.
  String? publicToken;
  // Stores action output result for [Backend Call - API (getAccessTokenAndSaveIt)] action in LinkButton widget.
  ApiCallResponse? generatedAccessToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
