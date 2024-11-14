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
```git init``` -> untuk mengcreate/ menginisialisasikan git di local
```git add .``` -> untuk mengadd semua file yang ingin di commit
```git commit -m "komentarnya"``` untuk mengcommit file yang sudah di add dengan komentar
```git branch -M main``` -> untuk memasuki ke stagig area pada branch mai
```git remote add origin <https/ssh>``` -> untuk remote pada origin terhadap https/ssh yang telah di masukkan
```git push origin main``` -> untuk push yang telah di commit dari local ke github
   