��    z      �  �   �      H
     I
  �   _
  <        [     x     �     �     �     �  7   �               4  &   9  4   `  "   �  D   �  A   �  7   ?  !   w     �  "   �  A   �       #   4     X  #   p  -   �     �  $   �     �          0  %   J  F   p     �     �  *   �          &     @     Y     m     �  #   �     �     �  1   �  8   #  (   \     �  ,   �  *   �  *   �     #  ?   1  4   q     �     �      �     �  %     !   4  0   V  8   �  @   �            D   4     y  '   �  0   �  )   �  (     &   <     c     ~  '   �  )   �  '   �          ,     4     H  "   _  /   �  6   �  6   �  >         _     v  &   �  M   �  5   
  2   @  +   s  6   �     �  (   �       .   -     \      p     �     �     �  &   �       N   $  O   s     �     �  ,   �     &     ,  1   F     x     �     �  (   �  1   �  �         �  �   �  H   �  "   "     E     Q     j  !   �     �  7   �     �              2   #   B   V   -   �   i   �   L   1!  =   ~!  9   �!  *   �!  -   !"  X   O"  "   �"  /   �"  "   �"  /   #  6   N#  $   �#  /   �#     �#     �#     $  ,   $$  U   Q$     �$     �$  +   �$  "   �$     !%     <%     Y%     v%     �%  *   �%     �%     �%  6   &  G   >&  4   �&  &   �&  ;   �&  9   '  2   X'     �'  B   �'  4   �'     (     /(     J(  -   h(      �(  ,   �(  ,   �(  :   )  E   L)     �)     �)  L   �)     *  0   :*  ;   k*  )   �*  ,   �*  ,   �*     ++     D+  '   Z+  *   �+  /   �+  )   �+     ,     ,     *,  -   F,  =   t,  >   �,  E   �,  @   7-     x-     �-  "   �-  h   �-  5   3.  2   i.  4   �.  @   �.     /  6   (/     _/  4   ~/     �/     �/     �/     0  &   0  (   E0  !   n0  U   �0  U   �0     <1     Y1  ,   v1     �1  "   �1  @   �1     2     *2     02  -   K2  9   y2     X             Y   +       _   ^       c           ]          L   %   A      $              [   a               ,   r   b      d       )       f       U         G       \       u   M   x          <       9   =   q   "   v   i   &       E   z                  V             j   m   6      ;       h   l   e   p       k       *       3   o   >   s           /   J   w   5   P   :   .   N   `   
                  !   8   T   0       @          B   #      W   1   ?   I   Z          C   K      D      g      y   F       4      t      (       Q   O   7           '   H      -   S           R   n                2         	    
<action> is one of:
 
<name> is the device to create under %s
<device> is the encrypted device
<key slot> is the LUKS key slot number to modify
<key file> optional key file for the new key for luksAddKey action
 
WARNING: real device header has different UUID than backup! %s: requires %s as arguments <device> <device> <key slot> <device> [<key file>] <device> [<new key file>] <name> Align payload at <n> sector boundaries - for luksFormat All key slots full.
 Argument <action> missing. BITS Backup LUKS device header and keyslots Can't do passphrase verification on non-tty inputs.
 Can't format LUKS without device.
 Cannot add key slot, all slots disabled and no volume key provided.
 Cannot create LUKS header: header digest failed (using hash %s).
 Cannot create LUKS header: reading random salt failed.
 Cannot get info about device %s.
 Cannot get process priority.
 Cannot initialize crypto backend.
 Cannot initialize device-mapper. Is dm_mod kernel module loaded?
 Cannot open device %s.
 Cannot open header backup file %s.
 Cannot read device %s.
 Cannot read header backup file %s.
 Cannot retrieve volume key for plain device.
 Cannot wipe device %s.
 Cannot write header backup file %s.
 Command failed with code %i Command successful.
 Create a readonly mapping DM-UUID for device %s was truncated.
 Data offset or key size differs on device and backup, restore failed.
 Device %s %s%s Device %s already exists.
 Device %s doesn't exist or access denied.
 Device %s has zero size.
 Device %s is not active.
 Device %s is too small.
 Display brief usage Do not ask for confirmation Enter any passphrase:  Enter new passphrase for key slot:  Enter passphrase for %s:  Enter passphrase:  Error during update of LUKS header on device %s.
 Error re-reading LUKS header after update on device %s.
 Error reading passphrase from terminal.
 Error reading passphrase.
 Failed to access temporary keystore device.
 Failed to open temporary keystore device.
 File with LUKS header and keyslots backup. Help options: How many sectors of the encrypted data to skip at the beginning How often the input of the passphrase can be retried Invalid device %s.
 Invalid key size.
 Invalid plain crypt parameters.
 Key %d not active. Can't wipe.
 Key size must be a multiple of 8 bits Key slot %d active, purge first.
 Key slot %d is full, please select another one.
 Key slot %d is invalid, please select between 0 and %d.
 Key slot %d is invalid, please select keyslot between 0 and %d.
 Key slot %d is invalid.
 Key slot %d is not used.
 Key slot %d material includes too few stripes. Header manipulation?
 Key slot %d unlocked.
 No key available with this passphrase.
 No known cipher specification pattern detected.
 Option --header-backup-file is required.
 Out of memory while reading passphrase.
 PBKDF2 iteration time for LUKS (in ms) Passphrases do not match.
 Print package version Read the volume (master) key from file. Requested LUKS hash %s is not supported.
 Restore LUKS device header and keyslots Resume suspended LUKS device. SECTORS Show debug messages Show this help message Shows more detailed error messages Slot number for new key (default is first free) Suspend LUKS device and wipe key (all IOs are frozen). The cipher used to encrypt the disk (see /proc/crypto) The hash used to create the encryption key from the passphrase The size of the device The size of the encryption key The start offset in the backend device This is the last keyslot. Device will become unusable after purging this key. This operation is not supported for %s crypt device.
 This operation is supported only for LUKS device.
 This will overwrite data on %s irrevocably. Timeout for interactive passphrase prompt (in seconds) Unknown action. Unknown crypt device type %s requested.
 Unsupported LUKS version %d.
 Verifies the passphrase by asking for it twice Verify passphrase:  Volume %s is already suspended.
 Volume %s is not active.
 Volume %s is not suspended.
 Volume key buffer too small.
 Volume key does not match the volume.
 add key to LUKS device already contains LUKS header. Replacing header will destroy existing keyslots. does not contain LUKS header. Replacing header can destroy data on that device. dump LUKS partition information formats a LUKS device memory allocation error in action_luksFormat msecs print UUID of LUKS device removes supplied key or key file from LUKS device resize active device secs show device status tests <device> for LUKS partition header wipes key with number <key slot> from LUKS device Project-Id-Version: cryptsetup 1.1.0-rc4
Report-Msgid-Bugs-To: dm-crypt@saout.de
POT-Creation-Date: 2017-03-02 09:40+0100
PO-Revision-Date: 2010-01-27 07:30+0700
Last-Translator: Arif E. Nugroho <arif_endro@yahoo.com>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
 
<aksi> adalah salah satu dari:
 
<nama> adalah perangkat untuk dibuat dibawah %s
<perangkat> adalah perangkat terenkripsi
<slot kunci> adalah nomor slot kunci LUKS untuk dimodifikasi
<berkas kunci> adalah berkas kunci opsional untuk kunci baru untuk aksi luksAddKey
 
PERINGATAN: header perangkat ril memiliki UUID berbeda dengan cadangan! %s: membutuhkan %s sebagai argumen <perangkat> <perangkat> <slot kunci> <perangkat> [<berkas kunci>] <perangkat> [<berkas kunci baru>] <nama> Sesuaikan muatan di batas sektor <n> - untuk luksFormat Semua slot kunci telah penuh.
 Argumen <aksi> hilang. BITS Buat cadangan header perangkat LUKS dan slot kunci Tidak dapat melakukan verifikasi kata sandi di masukan bukan tty.
 Tidak dapat memformat LUKS tanpat perangkat.
 Tidak dapat menambahkan slot kunci, seluruh slot tidak aktif dan tidak ada volume kunci yang disediakan.
 Tidak dapat membuat header LUKS: digest header gagal (menggunakan hash %s).
 Tidak dapat membuat header LUKS: pembacaan garam acak gagal.
 Tidak dapat mendapatkan informasi mengenai perangkat %s.
 Tidak dapat mendapatkan prioritas proses.
 Tidak dapat menginisialisasi backend crypto.
 Tidak dapat menginisialisasi pemeta-perangkat. Apakah kernel modul dm_mod telah dimuat?
 Tidak dapat membuka perangkat %s.
 Tidak dapat membuka berkas cadangan header %s.
 Tidak dapat membaca perangkat %s.
 Tidak dapat membaca berkas cadangan header %s.
 Tidak dapat mendapatkan kunci volume untuk perangkat.
 Tidak dapat menghapus perangkat %s.
 Tidak dapat menulis berkas cadangan header %s.
 Perintah gagal dengan kode %i Perintah berhasil.
 Buat pemetaan baca-saja DM-UUID untuk perangkat %s telah terpotong.
 Data offset atau ukuran kunci berbeda di perangkat dan cadangan, pengembalian gagal.
 Perangkat %s %s%s Perangkat %s telah ada.
 Perangkat %s tidak ada atau akses ditolak.
 Perangkat %s memiliki ukuran nol.
 Perangkat %s tidak aktif.
 Perangkat %s terlalu kecil.
 Tampilkan penggunaan singkat Jangan tanya untuk konfirmasi Masukan kata sandi:  Masukan kasa sandi baru untuk slot kunci:  Masukan kata sandi untuk %s:  Masukan kata sandi:  Error selama memperbarui header LUKS di perangkat %s.
 Error membaca-kembali header LUKS setelah memperbarui di perangkat %s.
 Kesalahan dalam pembacaan kata sandi dari terminal.
 Kesalahan dalam pembacaan kata sandi.
 Gagal untuk mengakses perangkat penyimpan kunci sementara.
 Gagal untuk membuka perangkat penyimpan kunci sementara.
 Berkas dengan header LUKS dan cadangan slot kunci. Pilihan bantuan: Berapa banyak sektor dari data terenkripsi yang dilewatkan di awal Seberapa sering masukan dari kata sandi dapat dicoba Perangkat %s tidak valid.
 Ukuran kunci tidak valid.
 Parameter crypt tidak valid.
 Kunci %d tidak aktif. Tidak dapat menghapus.
 Kunci harus kelipatan dari 8 bit Slot kunci %d aktif, hapus terlebih dahulu.
 Slot kunci %d penuh, mohon pilih yang lain.
 Slot kunci %d tidak valid, mohon pilih diantara 0 dan %d.
 Slot kunci %d tidak valid, mohon pilih slot kunci diantara 0 dan %d.
 Slot kunci %d tidak valid.
 Slot kunci %d tidak digunakan.
 Slot kunci %d material terdapat terlalu sedikit stripes. Manipulasi header?
 Slot kunci %d tidak terkunci.
 Tidak ada kunci tersedia dengan kata sandi ini.
 Tidak ada pola spesifikasi cipher yang dikenal terdeteksi.
 Pilihan --header-backup-file dibutuhkan.
 Kehabisan memori ketika membaca kata sandi.
 waktu iterasi PBKDF2 untuk LUKS (dalam mdet) Kata sandi tidak cocok.
 Tampilkan versi paket Baca volume (master) kunci dari berkas. Hash %s LUKS yang diminta tidak didukung.
 Kembalikan header perangkat LUKS dan slot kunci Lanjutkan perangkat LUKS yang dihentikan. SEKTOR Tampilkan pesan penelusuran Tampilkan pesan bantuan ini Tampilkan pesan kesalahan secara lebih detail Nomor slot untuk kunci baru (baku adalah yang kosong pertama) Hentikan perangkat LUKS dan hapus kunci (semua IO dihentikan). Cipher yang digunakan untuk mengenkripsi ke disk (lihat /proc/crypto) Hash yang digunakan untuk membuat kunci enkripsi dari kata sandi Besar dari perangkat Besar dari kunci enkripsi Awal ofset dalam perangkat backend Ini adalah slot kunci terakhir. Perangkat mungkin akan menjadi tidak stabil setelah menghapus kunci ini. Operasi ini tidak didukung untuk perangkat crypt %s.
 Operasi ini hanya didukunga untuk perangkat LUKS.
 Ini akan memaksa menulis data di %s secara permanen. Waktu habis untuk pertanyaan interaktif kata sandi (dalam detik) Aksi tidak diketahui. Tipe perangkat sandi %s yang diminta tidak diketahui.
 versi LUKS %d tidak didukung.
 Verifikasi kata sandi dengan menanyakan itu dua kali Memverifikasi kata sandi:  Volume %s telah disuspend.
 Volume %s tidak aktif.
 Volume %s tidak disuspend.
 Penyangga kunci volume terlalu kecil.
 Kunci volume tidak cocok dengan volume.
 tambahkan kunci ke perangkat LUKS telah berisi header LUKS. Mengganti header dapat mengganti slot kunci yang telah ada. tidak berisi header LUKS. Mengganti header dapat menghancurkan data di perangkat itu. dump informasi  partisi LUKS format sebuah perangkat LUKS alokasi memori error dalam action_luksFormat mdetik tampilkan UUID dari perangkat LUKS hapus kunci yang diberikan atau berkas kunci dari perangkat LUKS ubah ukuran perangkat aktif detik tampilkan status perangkat periksa <perangkat> untuk header partisi LUKS hapus kunci dengan nomor <slot kunci> dari perangkat LUKS 