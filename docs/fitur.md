# Fitur & Alur Navigasi - ORGLOAN

## Masalah yang Diselesaikan
1. Pencatatan peminjaman tidak terorganisasi (buku / pesan pribadi).
2. Anggota sulit mengetahui jumlah dan kondisi barang sebelum meminjam.
3. Pengurus sulit memantau peminjam dan pengembalian sesuai jadwal.
4. Riwayat transaksi sulit ditelusuri tanpa sistem terpusat.

## Target Pengguna
- **Anggota** Himpunan Mahasiswa Prodi Pendidikan Informatika (peminjam).
- **Admin / Pengurus** himpunan (pengelola inventaris dan persetujuan).

## Tiga Fitur Utama (terintegrasi)
1. **Katalog & manajemen inventaris** (`items`): anggota melihat, admin mengelola.
2. **Pengajuan & persetujuan peminjaman** (`borrowings`): anggota mengajukan, admin menyetujui/menolak.
3. **Pengembalian & riwayat**: admin konfirmasi pengembalian, stok diperbarui, riwayat tersimpan terpusat.

Ketiganya terintegrasi: persetujuan mengurangi stok katalog, pengembalian menambahnya kembali, dan keduanya tercatat di riwayat.

## Daftar Halaman (rancangan)
| No | Halaman | Pengguna |
|---|---|---|
| 01 | Login (dan registrasi) | Semua |
| 02 | Beranda Anggota | Anggota |
| 03 | Katalog Barang | Anggota |
| 04 | Detail Barang | Anggota |
| 05 | Form Peminjaman | Anggota |
| 06 | Riwayat Peminjaman | Anggota |
| 07 | Dashboard Admin | Admin |
| 08 | Kelola Barang | Admin |
| 09 | Kelola Peminjaman (permintaan masuk + pengembalian) | Admin |

## Alur Navigasi
```
Login -> (role = member) -> Beranda -> Katalog -> Detail -> Form Peminjaman -> Riwayat
      -> (role = admin)  -> Dashboard -> Kelola Barang
                                      -> Kelola Peminjaman (setuju/tolak, konfirmasi kembali)
```
Bottom navigation anggota: Beranda, Barang, Riwayat, Profil.
