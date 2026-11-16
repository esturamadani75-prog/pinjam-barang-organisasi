import 'package:cloud_firestore/cloud_firestore.dart';

/// Model koleksi `items` (inventaris organisasi).
class Item {
  final String id;
  final String name;
  final String category;
  final String description;
  final int totalStock;
  final int availableStock;
  final String condition;
  final String imageUrl;
  final DateTime? createdAt;

  const Item({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.totalStock,
    required this.availableStock,
    required this.condition,
    this.imageUrl = '',
    this.createdAt,
  });

  factory Item.fromMap(String id, Map<String, dynamic> map) => Item(
        id: id,
        name: map['name'] ?? '',
        category: map['category'] ?? '',
        description: map['description'] ?? '',
        totalStock: (map['total_stock'] ?? 0) as int,
        availableStock: (map['available_stock'] ?? 0) as int,
        condition: map['condition'] ?? '',
        imageUrl: map['image_url'] ?? '',
        createdAt: (map['created_at'] as Timestamp?)?.toDate(),
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'category': category,
        'description': description,
        'total_stock': totalStock,
        'available_stock': availableStock,
        'condition': condition,
        'image_url': imageUrl,
        'created_at': createdAt != null
            ? Timestamp.fromDate(createdAt!)
            : FieldValue.serverTimestamp(),
      };
}
