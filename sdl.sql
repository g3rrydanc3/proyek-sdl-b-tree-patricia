-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Mei 2017 pada 18.33
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdl`
--
CREATE DATABASE IF NOT EXISTS `sdl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sdl`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `newindex`
--

DROP TABLE IF EXISTS `newindex`;
CREATE TABLE `newindex` (
  `idxroot` int(11) NOT NULL,
  `idxfirstnode` int(11) NOT NULL,
  `idxlastnode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `Nomor` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `isi` varchar(30000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`Nomor`, `title`, `isi`) VALUES
(1, 'Gratis Daftar SBMPTN 2017 Bagi Peserta Bidikmisi! ', 'Persaingan menempati kursi Perguruan Tinggi Negeri (PTN) memang sengit. Dari hasil pengumuman Seleksi Nasional Masuk Perguruan Tinggi Negeri (SNMPTN) 2017, Rabu (26/04/2017), ada lebih dari 400.000 calon mahasiswa yang belum lolos.\nNamun, masih ada kesempatan lain untuk masuk PTN, yaitu dari jalur tertulis Seleksi Bersama Masuk Perguruan Tinggi Negeri (SBMPTN) 2017. Untuk ikut jalur seleksi ini, peserta perlu membayar biaya daftar Rp 200.000.\nNamun, biaya tersebut akan ditiadakan bagi peserta Bidikmisi-program pembiayaan oleh pemerintah bagi siswa tak mampu-yang telah mengikuti SNMPTN 2017 tetapi belum lolos.\nDetail prosedur pendaftaran bisa dilihat melalui website resmi SBMPTN <http://pendaftaran.sbmptn.ac.id/>. Sebaiknya, lulusan SMA/SMK yang mau mengikuti tes seleksi ini segera mendaftar, karena pendaftaran akan ditutup 5 Mei 2017.\nSeleksi SBMPTN 2017 terdiri dari dua jenis ujian, yaitu ujian tertulis dan ujian keterampilan bagi peserta yang memilih program studi bidang seni dan keolahragaan. Jadwal ujian tertulis SBMPTN 2017 dilaksanakan hari Selasa, (16/5/2017). \nSejak 2016, tes tertulis pun terdiri atas dua bentuk pilihan, antara lain Paper-Based Testing (PBT)-tes dengan menggunakan kertas langsung-dan Computer-Based Testing (CBT), ujian tulis memakai media komputer. Peserta bisa memilih salah satunya.\nSelain itu, total daya tampung SBMPTN 2017 lebih banyak dibandingkan SNMPTN 2017. Tersedia 128.244 kuota dengan rincian program studi Sains dan Teknologi (Saintek) sebanyak 63.685 dan 64.559 kursi bagi program studi Sosial Humaniora (Soshum).\nDaya tampung tersebut tersebar pada 85 PTN yang ikut berpartisipasi. Informasi mengenai perkembangan berita mengenai SBMPTN 2017 bisa dicek melalui liputan khusus SNMPTN 2017 <http://lipsus.kompas.com/snmptn2017> di Kompas.com!\n'),
(2, 'iPhone 8 Tak Dirilis Tahun Ini?', 'Berbagai rumor dan spekulasi mengenai iPhone <http://indeks.kompas.com/tag/iphone> 8 sudah beredar di ranah maya sejak akhir tahun lalu. Lini tersebut dikatakan bakal benar-benar spesial karena menandai 10 tahun usia iPhone <http://indeks.kompas.com/tag/iphone> pada 2017 ini. \nLantas, isu terbaru yang berasal dari sumber dalam Foxconn justru membantah kabar soal kehadiran iPhone <http://indeks.kompas.com/tag/iphone> 8. Menurut dia, tahun ini Apple hanya berencana merilis duet iPhone <http://indeks.kompas.com/tag/iphone> 7s dan iPhone <http://indeks.kompas.com/tag/iphone> 7s Plus, sebagaimana dilaporkan GSMArena dan dihimpun KompasTekno, Jumat (28/4/2017).\nKedua lini itu dikatakan tak bakal berubah secara signifikan dari iPhone <http://indeks.kompas.com/tag/iphone> 7 dan 7 Plus keluaran 2016. Penambahan embel-embel "s" cuma untuk menandai peningkatan spesifikasi dan performa, bukan desain secara keseluruhan. (Baca: iPhone 8 Jauh Lebih Ngebut dari Galaxy S8? <http://tekno.kompas.com/read/2017/04/26/11330027/iphone.8.jauh.lebih.ngebut.dari.galaxy.s8.>)\nFoxconn merupakan pabrik komponen asal Taiwan yang salah satunya memasok komponen untuk iPhone. Oleh karena itu, informasi yang berasal dari sumber Foxconn agaknya perlu diperhitungkan. \nSebagai tambahan, sumber dalam Foxconn juga sesumbar bahwa paket material untuk iPhone 7s dan 7s Plus sudah mulai diterima mulai Juni mendatang. Ini mengindikasikan proses produksi sudah dimulai pada awal tahun untuk persiapan perilisan September mendatang.\nMeski demikian, Apple sendiri belum pernah angkat bicara soal iPhone 8, maupun iPhone 7s dan 7s Plus. Bocoran ini belum bisa diyakini 100 persen keabsahannya. \nSebelumnya, bocoran-bocoran soal iPhone 8 gencar berseliweran dan mengindikasikan perombakan besar-besaran. Antara lain desain berbalut kaca di sekujur tubuh, tak ada tombol home, layar OLED melengkung, wireless-charging, dan USB-C. (Baca: Menerka Harga iPhone 8, Bakal Semahal Apa? <http://tekno.kompas.com/read/2017/04/06/13000047/menerka.harga.iphone.8.bakal.semahal.apa.>)\n'),
(3, 'Demo Buruh', 'Bertepatan dengan peringatan hari buruh sedunia, ribuan buruh akan turun ke jalan, Senin (1/5/2017). Di Jakarta, aksi tersebut rencananya dipusatkan di Istana Presiden.\nPresiden Konfederasi Serikat Pekerja Indonesia (KSPI) Said Iqbal, mengatakan, buruh yang akan menuju Istana Presiden tersebut berasal dari Jakarta, Bogor <http://indeks.kompas.com/tag/bogor>, Depok <http://indeks.kompas.com/tag/depok>, Tangerang <http://indeks.kompas.com/tag/tangerang>, dan Bekasi <http://indeks.kompas.com/tag/bekasi>.\n"Massa dari Jabodetabek <http://indeks.kompas.com/tag/jabodetabek> 150 ribu buruh akan aksi di Istana Presiden dengan titik kumpul di Patung Kuda Indosat jam 10.00," kata Said Iqbal, dalam siaran pers yang diterima Kompas.com, Senin.\nIsu yang disuarakan, lanjut Said, akan serempak dengan yang dilakukan di seluruh buruh yang melakukan aksi hari ini di Tanah Air. Misalnya menghapus outsourcing, pemagangan yg mengekploitasi kaum buruh, jaminan sosial di revisi yaitu jamkes seluruh rakyat gratis tanpa iuran tapi melalui pajak, dan jaminan pensiun buruh sama dengan PNS sebesar 60 persen dari gaji terakhir.\nBuruh menurutnya juga menolak upah murah dengan meminta pemerintah untuk mencabut PP Nomor 78/2015 tentang Pengupahan, yang dinilai menghilangkan hak berunding serikat buruh dalam kenaikan upah.\nSaid mengatakan, aksi buruh se-Tanah Air akan melibatkan setengah juta buruh di 32 Provinsi dan 250 kabupaten. Buruh akan turun ke jalan.\n"Setiap daerah akan aksi di depan kantor gubernur, seperti di Serang, Bandung, Surabaya, Semarang, Jogja, Aceh, Medan, Batam, Banjarmasin, Makasar, Gorontalo, Maluku, dan lain-lain," ujar dia.'),
(4, 'John McAfee Perkenalkan Android Teraman di Dunia', 'Pendiri perusahaan antivirus McAfee, John McAfee, dikenal sebagai sosok nyentrik di dunia teknologi yang menaruh perhatian besar terhadap isu cybersecurity.\nBelakangan, dia memperkenalkan sebuah smartphone Android <http://indeks.kompas.com/tag/android> yang diklaim paling aman di dunia. Namanya, "John McAfee Privacy Phone", diambil dari nama McAfee sendiri.\nPonsel tersebut digembar-gemborkan sebagai handset paling kebal hacker di dunia. "Sejumlah besar investasi di bidang hardware telah dicurahkan ke ponsel ini," ujar McAfee.\nDi punggung ponsel yang bersangkutan terdapat serangkaian switch yang bisa dipakai untuk melepas beberapa komponen, seperti baterai, antena seluler dan Wi-Fi, geolocation, dan Bluetooth.\nRangkaian switch juga bisa dipakai untuk memutus sambungan kamera dan mikrofon supaya tak bisa disadap, sebagaimana dirangkum KompasTekno dari Ubergizmo, Jumat (28/4/2017).\n"Ponsel juga tidak akan mau menyambung ke alat penyadap atau IMSI-catcher (penyadap mobile subscriber identity). Selain itu, disediakan fasilitas anonymizer untuk hasil web search," imbuh McAfee.\nMcAfee berencana merilis John McAfee Privacy Phone tahun ini di bawah bendera firma keamanan yang dipimpinnya, MGT. Perangkat tersebut ditujukan kepada kalangan enterprise dengan banderol 1.100 dollar AS <http://indeks.kompas.com/tag/dollar.as> atau hampir Rp 15 juta.\nSpesfikasinya masih belum jelas, tapi McAfee berjanji akan segera mengumumkannya. "Daftar spek akan dirilis dalam waktu dekat dan bakal revolusioner. Android <http://indeks.kompas.com/tag/android> bukan masalahnya (buat keamanan), tapi environment tempat OS itu berjalan," kata McAfee.\n'),
(5, 'Menhan Nilai LGBT Bagian dari "Proxy War" yang Harus Diwaspadai', 'Menteri Pertahanan Ryamizard Ryacudu <http://indeks.kompas.com/tag/ryamizard.ryacudu> menilai fenomena kemunculan lesbian, gay, biseksual, dan transjender (LGBT) di Indonesia adalah bagian dari proxy war atau perang proksi untuk menguasai suatu bangsa tanpa perlu mengirim pasukan militer.\n"Sejak 15 tahun lalu saya sudah buat (tulisan) perang modern, itu sama modelnya. Perang murah meriah," kata Menhan di Kantor Kementerian Pertahanan, Jakarta, Selasa (23/2/2016).\nMenurut Ryamizard, ancaman perang proksi itu berbahaya bagi Indonesia karena negara lain yang memiliki kepentingan tidak langsung berhadapan.\nOleh karena itu, fenomena pendukung LGBT yang meminta komunitasnya dilegalkan itu wajib diwaspadai.\n"(LGBT) bahaya dong, kita tak bisa melihat (lawan), tahu-tahu dicuci otaknya, ingin merdeka segala macam, itu bahaya," kata mantan Kepala Staf Angkatan Darat (KSAD) ini.\nIa menjelaskan, perang proksi itu menakutkan lantaran musuh tidak diketahui. Kalau melawan militer negara lain, musuh mudah dideteksi dan bisa dilawan.\n"Kalau perang proksi, tahu-tahu musuh sudah menguasai bangsa ini. Kalau bom atom atau nuklir ditaruh di Jakarta, Jakarta hancur, di Semarang  <http://indeks.kompas.com/tag/semarang.>tak hancur. Tetapi, kalau perang modern, semua hancur. Itu bahaya," ujarnya.\nIa menambahkan, perang modern tidak lagi melalui senjata, tetapi menggunakan pemikiran.\n"Tidak berbahaya perang alutsista, tetapi yang berbahaya cuci otak yang membelokkan pemahaman terhadap ideologi negara," tuturnya'),
(6, 'JK Disebut Intervensi Pencalonannya, Anies: Saya Tak Terlibat', 'Jakarta - Cagub DKI Jakarta Anies Rasyid Baswedan tidak mengetahui adanya intervensi Wakil Presiden RI Jusuf Kalla (JK) dalam pencalonannya sebagai Gubernur DKI. Sebelumnya, hal itu diungkap oleh Ketua MPR RI Zulkifli Hasan.\n\n"Nggak tahu saya, saya nggak terlibat," kata Anies di JCC Senayan, Jakarta Pusat, Rabu (3/5/2017).\n\nAnies mengatakan proses pencalonannya berawal dari panggilan Partai Gerindra terhadapnya. Berbagai pihak yang ada di lingkup internal Gerindra lebih mengetahui cerita di balik pencalonannya.\n\n"Saya dipanggil oleh Gerindra, tapi di dalamnya seperti apa, itu yang tahu teman-teman di Gerindra," tuturnya.\n\nProses komunikasi yang ada dalam pencalonannya pun lebih rumit daripada yang diungkapkan Zulkifli beberapa waktu lalu. Anies pun mengaku tidak terlibat langsung dalam proses pencalonannya oleh Gerindra.\n\n"Saya rasa prosesnya lebih rumit daripada itu. Menurut saya, teman-teman cek saja dengan para pelaku, karena kalau saya tidak terlibat di situ," ucapnya.\n\nAnies menyebutkan, dalam proses pencalonannya, dia hanya berkomunikasi dengan cawagub Sandiaga Salahuddin Uno dan Partai Gerindra. "Iya saya tahunya dengan Bang Sandi dengan Gerindra," ucapnya.\n\nSebelumnya diberitakan, Zulkifli Hasan blak-blakan tentang peran JK saat partai-partai sedang menentukan cagub-cawagub DKI penantang Ahok-Djarot. Dia menyebut awalnya tidak ada partai yang mau mengusung Anies, namun telepon JK mengubah kondisi itu.\n\nZulkifli menceritakan Ketum Demokrat Susilo Bambang Yudhoyono sempat menawarkan Agus, dan Ketum Gerindra Prabowo Subianto menyanggupi tawaran SBY, asalkan Sandiaga diusung sebagai calon gubernur. Sandiaga sempat menemui Zulkifli dan menyatakan kesediaannya maju sebagai cawagub, tapi ia menginginkan SBY bertemu dengan Prabowo terlebih dahulu.\n\n"Nah saya tahu kalau Pak Prabowo, Pak SBY, ketemu mesti ada jaminan 5 tahun selesai. Kira-kira itu Pak isinya. Sehingga tak jadi ketemu. Sudah putus AHY. Di sini ya udah Sandi sama Mardani. Jam 12 malam sampai jam 1 pagi itu ada intervensinya Pak JK. Saya kan suka terus terang. Pak JK boleh nggak-ngaku, saya dengar kok teleponnya. Pak JK-lah yang meyakinkan sehingga berubahlah," kata Zulkifli sebelum membuka sosialisasi 4 pilar di kompleks parlemen, Senayan, Jakarta Pusat, Selasa (2/5). '),
(7, 'ICW: Hak Angket KPK Adalah Premanisme Politik', 'Jakarta - Indonesia Corruption Watch (ICW) beserta LSM lainnya melaporkan Fahri Hamzah karena dianggap menghalangi proses penegakan hukum (obstruction of justice) dalam kasus e-KTP. Koordinator ICW Donal Fariz meminta KPK segera menindaklanjuti laporan tersebut.\n\n"Kami koalisi menolak hak angket KPK. Pascapengesahan hak angket dalam (sidang) paripurna yang kita lihat, angket ini adalah bagian sistematis memperlemah kerja KPK, upaya mengganggu, upaya premanisme, maka kami meminta KPK segera menindaklanjuti kasus tersebut," kata Donal di kantor ICW, Jalan Kalibata Timur IV-D No 6, Kalibata, Pancoran, Jakarta Selatan, Rabu (3/5/2017).\n\nFahri dilaporkan dengan Pasal 21 Undang-Undang Pemberantasan Tindak Pidana Korupsi karena dianggap sudah melakukan obstruction of justice. Donal mengatakan Fahri juga melakukan premanisme secara politik.\n\n"Hak angket ini adalah premanisme secara politik karena dilakukan oleh orang-orang politikus. Kami kemarin pukul 14.00 WIB, tanggal 2 Mei 2017, kami melaporkan Saudara Fahri Hamzah kepada KPK dengan dugaan menghalangi penyidikan atau obstruction of justice, Pasal 21 Undang-Undang Tindak Pidana Korupsi," ujarnya.\n\nHal yang sama dikatakan oleh Oce Madril, peneliti Pusat Kajian Anti Korupsi (Pukat) UGM. Oce mengatakan tindakan yang dilakukan Fahri adalah persoalan tentang obstruction of justice.\n\n"Ada beberapa hal yang kami laporkan kepada KPK, terkait tindakan Fahri Hamzah ketika pertama ada persoalan obstruction of justice, pelanggaran Pasal 21 UU Tipikor Nomor 31 Tahun 1999 juncto UU Nomor 20 Tahun 2001. Di situ dikatakan para pihak yang menghalangi, baik itu dalam penyidikan, penuntutan, secara langsung atau tidak langsung, mereka diancam dengan pidana," jelasnya.\n\nOce mengatakan angket ini adalah tindak pidana terkait tindakan korupsi itu sendiri. Menurutnya, hak angket ini mampu mempengaruhi perkara lain yang sedang diusut oleh KPK.\n\n"Ini sebetulnya adalah tindak pidana terkait tindakan korupsi itu sendiri, ini tindak pidana terkait upaya pemberantasan korupsi. Fahri Hamzah memimpin hak angket waktu itu adalah tindakan baik secara langsung atau tidak langsung, hal ini mempengaruhi perkara korupsi lainnya yang sedang diusut oleh KPK," ucapnya.\n\n"Mau tidak mau itu akan mempengaruhi, sudah berantakan. Paling fatal, mekanisme pengambilan keputusan hak angket tindakan memutus, jelas bertentangan dengan UU, jadi inilah yang kami laporkan kepada KPK. Kami meminta KPK menindaklanjuti yang kami laporkan kemarin," imbuhnya.\n\nUpaya dan tindakan dalam menghalangi kerja KPK dianggap melanggar prosedur. Oce juga menegaskan tindakan Fahri ini termasuk cacat prosedur.\n\n"Cacat prosedur adalah bagian dari tindakan dia, upaya dia, menghalangi kerja KPK dalam pemberantasan korupsi. Pimpinan DPR sendiri diduga kuat dalam tindak pidana korupsi. Ada salah satu nama pimpinan DPR disebut secara beriringan. Konteks ini tidak bisa dilepaskan, ketika dia melanggar prosedur," tutupnya.\n\nLSM yang tergabung dalam pelaporan Fahri Hamzah ialah Pusat Kajian Anti Korupsi (Pukat) UGM, Pusat Studi Konstitusi (PUSaKO) Unand, Komisi Pemantau Legislatif (Kopel), Perkumpulan untuk Pemilu dan Demokrasi (Perludem), Indonesia Corruption Watch (ICW), dan Forum Masyarakat Peduli Parlemen Indonesia (Formappi).'),
(8, 'Jokowi Dapat Tiga Karangan Bunga', 'Jakarta - Karangan bunga untuk elite negara dan penegak hukum sedang ngetren. Kini Presiden Jokowi juga mendapat karangan bunga meski tak sedang ada acara khusus di Istana Kepresidenan.\n\nTiga karangan bunga sudah ada di Kompleks Istana Kepresidenan, Jl Medan Merdeka Utara, Rabu (3/5/2017). Menurut salah seorang petugas keamanan di lokasi, karangan bunga itu sudah ada sejak pagi sebelum hujan tadi.\n\nTiga karangan bunga itu diletakkan menyandar di dekat lobi 043, tak jauh dari Ruang Wartawan. Tiga karangan bunga itu punya tinggi 2 meter dengan lebar 1 meter. Berikut bunyi tulisan di ketiga bunga itu.\n\nBunga pertama: Kepada Bpk Jokowi, Mendukung Penegakan NKRI dan Pancasila. Warganegara Indonesia.\n\nBunga kedua: Pakdhe Jokowi, Kami Masih Padamu, Bersama Menjaga NKRI. Romo Mar, Daru, Robert, Isma Kebaya, Laeliya, Oscar, Teguh Pithik, Heuw, Koh Bun, Akhong, Cecil, Retno, Mas Gowok, Peter, Doni, Syaeful, Dariah, Pinjung, Chyntia, dan Andreas.\n\nBunga ketiga: Selalu Dukung Pak Jokowi. Untuk Menjaga NKRI dari Radikalisme. Agama Apapun. Keukeuh Selalu Sama NKRI. Bhinneka Tunggal Ika dan Pancasila. SMANDEL 91 yang Cinta Toleransi dan NKRI.'),
(9, 'Periksa Keluarga dan Sopir, KPK Telusuri Pelarian Miryam Haryani', 'Jakarta - Ada empat orang saksi yang diperiksa KPK terkait tersangka anggota DPR Fraksi Hanura Miryam S Haryani. Keempatnya diperiksa soal pelarian Miryam saat menjadi buron KPK.\n\n"Yang kita dalami dari empat saksi ini terkait apa saja yang terjadi dalam rentang waktu 3-4 hari setelah kita kirimkan surat DPO ke Mabes Polri," ujar Kabiro Humas KPK Febri Diansyah kepada wartawan di gedung KPK, Jl Kuningan Persada, Jakarta Selatan, Selasa (2/4/2017).\n\nFebri mengatakan KPK menyelidiki keterlibatan keempatnya saat Miryam menjadi buron. Dua orang di antaranya adalah keluarga yang bertempat tinggal di Bandung.\n\n"Ada dua saksi yang merupakan keluarga yang tinggal di Bandung. Satu saksi yang laki-laki, sopir dari keluarga tersebut, dan satu orang lagi mahasiswa dari universitas di Jakarta," ujar Febri.\n\nBaca Juga: Selama Buron, Miryam Haryani Sempat Berpindah-pindah di Bandung\n\nDia menegaskan pihaknya lebih dulu memfokuskan pemeriksaan terkait buronnya Miryam. Setelah itu, KPK kembali menelusuri kasus sangkaan pemberian keterangan tidak benar Miryam saat berada di sidang perkara dugaan korupsi e-KTP.\n\n"Hari ini kita dalami tentang 3-4 hari ketika MSH masuk DPO. Tentu setelah ini kita juga dalami fakta-fakta untuk membuktikan bahwa memang benar ada pemberian keterangan yang tidak benar di pengadilan," kata Febri.\n\n"Juga kita akan dalami apa yang menjadi faktor penyebab, siapa, dan apa yang dilakukan pihak tertentu sampai kemudian secara kausalitas membuat Miryam saat menjadi saksi dulu mengubah keterangannya atau mencabut BAP," imbuh Febri.\n\nMiryam merupakan tersangka dugaan memberi keterangan tidak benar atau keterangan palsu dalam persidangan korupsi e-KTP dengan terdakwa Irman dan Sugiharto.\n\nSetelah ditetapkan sebagai tersangka, Miryam tidak menghadiri panggilan pemeriksaan pada 13 dan 18 April. Hingga akhirnya KPK menetapkan status buron terhadap Miryam pada hari Kamis, 27 April.\n\nMiryam ditangkap saat bersama adiknya di Hotel Grand Kemang, Kebayoran Baru, Jaksel, sekitar pukul 02.00 WIB, Senin (1/5). Penangkapan berhasil dilakukan setelah tim bentukan Polda Metro melakukan pelacakan hingga mengikuti Miryam di Bandung.\n\nTim Polda Metro sempat membawa Miryam ke Mapolda Metro sebelum akhirnya diserahkan langsung ke KPK pada pukul 15.58 WIB.\n\nDalam perkara Miryam, KPK pernah memeriksa dua terdakwa korupsi e-KTP Irman dan Sugiharto, pengacara Elza Syarief, serta pengacara Farhat Abbas sebagai saksi. KPK menelusuri orang-orang di balik ancaman terhadap Miryam sehingga mencabut BAP dan memberikan keterangan bertolak belakang dengan BAP, yakni tak tahu-menahu bagi-bagi duit e-KTP. '),
(10, 'Suami yang Gilas Istri di Garut Pernah Dipolisikan Karena KDRT', 'Garut - Dewi Supartini (34) tewas setelah diduga dilindas oleh suaminya sendiri IS (35) menggunakan truk, selasa (2/5/2017) malam di Kampung Cimurah, Kecamatan Karangpawitan Garut, Jawa Barat. Dewi tewas dengan luka parah di bagian perut hingga paha.\n\nKeluarga korban terpukul atas kejadian ini. Ayah korban, Pardin Supardi (62) mengatakan, anaknya memang sering terlibat cekcok dengan sang menantu, namun dirinya tidak menyangka bahwa sang menantu IS, tega menghabisi nyawa anaknya dengan cara seperti itu.\n\n"Saya enggak nyangka, memang sejak tahun delapan tahun lalu menikah, mereka sering cekcok," ungkap Pardin kepada wartawan selepas pemakaman anaknya di Kampung Cilincing, Rabu (3/5/2017) sore.\n\nPardin menambahkan, pada saat malam kejadian anaknya bermaksud untuk meminta uang kepada sang suami untuk membayar utang, namun sang suami malah memarahi Dewi dan bergegas pergi.\n\n"Anak saya mau minta uang buat bayar utang, tapi dia (IS) malah pergi. Nah, anak saya itu ngikutin dia karena handphone-nya dibawa pergi," katanya.\n\nPardin juga mengatakan bahwa sang menantu, pernah dipolisikan karena melakukan Kekerasan Dalam Rumah Tangga (KDRT) kepada anaknya pada tahun 2013 silam.\n\n"Pernah dilaporin ke polisi karena KDRT, tapi laporan dicabut lagi karena dia (IS) minta maaf dan berjanji tidak akan mengulangi lagi," kata Pardin.\n\nKendati demikian, keluarga mengaku pasrah dan sudah mengikhlaskan kepergian Dewi. Namun keluarga menuntut agar pelaku dihukum dengan hukuman yang seberat beratnya.\n\n"Ya dihukum seberat beratnya, kalau bisa tolong dihukum mati aja, agar setimpal dengan perbuatannya," ungkapnya.\n\nJasad Dewi pun kini telah dimakamkan di samping rumah orang tuanya yang terletak di Kampung Cilincing, Desa Sindanglaya, Kecamatan Karangpawitan, Garut. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsindexby`
--

DROP TABLE IF EXISTS `newsindexby`;
CREATE TABLE `newsindexby` (
  `idx` int(11) NOT NULL,
  `i_key` int(11) NOT NULL,
  `idx_left_child` int(11) NOT NULL,
  `idx_right_child` int(11) NOT NULL,
  `idxword` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsindexnode`
--

DROP TABLE IF EXISTS `newsindexnode`;
CREATE TABLE `newsindexnode` (
  `idx` int(11) NOT NULL,
  `idx_first` int(11) NOT NULL,
  `idx_prev_node` int(11) NOT NULL,
  `idx_next_node` int(11) NOT NULL,
  `idx_parent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_word`
--

DROP TABLE IF EXISTS `news_word`;
CREATE TABLE `news_word` (
  `idx` int(11) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Nomor`);

--
-- Indexes for table `newsindexnode`
--
ALTER TABLE `newsindexnode`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
