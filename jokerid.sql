-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2018 pada 08.58
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jokerid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `create_date`) VALUES
(60, 12, 'IT / Teknologi', '2018-01-15 06:34:48'),
(59, 12, 'PERBANKAN', '2018-01-15 05:32:07'),
(56, 12, 'INSTANSI PENDIDIKAN', '2018-01-15 05:17:48'),
(57, 12, 'PERKAYUAN & MEBEL', '2018-01-15 05:18:07'),
(58, 12, 'DINAS PEMERINTAH', '2018-01-15 05:18:44'),
(55, 12, 'INDUSTRI PABRIK', '2018-01-15 05:17:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no_hp` varchar(12) NOT NULL,
  `lulusan` enum('smp','sma','Perguruan Tinggi') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`, `no_hp`, `lulusan`) VALUES
(8, 48, 'kannyf', 'kannyf.mr@gmail.com', 'saya ingin bekerja', '2018-01-15 03:25:11', '', 'smp'),
(9, 57, 'MASRURK KHANIF', 'kannyf.mr@gmail.com', 'lasklasd', '2018-01-16 07:59:10', 'alsdlaskdla', 'smp'),
(10, 57, 'iqbal khan', 'iqbal@gmail', 'i have no experience', '2018-01-16 08:00:32', '0822109752', 'Perguruan Tinggi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(54, 59, 12, 'Lowongan Kerja PT DANAREKSA Tamatan SMA/SMK Terbaru 2018/2019', 'Lowongan-Kerja-PT-DANAREKSA-Tamatan-SMASMK-Terbaru-20182019', '<p style=\"text-align:justify\">PT Danareksa, jika dikaji secara mendalam ternyata nama ini mempunyai arti yang sangat dalam dan sesuai dengan fungsinya. &quot;Dana&quot; ini artinya adalah dana, dan &quot;reksa&quot; memiliki arti fidusia, ada yang bertanya apa itu fidusia, sedikit saya jelaskan mengenai fidusia. Fidusia merupakan pengalihan hak kepemilikan suatu benda atas dasar kepercayaan dengan ketentuan bahwa benda yang hak kepemilikannya dialihkan tetap dalam penguasaan pemilik benda. Sebuah fidusia diharapkan tetap setia terhadap pokok kepada siapa mereka berhutang tugas.Danareksa mewujudkan fidusia dinilai corporate integritas, keahlian, transparansi, akuntabilitas dan keadilan. Sejak berdirinya perushaan pada tahun 1976 lalu sebagai bank investasi milik Negara, Danareksa tetap singular sebagai lembaga keuangan non bank yang sepenuhnya dimilki oleh pemerintah dan dikelolah langsung oleh BUMN. Bisnis utma dari Danareksa ini adalah&nbsp; perbankkan investasi, ekuitas, dan modal utang pasar, manajemen onvestasi dan keuangan. Danareksa juga adalah merupakan sebuah lembaga keuangan perintis yang pertama dan yang pertama pula untuk memperkenalkan reksa dana di Indonesia. Danareksa juga adalah satu-satunya eperushaan lokal untuk menawarkan akses pasar langung ke klayen diseluruh dunia dan semakin berkembang menjadi perushaan yang ditanggung paling ekuitas dan utang penempatan di Indonesia.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Demikian sekilas dari erushaan PT Danareksa, sebenernya penulis juga kurang memahami apa maksud dan tujuan dari perusahaan ini sendiri, namun setalh membaca profil dan yang lainnya, dapat penulis simpulkan seperti yang penulis jabarkan diatas. Apapun itu, tentu tujuan utama kita sebagai pencari kerja adalah bekerja, mendapatkan hasil dari pekerjaannya. Tapi disini penulis jelaskan lagi sdikit, agar supaya anda tidak salah mengira mengenai perushaan ini. Perushaan ini adalah merupakan perushaan jasa, dimana bisa kita sebut sebagai perushaan penitipan harta benda, itu saja agar supaya jelas. Biar pun perushaan ini kedengaran familiar, ternyata perushaan ini adalah satu-satunya dan ada yang pertama tadi seperti yang sudah penulis jelaskan pada deskripsi diatas. Perushaan ini juga sangan dibutuhkan oleh perushaan-perushaan lain sebagai jasa penyimpanan barang dan lain-lain. Selain itu, peluang kerja disini juga sangat diharap-harapkan bagi masyarakat yang sedang membutuhkan pekerjaan.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Sebagai perushaan, sebuat tempat usaha yang tidak lain semuanya sudah pasti bertujuan sama, yaitu ingin mendapatkan keuntungan. Tentu untuk menjalankan usahanya tersebuut dibutuhkan beberapa tenaga yang dapat membantu dan dengan segera dapat menyelesaikan tugas-tugas yang ada. Namun terkadang dalam melakukan proses pencarian teanaga kerja sering kali terhambat dengan keterbatasan tenaga kerja yang tidak profesional, perushaan merasa tidak ada hasil jika mendapatkan tenaga kerja baru yang ternyata tidak profesional. Oleh sebab itu perushaan untuk mencari orang-orang yang mempunyai skil dan kemampuan dalam bekerja, tentu tawaran menarik akan diberikan oleh perushaan. Tawaran-tawaran tersebut jika di PT Danareksa ini adalah jenjang karir, Gajih pokok, Asuransi kesehatan serta bonus jalan-jalan jika anda dari karyawan yang prestasinya baik dan sangat bermanfaat untuk perushaan.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Untuk mendapatkan tenaga kerja yang handal dan berpotensi serta profesional, perusahaan kemudian mengadakan tes atau uji kemampuan yang meliputi dari beberapa tahapan seleksi, diantaranya adalah tes kesehatan, psikotes, dan wawancara. Namun sebelum sampai pada tahapan seleksi tersebut, perlu diketahui bahwa anda harus bersaing dengan ratusan bahkan ribuan para pelamar kerja yang mungkin akan sama-sama melakukan pendaftran diregistrasi awal seperti anda. Penulis menyarankan bagi anda yang ingin mendaptarkan diri pada perusahaan ini bahwasannya anda harus lebih bersiap-siap diri sebelum meakukan pendaftran dengan cara mengasa skill kemampuan anda dan menjaga kesehatan anda karena itu akan menjadi prioritas utama dalam proses seleksi.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">PT Danareksa kembali akan melakukan rekrutment calon karyawan baru pada tahun 2017 untuk tamatan pendidikan minimal adalah SMA/SMK atau yang sederajat lainnya, dengan memperhatikankeahlian, skill dan potensi anda. Jika anda berminat untuk bekerja dan bergabung menjadi salah satu keluarga dari PT Danareksa ini, maka segeralah daftarkan diri anda seblum informasi lowongan kerja tahun 2017 ini berakhir. Sebelummelakukan pendaftaran kami menghimbau kepada anda untuk sudi kiranya lebih dulu memperhatikan informasi lengkapnya dari kami.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Informasi lowongan kerja SMA/SMK tahun 2017 dari perusahaan jasa fidusia milik BUMN yaitu PT Danareksa.</p>\r\n\r\n<p style=\"text-align:justify\">Persyaratan Umum</p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\">Laki-laki dan wanita (warga negara Indonesia)</li>\r\n	<li style=\"text-align: justify;\">Sehat Jasmanai (tidak cacat fisik) dan rohani</li>\r\n	<li style=\"text-align: justify;\">Pendidikan minimal SMA/SMK atau yang sederajat lainnya</li>\r\n	<li style=\"text-align: justify;\">Nilai UN rata-rata 7,00</li>\r\n	<li style=\"text-align: justify;\">Umur maksimal 24 tahun dan minimal 18 tahu</li>\r\n	<li style=\"text-align: justify;\">Dapat mengoperasikan komputer</li>\r\n	<li style=\"text-align: justify;\">Dapat berbahasa inggris secara lisan atau tertulis menjadi nilai tambah</li>\r\n	<li style=\"text-align: justify;\">Tidak pernah mengkonsumsi Narkotika dan miras</li>\r\n	<li style=\"text-align: justify;\">Tidak pernah terliat tidak pidana kejahatan apapun, dibuktikan dengan KCK</li>\r\n	<li style=\"text-align: justify;\">Siap bekerja dan siap ditempatkan diseluruh wilayah kerja PT Danareksa</li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\">Cara memdaftar</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Dalam proses pendaftaran pada PT Danareksa ini adalah dengan cara&nbsp; membuka website resmi dari Perushaan ini, kemudian cari menu karir/carirr, lalu buka, didalamnya anda akan mendapatkan keterangan dan penjelasan bahwa anda diminta untuk mendownload formulir pendaftran. Silahkan di download.</li>\r\n	<li style=\"text-align: justify;\">Setelah men download formulir tersebut, silahkan isi dengan data yang sebnar-benarnya, dan siapkan berkas lainnya jika diminta. Setelah itu scane formulir dan berkas lainnya lalu kirimkan melalui email recruitment@danareksa.com.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">Jadwal Pendaftaran</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">&nbsp; Jadwal pendaftarn yang ada pada perusahaan ini sendiri untuk informasi rekrutmen calon karyawan baru tidak memiliki jadwal teap, jika anda berminat, untuk saat ini sedang dibuka dan informasi lebih lanjut dapat anda temukan didalamnya.</li>\r\n	<li style=\"text-align: justify;\">Pengumuman, hanya kandidat yang emenuhi persyaratan yang akan dipanggil dan mengikuti tahapan seleksi selanjutnnya dari perusahaan tersebut. Untuk informasinya sedniri ada dua kemungkinan kalau tida via email, maka perushaan akan men</li>\r\n</ul>\r\n', 'danareksa.jpg', '2018-01-15 06:31:56'),
(56, 60, 12, 'Lowongan Staff IT Programmer', 'Lowongan-Staff-IT-Programmer', '<p>PT Danareksa, jika dikaji secara mendalam ternyata nama ini mempunyai arti yang sangat dalam dan sesuai dengan fungsinya. &quot;Dana&quot; ini artinya adalah dana, dan &quot;reksa&quot; memiliki arti fidusia, ada yang bertanya apa itu fidusia, sedikit saya jelaskan mengenai fidusia. Fidusia merupakan pengalihan hak kepemilikan suatu benda atas dasar kepercayaan dengan ketentuan bahwa benda yang hak kepemilikannya dialihkan tetap dalam penguasaan pemilik benda. Sebuah fidusia diharapkan tetap setia terhadap pokok kepada siapa mereka berhutang tugas.Danareksa mewujudkan fidusia dinilai corporate integritas, keahlian, transparansi, akuntabilitas dan keadilan. Sejak berdirinya perushaan pada tahun 1976 lalu sebagai bank investasi milik Negara, Danareksa tetap singular sebagai lembaga keuangan non bank yang sepenuhnya dimilki oleh pemerintah dan dikelolah langsung oleh BUMN. Bisnis utma dari Danareksa ini adalah&nbsp; perbankkan investasi, ekuitas, dan modal utang pasar, manajemen onvestasi dan keuangan. Danareksa juga adalah merupakan sebuah lembaga keuangan perintis yang pertama dan yang pertama pula untuk memperkenalkan reksa dana di Indonesia. Danareksa juga adalah satu-satunya eperushaan lokal untuk menawarkan akses pasar langung ke klayen diseluruh dunia dan semakin berkembang menjadi perushaan yang ditanggung paling ekuitas dan utang penempatan di Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian sekilas dari erushaan PT Danareksa, sebenernya penulis juga kurang memahami apa maksud dan tujuan dari perusahaan ini sendiri, namun setalh membaca profil dan yang lainnya, dapat penulis simpulkan seperti yang penulis jabarkan diatas. Apapun itu, tentu tujuan utama kita sebagai pencari kerja adalah bekerja, mendapatkan hasil dari pekerjaannya. Tapi disini penulis jelaskan lagi sdikit, agar supaya anda tidak salah mengira mengenai perushaan ini. Perushaan ini adalah merupakan perushaan jasa, dimana bisa kita sebut sebagai perushaan penitipan harta benda, itu saja agar supaya jelas. Biar pun perushaan ini kedengaran familiar, ternyata perushaan ini adalah satu-satunya dan ada yang pertama tadi seperti yang sudah penulis jelaskan pada deskripsi diatas. Perushaan ini juga sangan dibutuhkan oleh perushaan-perushaan lain sebagai jasa penyimpanan barang dan lain-lain. Selain itu, peluang kerja disini juga sangat diharap-harapkan bagi masyarakat yang sedang membutuhkan pekerjaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sebagai perushaan, sebuat tempat usaha yang tidak lain semuanya sudah pasti bertujuan sama, yaitu ingin mendapatkan keuntungan. Tentu untuk menjalankan usahanya tersebuut dibutuhkan beberapa tenaga yang dapat membantu dan dengan segera dapat menyelesaikan tugas-tugas yang ada. Namun terkadang dalam melakukan proses pencarian teanaga kerja sering kali terhambat dengan keterbatasan tenaga kerja yang tidak profesional, perushaan merasa tidak ada hasil jika mendapatkan tenaga kerja baru yang ternyata tidak profesional. Oleh sebab itu perushaan untuk mencari orang-orang yang mempunyai skil dan kemampuan dalam bekerja, tentu tawaran menarik akan diberikan oleh perushaan. Tawaran-tawaran tersebut jika di PT Danareksa ini adalah jenjang karir, Gajih pokok, Asuransi kesehatan serta bonus jalan-jalan jika anda dari karyawan yang prestasinya baik dan sangat bermanfaat untuk perushaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk mendapatkan tenaga kerja yang handal dan berpotensi serta profesional, perusahaan kemudian mengadakan tes atau uji kemampuan yang meliputi dari beberapa tahapan seleksi, diantaranya adalah tes kesehatan, psikotes, dan wawancara. Namun sebelum sampai pada tahapan seleksi tersebut, perlu diketahui bahwa anda harus bersaing dengan ratusan bahkan ribuan para pelamar kerja yang mungkin akan sama-sama melakukan pendaftran diregistrasi awal seperti anda. Penulis menyarankan bagi anda yang ingin mendaptarkan diri pada perusahaan ini bahwasannya anda harus lebih bersiap-siap diri sebelum meakukan pendaftran dengan cara mengasa skill kemampuan anda dan menjaga kesehatan anda karena itu akan menjadi prioritas utama dalam proses seleksi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PT Danareksa kembali akan melakukan rekrutment calon karyawan baru pada tahun 2017 untuk tamatan pendidikan minimal adalah SMA/SMK atau yang sederajat lainnya, dengan memperhatikankeahlian, skill dan potensi anda. Jika anda berminat untuk bekerja dan bergabung menjadi salah satu keluarga dari PT Danareksa ini, maka segeralah daftarkan diri anda seblum informasi lowongan kerja tahun 2017 ini berakhir. Sebelummelakukan pendaftaran kami menghimbau kepada anda untuk sudi kiranya lebih dulu memperhatikan informasi lengkapnya dari kami.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Informasi lowongan kerja SMA/SMK tahun 2017 dari perusahaan jasa fidusia milik BUMN yaitu PT Danareksa.</p>\r\n\r\n<p>Persyaratan Umum</p>\r\n\r\n<ol>\r\n	<li>Laki-laki dan wanita (warga negara Indonesia)</li>\r\n	<li>Sehat Jasmanai (tidak cacat fisik) dan rohani</li>\r\n	<li>Pendidikan minimal SMA/SMK atau yang sederajat lainnya</li>\r\n	<li>Nilai UN rata-rata 7,00</li>\r\n	<li>Umur maksimal 24 tahun dan minimal 18 tahu</li>\r\n	<li>Dapat mengoperasikan komputer</li>\r\n	<li>Dapat berbahasa inggris secara lisan atau tertulis menjadi nilai tambah</li>\r\n	<li>Tidak pernah mengkonsumsi Narkotika dan miras</li>\r\n	<li>Tidak pernah terliat tidak pidana kejahatan apapun, dibuktikan dengan KCK</li>\r\n	<li>Siap bekerja dan siap ditempatkan diseluruh wilayah kerja PT Danareksa</li>\r\n</ol>\r\n\r\n<p>Cara memdaftar</p>\r\n\r\n<ul>\r\n	<li>Dalam proses pendaftaran pada PT Danareksa ini adalah dengan cara&nbsp; membuka website resmi dari Perushaan ini, kemudian cari menu karir/carirr, lalu buka, didalamnya anda akan mendapatkan keterangan dan penjelasan bahwa anda diminta untuk mendownload formulir pendaftran. Silahkan di download.</li>\r\n	<li>Setelah men download formulir tersebut, silahkan isi dengan data yang sebnar-benarnya, dan siapkan berkas lainnya jika diminta. Setelah itu scane formulir dan berkas lainnya lalu kirimkan melalui email recruitment@danareksa.com.</li>\r\n</ul>\r\n\r\n<p>Jadwal Pendaftaran</p>\r\n\r\n<ul>\r\n	<li>&nbsp; Jadwal pendaftarn yang ada pada perusahaan ini sendiri untuk informasi rekrutmen calon karyawan baru tidak memiliki jadwal teap, jika anda berminat, untuk saat ini sedang dibuka dan informasi lebih lanjut dapat anda temukan didalamnya.</li>\r\n	<li>Pengumuman, hanya kandidat yang emenuhi persyaratan yang akan dipanggil dan mengikuti tahapan seleksi selanjutnnya dari perusahaan tersebut. Untuk informasinya sedniri ada dua kemungkinan kalau tida via email, maka perushaan akan men</li>\r\n</ul>\r\n', 'program.jpg', '2018-01-15 06:39:30'),
(57, 56, 12, 'Lowongan Kerja sebagai GURU Di SMK Al- Hikmah', 'Lowongan-Kerja-sebagai-GURU-Di-SMK-Al-Hikmah', '<p>PT Danareksa, jika dikaji secara mendalam ternyata nama ini mempunyai arti yang sangat dalam dan sesuai dengan fungsinya. &quot;Dana&quot; ini artinya adalah dana, dan &quot;reksa&quot; memiliki arti fidusia, ada yang bertanya apa itu fidusia, sedikit saya jelaskan mengenai fidusia. Fidusia merupakan pengalihan hak kepemilikan suatu benda atas dasar kepercayaan dengan ketentuan bahwa benda yang hak kepemilikannya dialihkan tetap dalam penguasaan pemilik benda. Sebuah fidusia diharapkan tetap setia terhadap pokok kepada siapa mereka berhutang tugas.Danareksa mewujudkan fidusia dinilai corporate integritas, keahlian, transparansi, akuntabilitas dan keadilan. Sejak berdirinya perushaan pada tahun 1976 lalu sebagai bank investasi milik Negara, Danareksa tetap singular sebagai lembaga keuangan non bank yang sepenuhnya dimilki oleh pemerintah dan dikelolah langsung oleh BUMN. Bisnis utma dari Danareksa ini adalah&nbsp; perbankkan investasi, ekuitas, dan modal utang pasar, manajemen onvestasi dan keuangan. Danareksa juga adalah merupakan sebuah lembaga keuangan perintis yang pertama dan yang pertama pula untuk memperkenalkan reksa dana di Indonesia. Danareksa juga adalah satu-satunya eperushaan lokal untuk menawarkan akses pasar langung ke klayen diseluruh dunia dan semakin berkembang menjadi perushaan yang ditanggung paling ekuitas dan utang penempatan di Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Demikian sekilas dari erushaan PT Danareksa, sebenernya penulis juga kurang memahami apa maksud dan tujuan dari perusahaan ini sendiri, namun setalh membaca profil dan yang lainnya, dapat penulis simpulkan seperti yang penulis jabarkan diatas. Apapun itu, tentu tujuan utama kita sebagai pencari kerja adalah bekerja, mendapatkan hasil dari pekerjaannya. Tapi disini penulis jelaskan lagi sdikit, agar supaya anda tidak salah mengira mengenai perushaan ini. Perushaan ini adalah merupakan perushaan jasa, dimana bisa kita sebut sebagai perushaan penitipan harta benda, itu saja agar supaya jelas. Biar pun perushaan ini kedengaran familiar, ternyata perushaan ini adalah satu-satunya dan ada yang pertama tadi seperti yang sudah penulis jelaskan pada deskripsi diatas. Perushaan ini juga sangan dibutuhkan oleh perushaan-perushaan lain sebagai jasa penyimpanan barang dan lain-lain. Selain itu, peluang kerja disini juga sangat diharap-harapkan bagi masyarakat yang sedang membutuhkan pekerjaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sebagai perushaan, sebuat tempat usaha yang tidak lain semuanya sudah pasti bertujuan sama, yaitu ingin mendapatkan keuntungan. Tentu untuk menjalankan usahanya tersebuut dibutuhkan beberapa tenaga yang dapat membantu dan dengan segera dapat menyelesaikan tugas-tugas yang ada. Namun terkadang dalam melakukan proses pencarian teanaga kerja sering kali terhambat dengan keterbatasan tenaga kerja yang tidak profesional, perushaan merasa tidak ada hasil jika mendapatkan tenaga kerja baru yang ternyata tidak profesional. Oleh sebab itu perushaan untuk mencari orang-orang yang mempunyai skil dan kemampuan dalam bekerja, tentu tawaran menarik akan diberikan oleh perushaan. Tawaran-tawaran tersebut jika di PT Danareksa ini adalah jenjang karir, Gajih pokok, Asuransi kesehatan serta bonus jalan-jalan jika anda dari karyawan yang prestasinya baik dan sangat bermanfaat untuk perushaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk mendapatkan tenaga kerja yang handal dan berpotensi serta profesional, perusahaan kemudian mengadakan tes atau uji kemampuan yang meliputi dari beberapa tahapan seleksi, diantaranya adalah tes kesehatan, psikotes, dan wawancara. Namun sebelum sampai pada tahapan seleksi tersebut, perlu diketahui bahwa anda harus bersaing dengan ratusan bahkan ribuan para pelamar kerja yang mungkin akan sama-sama melakukan pendaftran diregistrasi awal seperti anda. Penulis menyarankan bagi anda yang ingin mendaptarkan diri pada perusahaan ini bahwasannya anda harus lebih bersiap-siap diri sebelum meakukan pendaftran dengan cara mengasa skill kemampuan anda dan menjaga kesehatan anda karena itu akan menjadi prioritas utama dalam proses seleksi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PT Danareksa kembali akan melakukan rekrutment calon karyawan baru pada tahun 2017 untuk tamatan pendidikan minimal adalah SMA/SMK atau yang sederajat lainnya, dengan memperhatikankeahlian, skill dan potensi anda. Jika anda berminat untuk bekerja dan bergabung menjadi salah satu keluarga dari PT Danareksa ini, maka segeralah daftarkan diri anda seblum informasi lowongan kerja tahun 2017 ini berakhir. Sebelummelakukan pendaftaran kami menghimbau kepada anda untuk sudi kiranya lebih dulu memperhatikan informasi lengkapnya dari kami.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Informasi lowongan kerja SMA/SMK tahun 2017 dari perusahaan jasa fidusia milik BUMN yaitu PT Danareksa.</p>\r\n\r\n<p>Persyaratan Umum</p>\r\n\r\n<ol>\r\n	<li>Laki-laki dan wanita (warga negara Indonesia)</li>\r\n	<li>Sehat Jasmanai (tidak cacat fisik) dan rohani</li>\r\n	<li>Pendidikan minimal SMA/SMK atau yang sederajat lainnya</li>\r\n	<li>Nilai UN rata-rata 7,00</li>\r\n	<li>Umur maksimal 24 tahun dan minimal 18 tahu</li>\r\n	<li>Dapat mengoperasikan komputer</li>\r\n	<li>Dapat berbahasa inggris secara lisan atau tertulis menjadi nilai tambah</li>\r\n	<li>Tidak pernah mengkonsumsi Narkotika dan miras</li>\r\n	<li>Tidak pernah terliat tidak pidana kejahatan apapun, dibuktikan dengan KCK</li>\r\n	<li>Siap bekerja dan siap ditempatkan diseluruh wilayah kerja PT Danareksa</li>\r\n</ol>\r\n\r\n<p>Cara memdaftar</p>\r\n\r\n<ul>\r\n	<li>Dalam proses pendaftaran pada PT Danareksa ini adalah dengan cara&nbsp; membuka website resmi dari Perushaan ini, kemudian cari menu karir/carirr, lalu buka, didalamnya anda akan mendapatkan keterangan dan penjelasan bahwa anda diminta untuk mendownload formulir pendaftran. Silahkan di download.</li>\r\n	<li>Setelah men download formulir tersebut, silahkan isi dengan data yang sebnar-benarnya, dan siapkan berkas lainnya jika diminta. Setelah itu scane formulir dan berkas lainnya lalu kirimkan melalui email recruitment@danareksa.com.</li>\r\n</ul>\r\n\r\n<p>Jadwal Pendaftaran</p>\r\n\r\n<ul>\r\n	<li>&nbsp; Jadwal pendaftarn yang ada pada perusahaan ini sendiri untuk informasi rekrutmen calon karyawan baru tidak memiliki jadwal teap, jika anda berminat, untuk saat ini sedang dibuka dan informasi lebih lanjut dapat anda temukan didalamnya.</li>\r\n	<li>Pengumuman, hanya kandidat yang emenuhi persyaratan yang akan dipanggil dan mengikuti tahapan seleksi selanjutnnya dari perusahaan tersebut. Untuk informasinya sedniri ada dua kemungkinan kalau tida via email, maka perushaan akan men</li>\r\n</ul>\r\n', 'guru.jpg', '2018-01-15 06:40:39'),
(58, 60, 12, 'lowongan dosen', 'lowongan-dosen', '<p>kami sedang mencari tenaga dosen untuk membantu menjalankan roda perkuliahan di universitas kami</p>\r\n', 'noimage.jpg', '2018-01-16 08:05:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`, `photo_id`) VALUES
(12, 'kannyf mr', '59461', 'kannyf.mr@gmail.com', 'kannyfmr', '922d124c8b6c9d22f9f888ab3d26e331', '2018-01-09 13:04:40', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
