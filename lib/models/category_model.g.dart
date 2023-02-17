// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      sort: json['sort'] as int,
      create_date: json['create_date'] as String,
      update_date: json['update_date'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'sort': instance.sort,
      'create_date': instance.create_date,
      'update_date': instance.update_date,
    };
