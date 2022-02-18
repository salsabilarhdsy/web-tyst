-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Nov 2020 pada 15.29
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15270328_tystdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `id_category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `title`, `image`, `content`, `date`, `id_category`) VALUES
(11, 'Mengenal Produk Perawatan Wajah COSRX', 0x636f7372785b315d2e6a7067, 'Jika kamu adalah penggemar berat produk kecantikan keluaran negara korea selatan, COSRX pasti jadi salah satu produk yang kamu cari terus menerus karena keunggulannya menjaga kulit tetap sehat. COSRX menyediakan berbagai jenis produk perawatan kulit, berikut ini akan kami jelaskan apa saja sih produknya dan apa saja ya fungsinya?\r\n                            </p>\r\n                            <h5>1. Cleanser</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Cleanser_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524131514\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX Low pH Good Morning Gel Cleanser</h6>\r\n                                <ul>\r\n                                    <li>Removes impurities, while hydrating and restoring the skin’s natural pH</li>\r\n                                    <li>Ideally balanced and gentle pH of 5~6</li>\r\n                                    <li>Key ingredient: Tea Tree Oil</li>\r\n                                    <li>Suitable for all skin types, especially sensitive and dry skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Salicylic Acid Daily Gentle Cleanser</h6>\r\n                                <ul>\r\n                                    <li>Removes impurities and sebum, reduces acne and breakouts</li>\r\n                                    <li>Key Ingredient: Salicylic Acid 0.5%</li>\r\n                                    <li>Suitable for oily and acne-prone skin </li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>2. Toner</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Toners_at_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524131685\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX AHA/BHA Clarifying Treatment Toner</h6>\r\n                                <ul>\r\n                                    <li>Daily exfoliating toner</li>\r\n                                    <li>Refresh and softens skin, maintains skin’s optimal pH level, prevents whiteheads and blackheads</li>\r\n                                    <li>Key Ingredients: Salix Alba (Willow) Bark Water 10%, Pyrus Malus (Apple) Fruit Water 10%, Glycolic Acid (AHA) 0.1%, Betaine Salicylate (BHA) 0.1%</li> \r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                                <h6>COSRX Centella Water Alcohol-Free Toner</h6>\r\n                                <ul>\r\n                                    <li>Calms and hydrates irritated and sensitive skin</li> \r\n                                    <li>Key Ingredients: Jeju Mineral Water 82%, Centella Asiatica Leaf Water 10%</li> \r\n                                    <li>Best for sensitive skin</li> \r\n                                </ul>\r\n                                <h6>COSRX Galactomyces Alcohol-Free Toner</h6>\r\n                                <ul>\r\n                                    <li>Nourishes and hydrates the skin, making it more radiant and clear</li>\r\n                                    <li>Key Ingredients: Jeju Mineral Water 82%, Galactomyces Ferment Filtrate 10%</li>\r\n                                    <li>Suitable for all skin types, especially dull and aging skin</li>\r\n                                </ul>\r\n                                <h6>COSRX One Step Moisture Up Pads</h6>\r\n                                <ul>\r\n                                    <li>Fights dehydrated, delicate and flakey skin</li> \r\n                                    <li>Key Ingredients: Propolis Extract 79.14%, Betaine Salicylate (BHA) 0.50%, Hyaluronic Acid</li> \r\n                                    <li>Best for dry, flakey skin</li>\r\n                                </ul>\r\n                                <h6>COSRX One Step Pimple Clear Pad</h6>\r\n                                <ul>\r\n                                    <li>Exfoliating pads to removes excess oil and keep the complexion clear</li>\r\n                                    <li>Key Ingredients: Salix Alba (Willow) Bark Water 85.92%, Betaine Salicylate 1%</li> \r\n                                    <li>Best for oily skin and congested skin</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>3. Treatments: AHAs and BHAs</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_AHA_BHA_Treatment_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524132098\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX AHA 7 Whitehead Power Liquid</h6>\r\n                                <ul>\r\n                                    <li>Exfoliates skin to help reveal a more radiant, even-toned complexion</li>\r\n                                    <li>Key Ingredients: Pyrus Malus (Apple) Fruit Water 75%, Glycolic Acid (AHA) 7%</li>\r\n                                    <li>Suitable for all skin types, but start with every other night application first</li>\r\n                                </ul>\r\n                                <h6>COSRX BHA Blackhead Power Liquid</h6>\r\n                                <ul>\r\n                                    <li>Eliminates blackheads and dead skin cells, cleans up clogged pores</li>\r\n                                    <li>Key Ingredients: Salix Alba (Willow) Bark Water 67.80%, Betaine Salicylate (BHA) 4.00%</li>\r\n                                    <li>Suitable for all skin types, but do not use BHA products if you are allergic to aspirin</li>\r\n                                </ul>\r\n                                <h6>COSRX Two in One Poreless Power Liquid</h6>\r\n                                <ul>\r\n                                    <li>Clears out skin congestion, while tightening and minimising the appearance of enlarged pores</li>\r\n                                    <li>Key Ingredients: Salix Alba (Willow) Bark Water 88.0%, Betaine Salicylate 0.1%</li>\r\n                                    <li>Suitable for all skin types, especially oily skin types with enlarged pores</li>\r\n                                    <li>Since this liquid contains only 0.1% of BHA, it can be used with other AHA or BHA products</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>4. Essence/ Serum</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Essences_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524132337\" class=\"img-fluid\" alt=\"responsive img\">\r\n                                <h6>COSRX Advanced Snail 96 Mucin Power Essence</h6>\r\n                                <ul>\r\n                                    <li>Protects the skin from moisture loss while keeping the skin texture smooth and healthy</li>\r\n                                    <li>Key Ingredients: Snail Secretion Filtrate 96%</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                                <h6>COSRX Galactomyces 95 Tone Balancing Essence</h6>\r\n                                <ul>\r\n                                    <li>Nourish and hydrate the skin, smooths out rough, patchy skin, evens out skin tone, naturally slows down signs of aging</li>\r\n                                    <li>Key Ingredients: Galactomyces Ferment Filtrate 95.4%, Niacinamide 2%, Adenosine 0.04%</li>\r\n                                    <li>Best for rough, uneven and aging skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Hyaluronic Acid Hydra Power Essence</h6>\r\n                                <ul>\r\n                                    <li>Moisturise and nourish your skin deeply, smooths out dry and bumpy skin</li>\r\n                                    <li>Key Ingredients: Sodium Hyaluronate 4,000ppm</li>\r\n                                    <li>Best for normal or dry and dehydrated skin</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>5. Ampoule</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Ampoules_at_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524132594\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX Centella Blemish Ampule</h6>\r\n                                <ul>\r\n                                    <li>COSRX Centella Blemish Ampule</li>\r\n                                    <li>Key Ingredients: Centella Asiatica Leaf Water 84.84%</li>\r\n                                    <li>Suitable for all skin types, even sensitive skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Propolis Light Ampule</h6>\r\n                                <ul>\r\n                                    <li>Moisturises skin, giving you glowing and smooth skin</li>\r\n                                    <li>Key Ingredients: Propolis Extract 83.25%</li>\r\n                                    <li>Best for dry, dehydrated, and dull skin</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>6. Moisturizer</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Moisturisers_Creams_at_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524132823\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX Advanced Snail 92 All in One Cream</h6>\r\n                                <ul>\r\n                                    <li>Highly nourishing and moisturising, repairs irritated skin, improve uneven skin texture and gives you glowy skin</li>\r\n                                    <li>Key Ingredients: Snail Secretion Filtrate 92%</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                                <h6>COSRX Centella Blemish Cream</h6>\r\n                                <ul>\r\n                                    <li>Spot treats blemishes and reduces breakouts</li>\r\n                                    <li>Key Ingredients: Centella Asiatica Leaf Water 50.79%, Centella Asiatica Extract 5,000ppm</li>\r\n                                    <li>Best for troubled acne-prone skin, also suitable for sensitive and irritated skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Hyaluronic Acid Intensive Cream</h6>\r\n                                <ul>\r\n                                    <li>Deeply moisturises and nourishes skin, protects skin from moisture loss, balancing your skin’s water and oil content</li>\r\n                                    <li>Key Ingredients: Sodium Hyaluronate 3,000ppm</li>\r\n                                    <li>Suitable for all skin types, especially dry skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Natural BHA Skin Returning Emulsion</h6>\r\n                                <ul>\r\n                                    <li>Prevents breakouts, hydrates, soothe and mattify skin</li>\r\n                                    <li>Key Ingredients: Centella Asiatica Leaf Water 79.37%, Betaine Salicylate(BHA) 1%</li>\r\n                                    <li>Best for combination to oily, combination and acne-prone skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Oil-Free Ultra-Moisturizing Lotion with Birch Sap</h6>\r\n                                <ul>\r\n                                    <li>Hydrate and treat sensitive, irritated, or freshly exfoliated skin</li>\r\n                                    <li>Developed to complement COSRX’s AHA, BHA and Vitamin C products</li>\r\n                                    <li>Key Ingredients: Betula Platyphylla Japonica Juice (Birch Sap) 70.85%</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>7. Overnight Masks</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Overnight_Masks_at_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524133194\" class=\"ig-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX Ultimate Moisturizing Honey Overnight Mask</h6>\r\n                                <ul>\r\n                                    <li>Deeply hydrates and refreshes the skin</li>\r\n                                    <li>Key Ingredients: Propolis Extract 87.26%</li>\r\n                                    <li>Best for dry and acne-prone skin</li>\r\n                                </ul>\r\n                                <h6>COSRX Ultimate Nourishing Rice Overnight Spa Mask</h6>\r\n                                <ul>\r\n                                    <li>Nourishes and moisturises the skin for clearer and softer complexion</li>\r\n                                    <li>Key Ingredients: Oryza Sativa (Rice) Extract 68.90%, Niacinamide 2%</li>\r\n                                    <li>Suitable for all skin types, especially dull and dry skin</li>\r\n                                </ul>\r\n                            </div>\r\n                            <h5>8. Acne/ Pimple Patches & Blackhead Kit</h5>\r\n                            <div class=\"container-fluid\">\r\n                                <img src=\"https://cdn.shopify.com/s/files/1/1323/4713/files/COSRX_Pimple_Patch_at_Nudie_Glow_Best_Korean_Beauty_Australia_large.jpg?v=1524133400\" class=\"img-fluid\" alt=\"responsive image\">\r\n                                <h6>COSRX Acne Pimple Master Patch</h6>\r\n                                <ul>\r\n                                    <li>Protects acne from further infection while absorbing all the gunk</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                                <h6>COSRX Clear Fit Master Patch</h6>\r\n                                <ul>\r\n                                    <li>Prevents acne from further infection while absorbing all the gunk</li>\r\n                                    <li>Ultra thin and invisible under makeup.</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                                <h6>COSRX Mr. RX Blackhead Remover Kit</h6>\r\n                                <ul>\r\n                                    <li>An easy-to-use, 3-step kit that helps extract blackheads and other impurities from the skin</li>\r\n                                    <li>Suitable for all skin types</li>\r\n                                </ul>\r\n                            </div>\r\n                            <p>\r\n                                Setelah mengetahui lebih detail tentang jenis dan fungsi dari berbagai produk perawatan wajah COSRX, kamu bisa dengan mudah memilih produknya dengan menyesuaikan jenis produk sesuai kondisi kulit wajahmu lho! Hal ini akan mengurangi kemungkinan timbulnya alergi atau ketidakcocokan dengan komposisi dalam produk yang digunakan.', '2020-10-31', 2),
(12, 'Mengenal Produk Perawatan Wajah Avoskin', 0x41564f534b494e2d434f5645522d315b315d2e6a7067, 'Tahukah Anda? Kulit yang kusam, kasar, tiba-tiba berminyak, dan berjerawat, seluruhnya dapat disebabkan oleh satu hal, yaitu kulit kering. Dalam kondisi kering, sistem pertahanan kulit tidak akan bekerja optimal, sehingga membuat kulit lebih rentan akan paparan sinar UV, polusi, debu, maupun kotoran yang membuatnya kusam, kasar, atau berjerawat. Tak hanya itu saja, sebagai kompensasi kurangnya kelembapan, kulit juga akan memproduksi minyak lebih banyak.\r\n</p>\r\n<p>\r\n                                Namun, tak bisa dipungkiri, kulit kering adalah masalah yang paling banyak dialami di bulan puasa saat asupan cairan kurang terjaga. Agar terhindar dari masalah tersebut, saya pun mencari rangkaian perawatan yang mampu melembapkan kulit dengan efektif. Pilihan saya akhirnya jatuh pada rangkaian #GoHydrate dari Avoskin. Mau tahu produk apa saja yang tersedia dalamapa rangkaian ini dan berhasil menjaga kelembapan kulit saya? Yuk, simak di sini!\r\n</p>\r\n<h5>1. Avoskin Perfect Hydrating Treatment Essence</h5>\r\n<div class=\"container-fluid mt-4\">\r\nimg src=\"https://soc-phoenix.s3.amazonaws.com/927-W3_Article_Avoskin_essence.jpg\" class=\"img-fluid\">\r\n<p>\r\n                                    Produk ini hadir dalam kemasan kaca doff transparan berukuran 30 ml, yang dilengkapi dengan tutup ulir plastik silver. Dari ingredients list-nya, ada beberapa kandungan yang menarik yaitu: ascorbic acid (vitamin C), chamomile oil, carrot oil, dan rosehip oil. Pada situs Avoskin, dijelaskan bahwa Avoskin Perfect Hydrating Treatment Essence mengandung turunan dari vitamin C yang disebut ETVC. ETVC akan bekerja mendorong proses regenerasi kulit, sehingga dapat menyamarkan noda hitam dan bekas luka untuk kulit yang lebih cerah. Selain ETVC, terdapat pula kandungan chamomile oil yang akan melembapkan kulit, menjaga elastisitas, dan bekerja sebagai anti-inflamasi dan anti-bakteri untuk mengatasi masalah kulit seperti jerawat atau kemerahan, serta rosehip oil yang akan membantu merawat kulit dan mengurangi kerutan.\r\n</p>\r\n<p>\r\n                                    Saat dituangkan, essence ini memiliki tekstur gel-water yang ringan dan tidak terlalu cair, sehingga mudah diaplikasikan dan benar-benar terasa memberikan kelembapan secara intens. Teksturnya benar-benar enak, melembapkan tapi tidak lengket.\r\n</p>\r\n</div>\r\n<h5>2.  Avoskin Hydrating Treatment Essence</h5>\r\n<div class=\"container-fluid mt-4\">\r\n<img src=\"https://soc-phoenix.s3.amazonaws.com/193-W3_Article_Avoskin_toner.jpg\" class=\"img-fluid\">\r\n<p>\r\n                                    Walau namanya essence, produk ini hadir menyerupai face mist dalam botol kaca doff hijau berukuran 100 ml dengan nozzle putih dengan tutup plastik transparan. Saat pertama disemprot, essence ini langsung memberikan sensasi mint dingin menyejukkan karena mengandung peppermint essential oil yang tak hanya memberikan efek dingin namun juga membantu mengurangi produksi minyak secara alami.\r\n</p>\r\n<p>\r\n                                    Avoskin Hydrating Treatment Essence juga mengandung vitamin C yang kaya akan anti-oksidan untuk mengurangi dampak buruk radikal bebas dan mencerahkan kulit kusam. Setelah disemprotkan, essence ini juga tidak meninggalkan rasa lengket. Produk ini nggak cuma bisa digunakan sebagai face mist, bisa juga digunakan sebagai toner untuk mengangkat sisa-sisa kotoran pada kulit dan menjaga mengembalikan kelembapan kulit sebelum penggunaan skin care berikutnya. Avoskin Hydrating Treatment Essence juga bisa Anda bahwa kemanapun, karena bisa digunakan kapan saja. Namun, setelah sampai di rumah jangan lupa untuk menyimpannya di kulkas, karena produk ini dapat mengalami perubahan warna apabila terus menerus disimpan di luar kulkas.\r\n</p>\r\n</div>\r\n<h5>3.  Avoskin Intensive Nourishing Eye Cream</h5>\r\n<div class=\"container-fluid mt-4\">\r\n<img src=\"https://soc-phoenix.s3.amazonaws.com/492-W3_Article_Avoskin_eyecream.jpg\" class=\"img-fluid\">\r\n<p>\r\n                                    Produk ini dikemas dalam jar kaca doff cokelat mungil dengan isi produk 10 gram dengan tutup ulir plastik berwarna emas. Terdapat sekat pembatas antara produk dan tutup agar kebersihan produk tetap terjaga.\r\n</p>\r\n<p>\r\n                                    Kandungan Avoskin Intensive Nourishing Eye Cream ini sangat lengkap. Ada aloe vera, cucumber fruit extract, algae extract, dan hyaluronic acid untuk menjaga kelembapan kulit di area mata. Lalu, terdapat kandungan anthemis nobilis flower (english chamomile) oil dan tea tree oil yang bersifat anti-inflamasi serta soothing untuk kulit area mata yang sensitif. Untuk Anda yang memiliki mata panda alias lingkaran hitam di bawah mata, produk ini juga mengandung erosus root extract alias ekstrak bengkoang, coffee arabica seed powder, dan kojic acid yang bekerja untuk mencerahkan kulit. Terakhir, terdapat juga kandungan collagen, macadamia ternifolia nut seed oil, dan grapeseed oil yang bekerja sebagai anti-aging untuk mengurangi tanda penuaan di area mata seperti garis halus.\r\n</p>\r\n<p>\r\n                                    Jangan terkecoh dengan kemasannya yang mungil, ya, karena ternyata isinya nggak cepat habis, lho! Sedikit produk saja sudah bisa menghidrasi area mata saya dengan baik, terutama karena teksturnya yang creamy dan benar-benar terasa ‘rich’. Jadi, sedikit saja sudah terasa sangat melembapkan. Walaupun creamy, lagi-lagi teksturnya tetap nyaman, cepat meresap, dan tidak lengket. Untuk menjaga kualitas produk Avoskin Intensive Nourishing Eye Cream agar tahan lebih lama, sebaiknya simpan produk ini di kulkas, ya!', '2020-10-31', 2),
(18, 'Perempuan Bicara, Saatnya Berani Melakukan Perubahan Bersama Najwa Shihab', 0x3032333331333830305f313630333038363732392d66696d656c612d666573742d77372d6e616a77612d7368696861622d313038302d782d313038302e6a7067, ' Perempuan dan perubahan tentu bukan hal baru. Apalagi sejak adanya emansipasi perempuan. Banyak tokoh perempuan sukses yang berhasil membawa perubahan di dunia. Di Indonesia sendiri, Najwa Shihab adalah sosok perempuan tangguh dengan kecerdasan dan keberaniannya dalam bersuara, mengungkapkan dan membuka mata masyarakan dengan fakta yang nyata.<br><br>\r\n\r\nAmelia Ayu Kinanti, Editor in Chief Fimela.com menyatakan definisi perubahan adalah sebuah hal yang pasti. Namun bagaimana kita melewati perubahan adalah tantangan kita sebagai manusia. Hal ini tentu membuat para perempuan yang bisa memberi efek positif bagi diri sendiri dan orang lain.\r\n<br><br>\r\nNajwa Shihab bercerita jika menjadi orang yang berani dan lugas seperti saat ini tentu melewati proses panjang, dan pengalaman. Ia telah melalui banyak hal mulai dari beragam liputan dari profesi yang dijalaninya selama ini.\r\n<br><br>\r\nLiputan panjang dalam karier yang ia lakukan melatih Najwa Shihab untuk memupuk keberanian dan hal ini ditempuh dengan kerja keras hingga ia mencapai keuksesan saat ini. Ia juga menceritakan jika keluarga tidak pernah membedakan gender dan keluarga selalu membangkitkan mimpi Najwa Shihab setinggi-tingginya. Sehinga cara mendidik dari orangtua Najwa Shihab membawa kesuksesan hingga saat ini.\r\n<br><br>\r\nDalam kehidupan, Najwa Shihab bercerita ia memang memiliki rencana, ia juga memiliki target dalam setiap tahapan karier agar tujuannya tercapai yang membuat dirinya. Justru rintangan yang dihadapi membuat dirinya semakin kuat.', '2020-11-01', 5),
(19, 'Artis Thailand Davika Hoorne Bintangi Iklan Barbie™ x Pomelo', 0x61727469732d746861696c616e642d646176696b612d686f6f726e652d62696e74616e67692d696b6c616e2d6261726269652d782d706f6d656c6f2d325f37305f32303230313032313139313931367543516730552e6a7067, 'Apa kesamaan penggemar gaya fesyen tahun 2000-an, fans aktris Thailand Davika Hoorne, dan kolektor segala hal yang berbau Barbie™? Ada kabar yang menyenangkan untuk ketiganya di bulan ini! <br><br>\r\n\r\nLabel fesyen Pomelo baru saja merilis koleksi kolaborasi bersama Barbie™ pada hari Rabu, 21 Oktober ini. Dan yang terpilih sebagai bintang koleksi ini adalah aktris ternama asal Thailand, Davikah Hoorne. <br><br>\r\n\r\nMelalui koleksi ini, Pomelo ingin menyampaikan pesan female empowerment, lebih tepatnya mengingatkan kita akan sosok perempuan kecil yang kini sudah tumbuh menjadi wanita independen dan percaya diri. Setiap item dalam koleksi ini pun memiliki keunikan khas yang bisa menjadi statement piece, mendorong para penggunanya untuk mengekspresikan diri lewat fashion. Koleksi ini juga memiliki nuansa fesyen tahun 2000-an—penuh warna dan tentunya eye-catching. I mean, Y2K fashion is the trend nowadays, right? Cocok untuk bagi kamu yang ingin bereksperimen dengan gaya high teen fashion.\r\n<br><br>\r\nTerdiri dari 31 item, koleksi Barbie™ x Pomelo menggunakan warna-warna yang identik dengan brand Barbie, yakni putih, hitam, dan pink. Kamu bisa menemukan aksesori rambut, perhiasan, handbag, dress, outerwear, chain belt, rok, celana, dan berbagai macam model atasan di koleksi spesial ini. Fun fact: pakaian Barbie™ x Pomelo terbuat dari material yang 100% sustainable cotton!\r\n', '2020-11-01', 1),
(20, '8 Resep Dessert dari TikTok yang Mudah Dibuat di Microwave', 0x6f702d6672656570696b5f36385f32303230313032383136343531376954417742322e6a7067, 'Long weekend di rumah saja? Tak masalah! Kamu punya banyak waktu untuk mengeksplorasi berbagai aktivitas, dan bahkan, ehm, kamu tak perlu menciptakan alasan sebagai pembenaran untuk makan makanan manis di momen liburan ini. Bahkan sebenarnya, rasa lapar, rasa bosan, atau sebuah pandemi global saja sudah menjadi alasan bagus untuk mendorong kamu memakai celemek dan memanggang dessert. Namun jika kamu tak ingin terlalu repot dan makan waktu, apalagi jika kamu tak punya kesabaran ataupun energi untuk menunggu 45 menit memanggang sesuatu di oven, Cosmo mengerti. Maka dari itu, solusinya adalah: Resep microwave dessert.<br><br>\r\n\r\n\r\nYa, manisan, keik, cokelat, dan sederet resep berikut ini tetap menggugah cita rasa seperti hasil panggangan oven meski dibuat dari microwave. Bahkan resep ini jauh lebih praktis dan tidak makan waktu! Ditambah, kamu tak perlu repot membersihkan alat masak karena biasanya hanya akan butuh satu mangkuk yang aman masuk microwave. So, we’ve gotchu. Simak sederet resep dessert dari TikTok yang mudah dibuat di microwave!<br><br>\r\n\r\nPumpkin Spice Mug Cake\r\nBahan-bahan:\r\n1 telur\r\n½ cangkir labu\r\nSedikit kayu manis dan madu sesuai selera<br><br>\r\n\r\nInstruksi:\r\nMasak di microwave selama tiga menit. Tambahkan yoghurt, cokelat, buah berries untuk menambah cita rasa.', '2020-11-01', 5),
(21, 'Ini Alasan Kylie Jenner Tidak Datang ke Ultah Kim Kardashian', 0x72737a5f3132323731373633325f3230383234313437303636333035325f353431313930333036363934313734383733355f6e5f34325f3230323031303239323334303139746436434e472e6a7067, 'Still keeping up with the Kardashians? Jika kamu mengikuti anggota keluarga Kardashian atau berita Hollywood mana pun di Instagram, kamu pasti tahu bahwa Kim merayakan ulang tahunnya yang ke-40 di pulau pribadi bersama keluarga dan teman-teman terdekatnya. <br><br>\r\n\r\nDi foto-foto tersebut, tidak ada satu tamu pun yang terlihat menggunakan masker, maka Kim tidak lupa menjelaskan alasannya. “Setelah melakukan berbagai tes kesehatan selama 2 minggu dan meminta semua orang untuk karantina, saya mengejutkan inner circle terdekat dengan sebuah perjalanan ke pulau pribadi di mana kami dapat berpura-pura bahwa kondisi sudah normal.” Tentu ada banyak netizen yang tetap menyindir Kim, namun ada juga penggemar yang meninggalkan komentar, “Where’s Kylie???” <br><br>\r\n\r\n\r\nYup, Cosmo juga sadar bahwa Kylie tidak hadir di pesta tersebut! But why? Seorang sumber menyampaikan alasannya ke US Weekly: “Kylie hanya sibuk dengan pekerjaan dan janji lainnya, maka ia tidak bisa menghadiri acara ulang tahun Kim. Tentunya, mereka tetap sangat dekat.” <br><br>\r\n\r\n\r\nSo, there’s no drama between these two sisters - a girl’s simply gotta hustle!', '2020-11-01', 3),
(22, 'Mengulas Tipe Kepribadian MBTI (Myers–Briggs Type Indicator)', 0x6d6274692e706e67, 'MBTI adalah tes kepribadian yang diisi sendiri, tujuannya untuk mengetahui cara orang memandang dunia dan bagaimana cara mereka mengambil keputusan. MBTI mengambil inspirasi dari teori Carl Jung, yang menyebut bahwa manusia punya 4 fungsi utama dalam hidup: sensasi, intuisi, berpikir, dan merasakan.\r\n<br><br>\r\nPembagian ini kemudian terbagi menjadi empat rentang:\r\n<br>\r\nExtraversion-Introversion (E-I): mudah bersosialisasi vs tertutup.\r\nSensing-Intuition (S-N): berpusat pada kenyataan vs imajinasi kuat.\r\nThinking-Feeling (T-F): berpikir logis vs mengandalkan perasaan\r\nJudging-Perceiving (J-P): menganalisa vs bertindak spontan\r\n<br><br>\r\nKemudian MBTI menggolongkan kepribadian seseorang dalam 16 jenis, yaitu INTJ, INTP, ENTJ, ENTP, INFJ, INFP, ENFJ, ENFP, ISTJ, ISFJ, ESTJ, ESFJ, ISTP, ISFP, ESTP, dan ESFP.\r\n<br><br>\r\nMBTI juga menuai pro-kontra terutama penolakan dari kalangan akademisi dan praktisi psikologi. Tidak jarang, MBTI disebut sebagai pseudosains. \r\nDikutip dari The Guardian, Dr. Dean Burnett, dari Institute of Psychological Medicine and Clinical Neuroscience di Universitas Cardiff, pernah menggelontorkan sejumlah kritik terhadap MBTI.\r\n<br><br>\r\nIa memberikan sejumlah kritik yaitu; MBTI hanya berdasarkan pilihan biner, lemahnya landasan saintifik, serta kecurigaan terhadap fenomena self-fulfilling (pemenuhan diri), yaitu semakin banyak orang yang melakukan tes MBTI, semakin banyak yang merasa perlu melakukannya.\r\n<br><br>\r\nMasalahnya, tes kepribadian manapun, memang sifatnya mendikotomi atau kategoris. Bagaimanapun, tujuan dari tes-tes keperibadian semacam ini memang dibuat untuk menghasilkan skor. Yang mana skor tersebut kemudian digunakan untuk membuat sebuah kesimpulan.\r\n<br><br>\r\nTentu saja kemudian orang akan dikelompokkan menjadi beberapa kelompok kategori. Misalnya, apakah seseorang cocok untuk dipekerjakan atau tidak. Tentu saja dibutuhkan kategorisasi semacam ini, tidak bisa kemudian seorang calon karyawan ditempatkan dalam sebuah spektrum kategori yang dilematis, karena tujuannya adalah keputusan ya atau tidak. \r\n<br><br>\r\nMemang inilah kekurangan MBTI, dan tes-tes kepribadian lainnya. Mereka tidak bisa mengukur secara utuh kompleksitas manusia.\r\n<br><br>\r\nNamun demikian, meskipun banyak psikolog dan orang awam yang menyatakan tidak sama sekali terhadap tes MBTI, sebagian minoritas tetap melihat adanya manfaat dari mempelajari MBTI. MBTI pada dasarnya memberi petunjuk, gambaran, dan istilah/bahasa untuk mempelajari diri sendiri dan orang lain.', '2020-11-02', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(2, 'Beauty'),
(3, 'Celebrity'),
(1, 'Fashion'),
(5, 'Lifestyle'),
(4, 'Personality');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`,`date`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;