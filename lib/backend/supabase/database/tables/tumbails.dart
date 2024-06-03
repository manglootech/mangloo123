import '../database.dart';

class TumbailsTable extends SupabaseTable<TumbailsRow> {
  @override
  String get tableName => 'tumbails';

  @override
  TumbailsRow createRow(Map<String, dynamic> data) => TumbailsRow(data);
}

class TumbailsRow extends SupabaseDataRow {
  TumbailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TumbailsTable();

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get tags => getField<String>('tags');
  set tags(String? value) => setField<String>('tags', value);

  String? get tumbail => getField<String>('tumbail');
  set tumbail(String? value) => setField<String>('tumbail', value);

  String? get descrpcion => getField<String>('descrpcion');
  set descrpcion(String? value) => setField<String>('descrpcion', value);

  int get idDelCreador => getField<int>('id del creador')!;
  set idDelCreador(int value) => setField<int>('id del creador', value);

  String? get audio => getField<String>('audio');
  set audio(String? value) => setField<String>('audio', value);
}
