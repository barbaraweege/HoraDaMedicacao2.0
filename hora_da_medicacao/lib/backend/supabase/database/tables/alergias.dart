import '../database.dart';

class AlergiasTable extends SupabaseTable<AlergiasRow> {
  @override
  String get tableName => 'alergias';

  @override
  AlergiasRow createRow(Map<String, dynamic> data) => AlergiasRow(data);
}

class AlergiasRow extends SupabaseDataRow {
  AlergiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlergiasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get alergia => getField<String>('alergia');
  set alergia(String? value) => setField<String>('alergia', value);
}
