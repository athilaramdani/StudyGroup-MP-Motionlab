# **Study Group MP - Week 1**  
**Athila Ramdani Saputra**  
**NIM: 103012300132**  

---
## Rangkuman Week 1: Version Control Git
Pada pertemuan pertama Study Group dengan pemateri mas Zayid dan juga pada aslab serta rekan2 intern, kita membahas dasar-dasar Version Control menggunakan Git diantaranya :
1. **Membuat Akun Git**
- Para intern yang masih belum membuat akun github diajarkan bagaimana cara membuat akun github dengan cara mendaftarkan email dan membuat password
2. **Membuat Repository**
- selanjutnya diberikan cara cara untuk pembuatan repo yaitu
### Membuat Repository Melalui Website GitHub
Buka GitHub -> Klik tombol "+" di kanan atas -> Pilih "New repository" -> Isi nama repository dan pengaturan lainnya -> Klik "Create repository"
### Membuat Repository Lokal dan Menghubungkannya ke GitHub
Buka Terminal/GitBash (sesuaikan dengan folder), lalu lakukan command ini
| **Perintah**                      | **Fungsi**                                                                                                   |
|------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `git init`                         | Menginisialisasi repository Git lokal di folder yang dipilih.                                               |
| `git add .`                        | Menambahkan semua file yang ada di folder ke staging area.                                                  |
| `git commit -m "komentarnya"`      | Menyimpan perubahan yang ada di staging area ke repository lokal dengan pesan commit.                       |
| `git branch -M main`               | Mengubah nama branch default menjadi `main`.                                                                |
| `git remote add origin <url>`      | Menghubungkan repository lokal ke repository GitHub melalui URL (HTTPS/SSH).                                |
| `git push origin main`             | Mengunggah commit dari branch `main` lokal ke repository `main` di GitHub.                                  |

### **Up Repo Memakai SSH**

Alur dalam up repo memakai SSH adalah sebagai berikut:  

| **Langkah**                          | **Perintah/Proses**                                                                                                     |
|--------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| Membuat SSH Key                      | Jalankan perintah: `ssh-keygen -t ed25519 -C "emailsaya@gmail.com"`, lalu kita disuruh mengenter File untuk menyimpan key nya, enter saja lalu enter lagi 2 kali untuk skip passphrase sampai akan muncul lokasi penyimpanan identification, public key, tampilan key fingerprint dan keys random art                                                     |
| Menyalin SSH Key                     | Gunakan perintah: `clip < ~/.ssh/id_ed25519.pub`.                                                                      |
| Menambahkan Key ke GitHub            | Masukkan key yang telah disalin ke **Profile > Settings > SSH and GPG Keys > New SSH Key**.                             |
| Mengisi Title dan Key                | Beri judul pada key dan paste key yang disalin dari langkah sebelumnya.                                                 |
| Gunakan Alur di poin membuat repository lokal | ikuti alur nya dan setelah di push muncul gambar seperti di bawah tabel. |
| Fungsi SSH                           | Berguna untuk menghubungkan GitHub dengan komputer lokal secara aman.  |

Berikut adalah contoh gambar ilustrasi:  
![Contoh SSH Key](sshexample.png)

### **Daftar Syntax Git yang mungki terpakai**

| **Perintah**                      | **Fungsi**                                                                                                   |
|------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `git checkout [branch-name]`       | Berpindah ke branch lain yang sudah ada.                                                                   |
| `git branch`                       | Menampilkan daftar branch yang tersedia pada repository lokal.                                             |
| `git branch [branch-name]`         | Membuat branch baru dengan nama yang ditentukan.                                                           |
| `git status`                       | Menampilkan status repository lokal, termasuk file yang belum di-tracked, di-staged, atau siap di-commit.  |
| `git log`                          | Menampilkan riwayat commit pada branch saat ini.                                                           |
| `git stash`                        | Menyimpan perubahan yang belum di-commit ke dalam penyimpanan sementara (stash) tanpa mengubah file kerja. |
| `git stash apply`                  | Mengambil kembali perubahan yang disimpan di stash ke dalam workspace.                                     |
| `git push origin [branch-name]`    | Mengunggah commit dari branch tertentu ke repository di GitHub.                                            |
| `git pull`                         | Mengambil perubahan terbaru dari repository remote dan menggabungkannya dengan branch lokal.               |
| `git fetch`                        | Mengambil data terbaru dari repository remote tanpa menggabungkan ke branch lokal.                         |
| `git merge [branch-name]`          | Menggabungkan branch tertentu ke branch yang sedang aktif.                                                 |
| `git rebase [branch-name]`         | Memindahkan basis branch aktif ke branch lain untuk riwayat commit yang lebih bersih.                      |
| `git reset [file-name]`            | Membatalkan staging file tertentu.                                                                         |
| `git reset --hard [commit-id]`                 | Membatalkan semua perubahan pada branch lokal, termasuk perubahan yang belum di-commit.                    |
| `git revert [commit-id]`           | Membuat commit baru yang membatalkan perubahan dari commit tertentu.                                       |
| `git clone [url]`                  | Menggandakan repository remote ke dalam folder lokal.                                                      |

