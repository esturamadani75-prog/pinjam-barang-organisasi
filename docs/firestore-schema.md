# Skema Cloud Firestore - ORGLOAN

Tiga koleksi utama. Data pengembalian disimpan dalam dokumen peminjaman yang sama agar pengelolaan transaksi lebih sederhana.

## Koleksi `users`
Dokumen ID = `uid` dari Firebase Authentication.

| Field | Tipe | Keterangan |
|---|---|---|
| uid | String | Primary key (dari Firebase Auth) |
| name | String | Nama pengguna |
| email | String | Email |
| role | String | `admin` atau `member` |
| created_at | Timestamp | Waktu pendaftaran |

## Koleksi `items`
Data inventaris organisasi.

| Field | Tipe | Keterangan |
|---|---|---|
| item_id | String | Primary key |
| name | String | Nama barang |
| category | String | Kategori (mis. Elektronik, Audio, Kabel) |
| description | String | Deskripsi barang |
| total_stock | Integer | Jumlah seluruh stok |
| available_stock | Integer | Jumlah stok tersedia |
| condition | String | Kondisi barang |
| image_url | String | Alamat gambar barang |
| created_at | Timestamp | Waktu dibuat |

## Koleksi `borrowings`
Transaksi peminjaman dan pengembalian.

| Field | Tipe | Keterangan |
|---|---|---|
| borrowing_id | String | Primary key |
| user_id | String | Referensi ke `users` |
| borrower_name | String | Nama peminjam |
| item_id | String | Referensi ke `items` |
| item_name | String | Nama barang |
| quantity | Integer | Jumlah dipinjam |
| borrow_date | Timestamp | Tanggal peminjaman |
| due_date | Timestamp | Batas pengembalian |
| return_date | Timestamp | Tanggal pengembalian aktual (null sebelum kembali) |
| status | String | `pending`, `approved`, `rejected`, `returned` |
| admin_note | String | Catatan admin |
| admin_id | String | UID admin yang memproses |
| created_at | Timestamp | Waktu pengajuan |

## Alur Status

```
pending -> approved -> returned
        -> rejected
```

- `pending -> approved`: `items.available_stock` berkurang sebesar `quantity`.
- `approved -> returned`: `return_date` diisi, `available_stock` bertambah kembali.
- `pending -> rejected`: stok tidak berubah.

Pembaruan stok dan status sebaiknya memakai **Firestore transaction / batched write** agar konsisten.

## Contoh Dokumen

```json
// items/item_001
{
  "name": "Proyektor Epson",
  "category": "Elektronik",
  "description": "Proyektor untuk kegiatan himpunan",
  "total_stock": 2,
  "available_stock": 2,
  "condition": "Baik",
  "image_url": "",
  "created_at": "<Timestamp>"
}
```
