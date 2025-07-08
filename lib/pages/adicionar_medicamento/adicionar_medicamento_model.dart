import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'adicionar_medicamento_widget.dart' show AdicionarMedicamentoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AdicionarMedicamentoModel
    extends FlutterFlowModel<AdicionarMedicamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeMedicamento widget.
  FocusNode? nomeMedicamentoFocusNode;
  TextEditingController? nomeMedicamentoTextController;
  String? Function(BuildContext, String?)?
      nomeMedicamentoTextControllerValidator;
  // State field(s) for DropDownFrequencia widget.
  String? dropDownFrequenciaValue;
  FormFieldController<String>? dropDownFrequenciaValueController;
  // State field(s) for intervalo widget.
  FocusNode? intervaloFocusNode;
  TextEditingController? intervaloTextController;
  String? Function(BuildContext, String?)? intervaloTextControllerValidator;
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
  // State field(s) for dosagem widget.
  FocusNode? dosagemFocusNode;
  TextEditingController? dosagemTextController;
  String? Function(BuildContext, String?)? dosagemTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeMedicamentoFocusNode?.dispose();
    nomeMedicamentoTextController?.dispose();

    intervaloFocusNode?.dispose();
    intervaloTextController?.dispose();

    textFieldDiaInicioFocusNode?.dispose();
    textFieldDiaInicioTextController?.dispose();

    textFieldDiaFimFocusNode?.dispose();
    textFieldDiaFimTextController?.dispose();

    dosagemFocusNode?.dispose();
    dosagemTextController?.dispose();
  }
}
