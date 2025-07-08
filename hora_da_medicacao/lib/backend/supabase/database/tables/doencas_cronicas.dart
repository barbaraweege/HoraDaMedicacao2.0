import '../database.dart';

class DoencasCronicasTable extends SupabaseTable<DoencasCronicasRow> {
  @override
  String get tableName => 'doencasCronicas';

  @override
  DoencasCronicasRow createRow(Map<String, dynamic> data) =>
      DoencasCronicasRow(data);
}

class DoencasCronicasRow extends SupabaseDataRow {
  DoencasCronicasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DoencasCronicasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get doenca => getField<String>('doenca');
  set doenca(String? value) => setField<String>('doenca', value);
}
