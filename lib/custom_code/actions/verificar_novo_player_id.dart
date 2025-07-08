// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool> verificarNovoPlayerId(
  String userId, // AGORA CORRETO!
) async {
  final playerId = FFAppState().playerid;

  if (userId.isEmpty || playerId.isEmpty || playerId == 'EMPTY') {
    return false;
  }

  final response = await Supabase.instance.client
      .from('players')
      .select('id')
      .eq('user_id', userId)
      .eq('player_id', playerId)
      .maybeSingle();

  if (response == null) {
    return true; // Pode inserir
  } else {
    return false; // Já existe
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
