import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'editar_medicamento_widget.dart' show EditarMedicamentoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditarMedicamentoModel extends FlutterFlowModel<EditarMedicamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeMedicamento widget.
  FocusNode? nomeMedicamentoFocusNode;
  TextEditingController? nomeMedicamentoTextController;
  String? Function(BuildContext, String?)?
      nomeMedicamentoTextControllerValidator;
  // State field(s) for DropDownFreq widget.
  String? dropDownFreqValue;
  FormFieldController<String>? dropDownFreqValueController;
  // State field(s) for TextFieldHoras widget.
  FocusNode? textFieldHorasFocusNode;
  TextEditingController? textFieldHorasTextController;
  String? Function(BuildContext, String?)?
      textFieldHorasTextControllerValidator;
  // State field(s) for SwitchContinuo widget.
  bool? switchContinuoValue;
  // State field(s) for TextFieldDiaInicio widget.
  FocusNode? textFieldDiaInicioFocusNode;
  TextEditingController? textFieldDiaInicioTextController;
  late MaskTextInputFormatter textFieldDiaInicioMask;
  String? Function(BuildContext, String?)?
      textFieldDiaInicioTextControllerValidator;
  // State field(s) for TextFieldDiaFim widget.
  FocusNode? textFieldDiaFimFocusNode;
  TextEditingController? textFieldDiaFimTextController;
  late MaskTextInputFormatter textFieldDiaFimMask;
  String? Function(BuildContext, String?)?
      textFieldDiaFimTextControllerValidator;
  // State field(s) for TextFieldDosagem widget.
  FocusNode? textFieldDosagemFocusNode;
  TextEditingController? textFieldDosagemTextController;
  String? Function(BuildContext, String?)?
      textFieldDosagemTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeMedicamentoFocusNode?.dispose();
    nomeMedicamentoTextController?.dispose();

    textFieldHorasFocusNode?.dispose();
    textFieldHorasTextController?.dispose();

    textFieldDiaInicioFocusNode?.dispose();
    textFieldDiaInicioTextController?.dispose();

    textFieldDiaFimFocusNode?.dispose();
    textFieldDiaFimTextController?.dispose();

    textFieldDosagemFocusNode?.dispose();
    textFieldDosagemTextController?.dispose();
  }
}
