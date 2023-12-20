// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GifRequestQueriesDto _$GifRequestQueriesDtoFromJson(
        Map<String, dynamic> json) =>
    GifRequestQueriesDto(
      q: json['q'] as String?,
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$GifRequestQueriesDtoToJson(
    GifRequestQueriesDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('q', instance.q);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  return val;
}

GifRequestDto _$GifRequestDtoFromJson(Map<String, dynamic> json) =>
    GifRequestDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GifDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationDto.fromJson(json['pagination'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GifRequestDtoToJson(GifRequestDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
      'meta': instance.meta,
    };

PaginationDto _$PaginationDtoFromJson(Map<String, dynamic> json) =>
    PaginationDto(
      totalCount: json['total_count'] as int?,
      count: json['count'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$PaginationDtoToJson(PaginationDto instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'count': instance.count,
      'offset': instance.offset,
    };

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) => MetaDto(
      status: json['status'] as int?,
      msg: json['msg'] as String?,
      respondeId: json['response_id'] as String?,
    );

Map<String, dynamic> _$MetaDtoToJson(MetaDto instance) => <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'response_id': instance.respondeId,
    };
