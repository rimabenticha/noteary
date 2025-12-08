import 'package:equatable/equatable.dart';

class NoteModel extends Equatable {
  final String? id;
  final String? title;
  final String? content;
  final DateTime? createdAt;

  const NoteModel({this.id, this.title, this.content, this.createdAt});

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
    id: json['id'] as String?,
    title: json['title'] as String?,
    content: json['content'] as String?,
    createdAt: json['createdAt'] as DateTime?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'content': content,
    'createdAt': createdAt,
  };

  NoteModel copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
  }) {
    return NoteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title, content, createdAt];
}
