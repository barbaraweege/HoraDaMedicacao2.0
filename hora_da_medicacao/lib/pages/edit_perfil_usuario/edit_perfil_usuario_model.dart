import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/modal/add_alergia/add_alergia_widget.dart';
import '/modal/add_contato_emg/add_contato_emg_widget.dart';
import '/modal/add_doenca/add_doenca_widget.dart';
import '/modal/add_medico/add_medico_widget.dart';
import 'dart:ui';
import 'edit_perfil_usuario_widget.dart' show EditPerfilUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditPerfilUsuarioModel extends FlutterFlowModel<EditPerfilUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextFieldIdade widget.
  FocusNode? textFieldIdadeFocusNode;
  TextEditingController? textFieldIdadeTextController;
  String? Function(BuildContext, String?)?
      textFieldIdadeTextControllerValidator;
  // State field(s) for TextFieldDataNascimento widget.
  FocusNode? textFieldDataNascimentoFocusNode;
  TextEditingController? textFieldDataNascimentoTextController;
  late MaskTextInputFormatter textFieldDataNascimentoMask;
  String? Function(BuildContext, String?)?
      textFieldDataNascimentoTextControllerValidator;
  // State field(s) for TextFieldSangue widget.
  FocusNode? textFieldSangueFocusNode;
  TextEditingController? textFieldSangueTextController;
  String? Function(BuildContext, String?)?
      textFieldSangueTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldIdadeFocusNode?.dispose();
    textFieldIdadeTextController?.dispose();

    textFieldDataNascimentoFocusNode?.dispose();
    textFieldDataNascimentoTextController?.dispose();

    textFieldSangueFocusNode?.dispose();
    textFieldSangueTextController?.dispose();
  }
}
