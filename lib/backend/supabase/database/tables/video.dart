import '../database.dart';

class VideoTable extends SupabaseTable<VideoRow> {
  @override
  String get tableName => 'video';

  @override
  VideoRow createRow(Map<String, dynamic> data) => VideoRow(data);
}

class VideoRow extends SupabaseDataRow {
  VideoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VideoTable();

  int get tags => getField<int>('TAGS')!;
  set tags(int value) => setField<int>('TAGS', value);

  String? get lINKVideo => getField<String>('LINK video');
  set lINKVideo(String? value) => setField<String>('LINK video', value);

  String? get nombre => getField<String>('NOMBRE');
  set nombre(String? value) => setField<String>('NOMBRE', value);

  String? get autor => getField<String>('AUTOR');
  set autor(String? value) => setField<String>('AUTOR', value);

  String? get categoria => getField<String>('CATEGORIA');
  set categoria(String? value) => setField<String>('CATEGORIA', value);

  String? get idCreador => getField<String>('ID CREADOR');
  set idCreador(String? value) => setField<String>('ID CREADOR', value);

  String? get thumbnail => getField<String>('Thumbnail');
  set thumbnail(String? value) => setField<String>('Thumbnail', value);

  String? get descripcion => getField<String>('DESCRIPCION');
  set descripcion(String? value) => setField<String>('DESCRIPCION', value);
}
