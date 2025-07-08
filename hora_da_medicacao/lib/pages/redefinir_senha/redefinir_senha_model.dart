import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'redefinir_senha_widget.dart' show RedefinirSenhaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RedefinirSenhaModel extends FlutterFlowModel<RedefinirSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  // State field(s) for TextFieldConfSenha widget.
  FocusNode? textFieldConfSenhaFocusNode;
  TextEditingController? textFieldConfSenhaTextController;
  late bool textFieldConfSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldSenhaVisibility = false;
    textFieldConfSenhaVisibility = false;
  }

  @override
  void dispose() {
    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();

    textFieldConfSenhaFocusNode?.dispose();
    textFieldConfSenhaTextController?.dispose();
  }
}
