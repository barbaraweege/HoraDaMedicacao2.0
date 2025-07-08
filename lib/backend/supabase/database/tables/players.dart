import '../database.dart';

class PlayersTable extends SupabaseTable<PlayersRow> {
  @override
  String get tableName => 'players';

  @override
  PlayersRow createRow(Map<String, dynamic> data) => PlayersRow(data);
}

class PlayersRow extends SupabaseDataRow {
  PlayersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlayersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get playerId => getField<String>('player_id')!;
  set playerId(String value) => setField<String>('player_id', value);

  bool get ativo => getField<bool>('ativo')!;
  set ativo(bool value) => setField<bool>('ativo', value);
}
