import '../database.dart';

class MedicamentoTable extends SupabaseTable<MedicamentoRow> {
  @override
  String get tableName => 'medicamento';

  @override
  MedicamentoRow createRow(Map<String, dynamic> data) => MedicamentoRow(data);
}

class MedicamentoRow extends SupabaseDataRow {
  MedicamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicamentoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get frequencia => getField<String>('frequencia');
  set frequencia(String? value) => setField<String>('frequencia', value);

  int? get intervaloHoras => getField<int>('intervalo_horas');
  set intervaloHoras(int? value) => setField<int>('intervalo_horas', value);

  String? get dosagem => getField<String>('dosagem');
  set dosagem(String? value) => setField<String>('dosagem', value);

  bool? get usoContinuo => getField<bool>('uso_continuo');
  set usoContinuo(bool? value) => setField<bool>('uso_continuo', value);

  DateTime? get horaPrimeiraDose => getField<DateTime>('hora_primeira_dose');
  set horaPrimeiraDose(DateTime? value) =>
      setField<DateTime>('hora_primeira_dose', value);

  DateTime? get proximaDose => getField<DateTime>('proxima_dose');
  set proximaDose(DateTime? value) => setField<DateTime>('proxima_dose', value);

  String? get diaInicio => getField<String>('dia_inicio');
  set diaInicio(String? value) => setField<String>('dia_inicio', value);

  String? get diaFim => getField<String>('dia_fim');
  set diaFim(String? value) => setField<String>('dia_fim', value);
}
