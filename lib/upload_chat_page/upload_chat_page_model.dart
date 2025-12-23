import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'upload_chat_page_widget.dart' show UploadChatPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadChatPageModel extends FlutterFlowModel<UploadChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataChat = false;
  FFUploadedFile uploadedLocalFile_uploadDataChat =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (AnalyzeConversation)] action in Button widget.
  ApiCallResponse? apiResultvd1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
