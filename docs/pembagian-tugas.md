# Pembagian Tugas & Konvensi Kolaborasi

## Peran Anggota
| Anggota | GitHub | Peran | Tanggung jawab |
|---|---|---|---|
| Miko | lumienmiko | Project Manager & Backend Lead | Koordinasi; konfigurasi Firebase Auth & Firestore; struktur database dan hak akses |
| Estu | esturamadani75-prog | UI/UX & Member Interface Lead | Rancangan UI; halaman login, beranda, katalog, detail; implementasi UI anggota |
| Hammam | hammamhehe | Borrowing Feature Lead | Inisialisasi proyek Flutter dan navigasi; form peminjaman; proses dan status transaksi |
| Ramdhoni | Ramdhani23 | Admin & Documentation Lead | UI dashboard admin; kelola inventaris dan persetujuan; dokumentasi dan progress SPADA |

## Target Minggu 1
| Anggota | Tugas pokok | Target commit |
|---|---|---|
| Miko | Konfigurasi awal Firebase dan struktur Firestore | `docs: perancangan struktur database dan konfigurasi Firebase` |
| Estu | Wireframe UI anggota (Login, Beranda, Katalog, Detail) | `docs: rancangan antarmuka anggota` |
| Hammam | Inisialisasi proyek Flutter, rancangan navigasi dan form peminjaman | `chore: inisialisasi proyek Flutter` |
| Ramdhoni | Wireframe UI admin dan dokumentasi progress | `docs: rancangan dashboard admin dan dokumentasi proyek` |

## Alur Git
- Branch utama: `main` (selalu bisa dijalankan).
- Branch fitur: `feat/<nama-fitur>`, `docs/<topik>`, `fix/<bug>`; digabung lewat Pull Request.
- Commit kecil dan sering, push berkala; setiap anggota commit di bagiannya masing-masing.
- Jangan commit `google-services.json`, `firebase_options.dart`, password, atau token.

## Format Pesan Commit
`<tipe>: <deskripsi singkat>`

| Tipe | Pemakaian |
|---|---|
| `feat` | fitur baru |
| `fix` | perbaikan bug |
| `docs` | dokumentasi / rancangan |
| `chore` | konfigurasi, inisialisasi |
| `refactor` | merapikan kode |
| `test` | pengujian |

Contoh: `feat: tambah halaman katalog barang`, `fix: stok tidak berkurang saat disetujui`.

> Pembagian tugas dapat disesuaikan berdasarkan kesepakatan kelompok.
