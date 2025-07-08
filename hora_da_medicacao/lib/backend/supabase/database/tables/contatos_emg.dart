import '../database.dart';

class ContatosEmgTable extends SupabaseTable<ContatosEmgRow> {
  @override
  String get tableName => 'ContatosEmg';

  @override
  ContatosEmgRow createRow(Map<String, dynamic> data) => ContatosEmgRow(data);
}

class ContatosEmgRow extends SupabaseDataRow {
  ContatosEmgRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContatosEmgTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get parentesco => getField<String>('parentesco');
  set parentesco(String? value) => setField<String>('parentesco', value);
}
