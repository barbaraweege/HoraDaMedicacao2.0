import '../database.dart';

class InfoUsersTable extends SupabaseTable<InfoUsersRow> {
  @override
  String get tableName => 'InfoUsers';

  @override
  InfoUsersRow createRow(Map<String, dynamic> data) => InfoUsersRow(data);
}

class InfoUsersRow extends SupabaseDataRow {
  InfoUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InfoUsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get idade => getField<String>('idade');
  set idade(String? value) => setField<String>('idade', value);

  String? get sangue => getField<String>('sangue');
  set sangue(String? value) => setField<String>('sangue', value);

  String? get dataNascimento => getField<String>('data_nascimento');
  set dataNascimento(String? value) =>
      setField<String>('data_nascimento', value);
}
