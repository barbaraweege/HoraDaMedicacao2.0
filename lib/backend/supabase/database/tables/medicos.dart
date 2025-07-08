import '../database.dart';

class MedicosTable extends SupabaseTable<MedicosRow> {
  @override
  String get tableName => 'medicos';

  @override
  MedicosRow createRow(Map<String, dynamic> data) => MedicosRow(data);
}

class MedicosRow extends SupabaseDataRow {
  MedicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get area => getField<String>('area');
  set area(String? value) => setField<String>('area', value);
}
