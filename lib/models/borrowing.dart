import 'package:cloud_firestore/cloud_firestore.dart';

/// Status peminjaman pada koleksi `borrowings`.
enum BorrowStatus { pending, approved, rejected, returned }

/// Model koleksi `borrowings` (transaksi peminjaman dan pengembalian).
class Borrowing {
  final String id;
  final String userId;
  final String borrowerName;
  final String itemId;
  final String itemName;
  final int quantity;
  final DateTime borrowDate;
  final DateTime dueDate;
  final DateTime? returnDate;
  final BorrowStatus status;
  final String adminNote;
  final String adminId;
  final String purpose;

  const Borrowing({
    required this.id,
    required this.userId,
    required this.borrowerName,
    required this.itemId,
    required this.itemName,
    required this.quantity,
    required this.borrowDate,
    required this.dueDate,
    this.returnDate,
    this.status = BorrowStatus.pending,
    this.adminNote = '',
    this.adminId = '',
    this.purpose = '',
  });

  factory Borrowing.fromMap(String id, Map<String, dynamic> map) => Borrowing(
        id: id,
        userId: map['user_id'] ?? '',
        borrowerName: map['borrower_name'] ?? '',
        itemId: map['item_id'] ?? '',
        itemName: map['item_name'] ?? '',
        quantity: (map['quantity'] ?? 1) as int,
        borrowDate: (map['borrow_date'] as Timestamp).toDate(),
        dueDate: (map['due_date'] as Timestamp).toDate(),
        returnDate: (map['return_date'] as Timestamp?)?.toDate(),
        status: BorrowStatus.values.firstWhere(
          (s) => s.name == map['status'],
          orElse: () => BorrowStatus.pending,
        ),
        adminNote: map['admin_note'] ?? '',
        adminId: map['admin_id'] ?? '',
        purpose: map['purpose'] ?? '',
      );

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'borrower_name': borrowerName,
        'item_id': itemId,
        'item_name': itemName,
        'quantity': quantity,
        'borrow_date': Timestamp.fromDate(borrowDate),
        'due_date': Timestamp.fromDate(dueDate),
        'return_date':
            returnDate != null ? Timestamp.fromDate(returnDate!) : null,
        'status': status.name,
        'admin_note': adminNote,
        'admin_id': adminId,
        'purpose': purpose,
        'created_at': FieldValue.serverTimestamp(),
      };
}
