import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailAddressLog widget.
  FocusNode? emailAddressLogFocusNode;
  TextEditingController? emailAddressLogTextController;
  String? Function(BuildContext, String?)?
      emailAddressLogTextControllerValidator;
  String? _emailAddressLogTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira um e-mail válido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail inválido';
    }
    return null;
  }

  // State field(s) for senhaLog widget.
  FocusNode? senhaLogFocusNode;
  TextEditingController? senhaLogTextController;
  late bool senhaLogVisibility;
  String? Function(BuildContext, String?)? senhaLogTextControllerValidator;
  String? _senhaLogTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira uma senha válida';
    }

    if (val.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }

    return null;
  }

  // State field(s) for emailAddress_CreateCad widget.
  FocusNode? emailAddressCreateCadFocusNode;
  TextEditingController? emailAddressCreateCadTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateCadTextControllerValidator;
  String? _emailAddressCreateCadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira um e-mail válido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail inválido';
    }
    return null;
  }

  // State field(s) for senha_CreateCad widget.
  FocusNode? senhaCreateCadFocusNode;
  TextEditingController? senhaCreateCadTextController;
  late bool senhaCreateCadVisibility;
  String? Function(BuildContext, String?)?
      senhaCreateCadTextControllerValidator;
  String? _senhaCreateCadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira uma senha válida';
    }

    if (val.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }

    return null;
  }

  // State field(s) for SenhaConfirmCad widget.
  FocusNode? senhaConfirmCadFocusNode;
  TextEditingController? senhaConfirmCadTextController;
  late bool senhaConfirmCadVisibility;
  String? Function(BuildContext, String?)?
      senhaConfirmCadTextControllerValidator;
  String? _senhaConfirmCadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Insira uma senha válida';
    }

    if (val.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressLogTextControllerValidator =
        _emailAddressLogTextControllerValidator;
    senhaLogVisibility = false;
    senhaLogTextControllerValidator = _senhaLogTextControllerValidator;
    emailAddressCreateCadTextControllerValidator =
        _emailAddressCreateCadTextControllerValidator;
    senhaCreateCadVisibility = false;
    senhaCreateCadTextControllerValidator =
        _senhaCreateCadTextControllerValidator;
    senhaConfirmCadVisibility = false;
    senhaConfirmCadTextControllerValidator =
        _senhaConfirmCadTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressLogFocusNode?.dispose();
    emailAddressLogTextController?.dispose();

    senhaLogFocusNode?.dispose();
    senhaLogTextController?.dispose();

    emailAddressCreateCadFocusNode?.dispose();
    emailAddressCreateCadTextController?.dispose();

    senhaCreateCadFocusNode?.dispose();
    senhaCreateCadTextController?.dispose();

    senhaConfirmCadFocusNode?.dispose();
    senhaConfirmCadTextController?.dispose();
  }
}
