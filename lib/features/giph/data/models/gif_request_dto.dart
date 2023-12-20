import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_app/features/giph/data/models/gif_dto.dart';

part 'gif_request_dto.g.dart';

@JsonSerializable()
class GifRequestQueriesDto {
  const GifRequestQueriesDto({
    this.q,
    required this.offset,
    required this.limit,
  });

  @JsonKey(includeIfNull: false)
  final String? q;
  @JsonKey(includeIfNull: false)
  final int? offset;
  @JsonKey(includeIfNull: false)
  final int? limit;

  Map<String, dynamic> toJson() => _$GifRequestQueriesDtoToJson(this);
}

@JsonSerializable()
class GifRequestDto {
  const GifRequestDto({
    required this.data,
    required this.pagination,
    required this.meta,
  });

  final List<GifDto>? data;
  final PaginationDto? pagination;
  final MetaDto? meta;

  factory GifRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GifRequestDtoFromJson(json);
}

@JsonSerializable()
class PaginationDto {
  PaginationDto({
    this.totalCount,
    this.count,
    this.offset,
  });

  @JsonKey(name: 'total_count')
  final int? totalCount;
  final int? count;
  final int? offset;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);
}

@JsonSerializable()
class MetaDto {
  MetaDto({
    required this.status,
    required this.msg,
    required this.respondeId,
  });

  final int? status;
  final String? msg;
  @JsonKey(name: 'response_id')
  final String? respondeId;

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);
}
