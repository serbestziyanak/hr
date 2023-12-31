/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ayu_hr

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 02/10/2023 16:01:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for birimler
-- ----------------------------
DROP TABLE IF EXISTS `birimler`;
CREATE TABLE `birimler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `f1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `program_kodu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `p1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `p2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `p3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `p4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `e1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `e2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `e3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `e4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of birimler
-- ----------------------------
INSERT INTO `birimler` VALUES (1, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Pedagogy and Psychology', 'Pedagoji ve Psikoloji Bölümü', '6B01101', 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (2, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '6B01202', 'Мектепке дейінгі оқыту және тәрбиелеу', 'Дошкольное обучение и воспитание', 'Pre-School Education and Upbringing ', 'Okul Öncesi Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (3, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '6B01303', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (4, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', '6B01404', 'Бастапқы әскери дайындық', 'Начальная военная подготовка', 'Basic Military Training', 'Temel Askeri Hazırlık Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (5, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', '6B01405', 'Денешынықтыру және спорт', 'Физическая культура и спорт', 'Physical Education and Sports', 'Beden Eğitimi ve Spor  Öğretmenliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (6, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', '6B01485', 'Дене шынықтыру және бастапқы әскери дайындық', 'Физическая культура и начальная военная подготовка', 'Physical Education and Initial Military Training', 'Beden Eğitimi ve Temel Askeri Hazırlık Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (7, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B01406', 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (8, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B01408', 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher Training in Art Work and Technical Drawing', 'Resim Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (9, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B01407', 'Кәсіптік оқыту', 'Профессиональное обучение', 'Professional Training', 'Mesleki Eğitim Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (10, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B01478', 'Көркем еңбек және графикалық жобалау ', 'Художественный труд и графическое проектирование ', 'Artistic Work and Graphic Design', 'Sanatsal Çalışma ve Grafik Çizim Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (11, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of  Mathematics', 'Matematik Bölümü', '6B01509', 'Математика  (Педагогикалық ғылымдар) ', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (12, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Физика кафедрасы', 'Кафедра физики', 'Department of  Physics', 'Fizik Bölümü', '6B01510', 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (13, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '6B01511', 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (14, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '6B01573', 'Информатика, АКТ және робототехника (Педагогикалық ғылымдар)', 'Информатика, ИКТ и робототехника  (Педагогические науки) ', 'Computer Science, ICT and Robotic Teacher Education ', 'Bilgi İşlem, Bilişim Teknolojileri ve Robotik Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (15, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '6B01512', 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (16, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '6B01562 ', 'Химия-Биология (Педагогикалық ғылымдар)', 'Химии-биология (Педагогические науки) ', 'Chemistry-Biology Teacher Education ', 'Kimya-Biyoloji Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (17, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Биология кафедрасы', 'Кафедра биологии', 'Department of  Biology', 'Biyoloji Bölümü', '6B01513', 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (18, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '6B01514', 'География (Педагогикалық ғылымдар)', 'География (Педагогические науки) ', 'Geography Teacher Education ', 'Coğrafya Öğretmenliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (19, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '6B01615', 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (20, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '6B01716', 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (21, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '6B01717', 'Орыс тілі мен әдебиеті', 'Русский язык и литература', 'Russian Language and Literature ', 'Rus Dili ve Edebiyatı Öğretmenliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (22, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '6B01764', 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті  ', 'Русский язык и литература с нерусским языком обучения ', 'Russian Language and Literature at Schools with non-Russian Training', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (23, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of  Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '6B01718  ', 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Иностранный язык: два иностранных языка (английский-китайский)', 'Foreign language: two foreign languages (English - Chinese) ', 'İngilizce Çince Öğretmenliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (24, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of  Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '6B01719 ', 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'İngilizce Türkçe Öğretmenliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (25, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B02121', 'Вокалдық өнер', 'Вокальное искусство', 'Vocal Art', 'Şan Sanatı ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (26, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B02165', 'Эстрада өнері', 'Искусство эстрады', 'Pop Art ', 'Pop Müzik Sanatı ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (27, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B02122', 'Дәстүрлі музыка өнері (Халық әні)', 'Традиционное музыкальное искусство(Народное пение)', 'Traditional Music Art', 'Geleneksel Müzik Sanatı', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (28, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B02123', 'Актерлік өнер', 'Актерское искусство', 'Acting Art', 'Oyunculuk Sanatı', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (29, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '6B02124', 'Хореография', 'Хореография', 'Choreography', 'Koreografi', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (30, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B02125', 'Сән өнері', 'Декоративное искусство', 'Decorative Art', 'Dekoratif Sanatı', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (31, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B02126', 'Дизайн', 'Дизайн', 'Design', 'Tasarım', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (32, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '6B02184', 'Сәндік-қолданбалы өнері', 'Декоративно-прикладное искусство', 'Decorative and Applied Art', 'Dekoratif Sanatlar', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (33, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'Қоғамдық ғылымдар кафедрасы', 'Кафедра общественных наук', 'Department of Community Sciences', 'Toplum Bilimleri Bölümü', '6В02286', 'Философия-Дінтану', 'Философия -Религиоведение ', 'Philosophy-Religious Studies', 'Din Felsefesi', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (34, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '6B02228', 'Дінтану', 'Религиоведение', 'Religious Studies', 'Din Bilimleri', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (35, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '6B02229', 'Теология', 'Теология', 'Theology', 'İlahiyat', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (36, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '6B02266', 'Исламтану', 'Исламоведение', 'Islamic Studies', 'İslam Bilimleri', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (37, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '6B01683', 'Дінтану (Педагогикалық ғылымдар)', 'Религиоведение (Педагогические науки)', 'Religious Studies Teacher Education ', 'Din Bilgisi Öğretmenliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (38, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '6B02231', 'Тарих', 'История', 'History ', 'Tarih ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (39, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '6B02267', 'Түркітану ', 'Тюркология ', 'Turkology ', 'Türkoloji  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (40, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '6B02332  ', 'Шетел филологиясы (ағылшын тілі)', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (41, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '6B02333', 'Шетел филологиясы  (түрік тілі)', 'Иностранная филология (турецский язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (42, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '6B02335', 'Аударма ісі: ағылшын тілі', 'Переводческое дело:английский язык', 'Translation Studies: the English Language ', 'İngilizce Mütercim ve Tercümanlık ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (43, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '6B02336', 'Филология: қазақ филологиясы', 'Филология: казахская филология', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (44, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public administration and international relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '6B03138', 'Халықаралық қатынастар бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'International Relations', 'Uluslararası İlişkiler ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (45, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theology', 'İlahiyat Fakültesi ', 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '6В03187', 'Психология-Дінтану', 'Психология-Религиоведение', 'Psychology-Religious Studies ', 'Din Psikolojisi ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (46, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Журналистика кафедрасы', 'Кафедра журналистики', 'Department of Journalism', 'Gazetecilik Bölümü', '6B03239', 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (47, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Журналистика кафедрасы', 'Кафедра журналистики', 'Department of Journalism', 'Gazetecilik Bölümü', '6B03279', 'Сандық медия және телерадиожурналистика', 'Цифровая медиа и телерадиожурналистика', 'Digital Media and TV, Radio Journalism', 'Dijital Medya, Radyo ve Televizyon Gazeteciliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (48, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм бөлімі', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', '6B04140', 'Менеджмент бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'Management ', 'İşletme ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (49, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '6B04141', 'Мемлекеттік және жергілікті басқару бакалавриат бағдарламасы', 'Государственное и местное управление программа бакалавриата', 'Public and Local administration ', 'Kamu ve Yerel Yönetim ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (50, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '6B04143', 'Есеп және аудит бакалавриат бағдарламасы', 'Учет и аудит программа бакалавриата', 'Accounting and Audit ', 'Muhasebe ve Denetim ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (51, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '6B04144', 'Қаржы бакалавриат бағдарламасы', 'Финансы программа бакалавриата', 'Finance ', 'Finans ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (52, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '6B04142', 'Экономика бакалавриат бағдарламасы', 'Экономика программа бакалавриата', 'Economics ', 'Ekonomi ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (53, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of  Law', 'Hukuk Bölümü', '6B04245', 'Құқықтану бакалавриат бағдарламасы', 'Юриспруденция программа бакалавриата', 'Law ', 'Hukuk ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (54, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of  Law', 'Hukuk Bölümü', '6B04282 ', 'Құқыққорғау қызметі бакалавриат бағдарламасы', 'Правоохранительная деятельность (программа бакалавриата)', 'Law Enforcement', 'Hukuk Hizmetleri ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (55, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of  Law', 'Hukuk Bölümü', '6B04281', 'Халықаралық құқық бакалавриат бағдарламасы', 'Международное право программа бакалавриата', 'International Law', 'Uluslararası Hukuk', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (56, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Биология кафедрасы', 'Кафедра биологии', 'Department of  Biology', 'Biyoloji Bölümü', '6B05146', 'Биология (Жаратылыстану ғылымдары)', 'Биология (Естественные науки)', 'Biology ', 'Biyoloji', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (57, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Биология кафедрасы', 'Кафедра биологии', 'Department of  Biology', 'Biyoloji Bölümü', '6B05169', 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (58, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '6B05247', 'Экология ', 'Экология ', 'Ecology', 'Ekoloji ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (59, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Физика кафедрасы', 'Кафедра физики', 'Department of  Physics', 'Fizik Bölümü', '6B05348', 'Физика  (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (60, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of  Mathematics', 'Matematik Bölümü', '6B05449', 'Математика  (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics', 'Matematik ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (61, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '6B06151', 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (62, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '6B06182', 'Компьютерлік инженерия  ', 'Компьютерная инженерия ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (63, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '6B06181', 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Обработка информации и визуализация данных ', 'Information Processing and Data Visualization', 'Bilgi Yönetimi ve Veri Görselleştirme', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (64, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '6B07153', 'Электр энергетика', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (65, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '6B07154', 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Kontrol', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (66, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '6B07189', 'Машина жасау', 'Машиностроение', 'Mechanical Engineering', 'Makine Mühendisliği ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (67, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '6B10155', 'Жалпы медицина', 'Общая медицина', 'General Medicine', 'Genel Tıp', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (68, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '6B10173', 'Мейіргер ісі', 'Сестринское дело', 'Nursing', 'Hemşirelik', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (69, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '6B11157', 'Туризм бакалавриат бағдарламасы', 'Туризм программа бакалавриата', 'Tourism', 'Turizm', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (70, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '6B11180', 'Мейрамхана ісі  және қонақ үй бизнесі бакалавриат бағдарламасы', 'Ресторанное дело и гостиничный бизнес программа бакалавриата', 'Restaurant and Hotel Business', 'Turizm ve Otel İşletmeciliği  ', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (71, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '6B10188', 'Медицина (ВМ086)', 'Медицина (ВМ086)', 'Medicine', 'Tıp', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (72, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği Fakültesi', 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği ', '6B10189', 'Стоматология  (ВМ087)', 'Стоматология (ВМ087)', 'Dentistry', 'Diş Hekimliği', 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans');
INSERT INTO `birimler` VALUES (73, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', '7M01101', 'Педагогика және психология', 'Педагогика и психология', 'Pedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (74, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '7M01202', 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Педагогика дошкольного воспитания и обучения', 'Pedagogy of the Pre-school Education and Upbringing', 'Okul Öncesi Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (75, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '7M01303', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (76, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical education', 'Beden Eğitimi Bölümü', '7M01404', 'Дене шынықтыру және спорт', 'Физическая культура и спорт', 'Physical Culture and Sport', 'Beden Eğitimi ve Spor  Öğretmenliği', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (77, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Executive search', 'Sahne Sanatları Bölümü', '7M01434', 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği  ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (78, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine arts', 'Güzel Sanatlar Bölümü', '7M01405', 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher training in Art work and technical drawing', 'Resim Öğretmenliği  ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (79, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Физика кафедрасы', 'Кафедра физики', 'Department of  Physics', 'Fizik Bölümü', '7M01506', 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (80, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of  Mathematics', 'Matematik Bölümü', '7M01547', 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (81, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '7M01535', 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğetmenliği', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (82, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Биология кафедрасы', 'Кафедра биологии', 'Department of  Biology', 'Biyoloji Bölümü', '7M01507', 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (83, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical foreign languages', 'Yabancı Diller Eğitimi Bölümü', '7M01708', 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'English Language and Literature', 'İngilizce Türkçe Öğretmenliği', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (84, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '7M01737', 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature', 'Kazak Dili ve Edebiyatı Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (85, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '7M01738', 'Орыс тілі мен әдебиеті', 'Русский язык и литература ', 'Russian Language and Literature', 'Rus Dili ve Edebiyatı Öğretmenliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (86, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '7M02210', 'Тарих', 'История', 'History', 'Tarih ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (87, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theology', 'İlahiyat Fakültesi ', 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '7M02211', 'Дінтану', 'Религиоведение', 'Religious Studies ', 'Din Bilimleri ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (88, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theology', 'İlahiyat Fakültesi ', 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '7M02262', 'Теология', 'Теология', 'Theology ', 'İlahiyat ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (89, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '7M02212', 'Түркітану', 'Тюркология', 'Turkology', 'Türkoloji ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (90, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '7M02313', 'Шетел филологиясы:  Ағылшын тілі', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (91, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '7M02314', 'Шетел филологиясы: Түрік тілі', 'Иностранная филология (турецкий язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (92, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '7M02315', 'Филология', 'Филология', 'Philology', 'Dil Bilimi ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (93, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '7M03117', 'Саясаттану магистратура бағдарламасы', 'Политология (программа магистратуры)', 'Political Science. Program', 'Siyaset Bilimi  ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (94, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '7M03140', 'Халықаралық қатынастар магистратура бағдарламасы', 'Международные отношения программа магистратуры', 'International Relations. Program', 'Uluslararası İlişkiler ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (95, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '7M04118', 'Экономика магистратура бағдарламасы', 'Экономика программа магистратуры', 'Economics. Program', 'Ekonomi ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (96, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '7M04119', 'Менеджмент магистратура бағдарламасы', 'Менеджмент программа магистратуры', 'Management. Program', 'İşletme ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (97, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '7M04160', 'Денсаулық сақтау саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере здравоохранения программа магистратуры', 'Health Management. Program', 'Sağlık İşletmeciliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (98, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '7M04150', 'Білім беру саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере образования программа магистратуры', 'Education Management. Program', 'Eğitim Yönetimi ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (99, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп бөлімі', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '7M04120', 'Есеп және аудит магистратура бағдарламасы', 'Учет и аудит (программа магистратуры)', 'Accounting and Audit. Program', 'Muhasebe ve Denetim ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (100, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '7M04121', 'Мемлекеттік және жергілікті басқару магистратура бағдарламасы', 'Государственное и местное управление программа магистратуры', 'State and local Administration. Program', 'Kamu Yönetimi ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (101, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '7M04143', 'Адам ресурстарын басқару магистратура бағдарламасы', 'Управление человеческими ресурсами программа магистратуры', 'Human resource management. Program', 'Insan kaynakları yönetimi ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (102, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '7M04141', 'Қаржы магистратура бағдарламасы', 'Финансы  программа магистратуры', 'Finance. Program', 'Finans ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (103, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of  Law', 'Hukuk Bölümü', '7M04222', 'Құқық магистратура бағдарламасы', 'Право программа магистратуры', 'Law. Program', 'Hukuk ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (104, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '7M01557', 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (105, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '7M05223', 'Экология ', 'Экология ', 'Ecology ', 'Ekoloji ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (106, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of  Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '7M05324', 'Химия (Жаратылыстану ғылымдары)', 'Химия  (Естественные науки)', 'Chemistry ', 'Kimya ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (107, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '7M05325', 'Физика (Жаратылыстану ғылымдары)', 'Физика  (Естественные науки)', 'Physics ', 'Fizik', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (108, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '7M05426', 'Математика (Жаратылыстану ғылымдары)', 'Математика  (Естественные науки)', 'Mathematics ', 'Matematik ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (109, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '7M06127', 'Информатика (Жаратылыстану ғылымдары)', 'Информатика (Педагогические науки) ', 'Computer Science', 'Bilgisayar Mühendisliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (110, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '7M06128', 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (111, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '7M06146', 'Компьютерлік инженерия  ', 'Компьютерная инженерия ', 'Computer Enginering', 'Bilgisayar Mühendisliği  ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (112, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '7M06129', 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (113, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '7M07130', 'Электр энергетикасы', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (114, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '7M07158', 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Yönetim ', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (115, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '7M10131', 'Медицина', 'Медицина ', 'Medicine', 'Tıp', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (116, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '7M10144', 'Қоғамдық денсаулық сақтау ', 'Общественное здравоохранение ', 'Public Health', 'Halk Sağlığı', 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans');
INSERT INTO `birimler` VALUES (117, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', '8D01101', 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (118, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '8D01502', 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics ', 'Matematik Öğretmenliği ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (119, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '8D01503', 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics ', 'Fizik Öğretmenliği ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (120, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '8D01516 ', 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science ', 'Bilgisayar Bilimleri ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (121, 'Әлеуметтік - гуманитарлық  ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social Sciences and Humanities', 'İnsan ve Toplum Bilimleri Fakültesi', 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '8D01604', 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (122, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '8D01705', 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature  ', 'Kazak Dili ve Edebiyatı ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (123, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '8D01713', 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature  ', 'Kazak Dili ve Edebiyatı ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (124, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '8D04106', 'Экономика докторантура бағдарламасы', 'Экономика программа докторантуры', 'Economics Program', 'Ekonomi ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (125, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of  Management and Tourism', 'İşletme ve Turizm Bölümü', '8D04107', 'Менеджмент докторантура бағдарламасы', 'Менеджмент программа докторантуры', 'Management Program', 'İşletme ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (126, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '8D04114', 'Мемлекеттік және жергілікті басқару докторантура бағдарламасы', 'Государственное и местное управление программа докторантуры', 'State and Local Administration Program', 'Kamu ve Yerel Yönetim ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (127, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '8D04117', 'Қаржы докторантуры бағдарламасы', 'Финансы программа докторантуры', 'Finance Program', 'Finans ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (128, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of  Law', 'Hukuk Bölümü', '8D04208', 'Құқық докторантура бағдарламасы', 'Право программа докторантуры', 'Law Program', 'Hukuk ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (129, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '8D06115', 'Ақпараттық жүйелер ', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (130, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'Компьютерлік инженерия кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '8D06109', 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (131, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '8D10110', 'Медицина', 'Медицина ', 'Medicine', 'Tıp', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (132, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '8D10111', 'Қоғамдық денсаулық сақтау', 'Общественное здравоохранение', 'Public Health', 'Halk sağlığı', 'Докторантура', 'Докторантура', 'PhD', 'Doktora');
INSERT INTO `birimler` VALUES (133, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Акушерлік  гинекология кафедрасы', 'Кафедра акушерской гинекологии', 'Department of Obstetric gynecology', 'Obstetrik Jinekoloji Bölümü', '7R01102', 'Ересектердің, балалардың акушерия және гинекологиясы ', 'Акушерство и гинекология взрослая, детская', 'Obstetrics and Gynecology ', 'Kadın Hastalıkları ve Jinekoloji ', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (134, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Арнайы  хирургиялық  пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of  Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '7R01120', 'Ересектердің, балалардың травматология-ортопедиясы ', 'Травматология-ортопедия взрослая, детская ', 'Traumatology-orthopedics', 'Travmatoloji ve Ortopedi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (135, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Арнайы  хирургиялық  пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of  Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '7R01115', 'Ересектердің, балалардың кардиохирургиясы ', 'Кардиохирургия взрослая, детская ', 'Cardiac surgery', 'Kalp Damar Cerrahisi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (136, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Арнайы  хирургиялық  пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of  Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '7R01121', 'Ересектердің, балалардың урология және андрологиясы ', 'Урология и андрология взрослая, детская ', 'Urology and andrology', 'Üroloji ve Androloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (137, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Арнайы  хирургиялық  пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of  Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '7R01119', 'Ересектердің, балалардың оториноларингологиясы ', 'Оториноларингология взрослая, детская', 'Otorhinolaryngology ', 'Kulak Burun Boğaz', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (138, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Арнайы  хирургиялық  пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of  Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '7R01124', 'Ересектердің онкологиясы ', 'Онкология взрослая', 'Adult oncology ', 'Onkoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (139, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жалпы  дәрігерлік  практика № 1 кафедрасы', 'Кафедра общей врачебной практики  № 1', 'Department of  General medical practice  № 1', 'Genel Tıbbi Uygulamalar  № 1 Bölümü', '7R01114', 'Радиология ', 'Радиология', 'Radiology', 'Radyoloji Teşhisi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (140, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жалпы  дәрігерлік  практика № 2 кафедрасы', 'Кафдера общей врачебной практики  № 2', 'Department of  General medical practice  № 2', 'Genel Tıbbi Uygulamalar  № 2 Bölümü', '7R01106', 'Отбасылық медицина ', 'Семейная медицина', 'Primary Care Provider ', 'Aile Hekimliği ', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (141, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жалпы  дәрігерлік  практика № 2 кафедрасы', 'Кафедра общей врачебной практики  № 2', 'Department of  General medical practice  № 2', 'Genel Tıbbi Uygulamalar  № 2 Bölümü', '7R01129', 'Патологиялық анатомия ', 'Патологическая анатомия ', 'Pathological anatomy', 'Patolojik Anatomi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (142, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жалпы  дәрігерлік  практика № 2 кафедрасы', 'Кафедра общей врачебной практики  № 2', 'Department of  General medical practice  № 2', 'Genel Tıbbi Uygulamalar  № 2 Bölümü', '7R01116', 'Клиникалық фармакология ', 'Клиническая фармакология ', 'Clinical Pharmacology', 'Klinik Farmakoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (143, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жұқпалы  аурулар  және  фтизиатрия кафедрасы', 'Кафедра инфекционных заболеваний и фтизиатрии', 'Department of  Infectious diseases and phthisiology', 'Bulaşıcı Hastalıklar ve Fitizyoloji Bölümü', '7R01122', 'Ересектердің, балалардың дерматовенерологиясы ', 'Дерматовенерология взрослая, детская', 'Dermatovenerology ', 'Dermatoveneroloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (144, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Жұқпалы  аурулар  және  фтизиатрия кафедрасы', 'Кафедра инфекционных заболеваний и фтизиатрии', 'Department of  Infectious diseases and phthisiology', 'Bulaşıcı Hastalıklar ve Fitizyoloji Bölümü', '7R01123', 'Ересектердің, балалардың инфекциялық аурулары ', 'Инфекционные болезни взрослые, детские ', 'Infectious Diseases ', 'Bulaşıcı Hastalıkları', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (145, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01105', 'Терапия', 'Терапия ', 'Therapy', 'Terapi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (146, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01107', 'Ересектердің, балалардың кардиологиясы', 'Кардиология взрослая, детская ', 'Cardiology ', 'Kardiyoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (147, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01108', 'Ересектердің, балалардың эндокринологиясы ', 'Эндокринология взрослая, детская ', 'Endocrinology ', 'Endokrinoloji ', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (148, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01126', 'Ересектердің, балалардың аллергология және иммунологиясы', 'Аллергология и иммунология взрослая, детская ', 'Allergology and immunology ', 'Alerji ve İmmünoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (149, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01127', 'Ересектердің, балалардың пульмонологиясы ', 'Пульмонология взрослая, детская ', 'Pulmonology ', 'Göğüs Hastalıkları', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (150, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Ішкі  аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of  Internal diseases', 'Dahiliye Bölümü', '7R01110', 'Ересектердің, балалардың гастроэнтерологиясы ', 'Гастроэнтерология взрослая, детская ', 'Gastroenterology ', 'Gastroenteroloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (151, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of  Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', '7R01104', 'Ересектердің, балалардың неврологиясы', 'Неврология взрослая, детская ', 'Neurology ', 'Nöroloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (152, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of  Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', '7R01117', 'Ересектердің, балалардың физикалық медицина және реабилитациясы ', 'Физическая медицина и реабилитация взрослая, детская ', 'Physical medicine and rehabilitation', 'Fiziksel Tıp ve Rehabilitasyon', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (153, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of  Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', '7R01113', 'Ересектер мен балалар психиатриясы ', 'Психиатрия взрослая, детская ', 'Psychiatry  ', 'Psikiyatri', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (154, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Педиатрия кафедрасы', 'Кафедра педиатрии', 'Department of  Pediatrics', 'Pediatri Bölümü', '7R01101', 'Педиатрия ', 'Педиатрия ', 'Pediatrics', 'Pediatri', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (155, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Педиатрия кафедрасы', 'Кафедра педиатрии', 'Department of  Pediatrics', 'Pediatri Bölümü', '7R01125', 'Неонатология ', 'Неонатология ', 'Neonatology', 'Neonatoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (156, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Профилактикалық медицина және стоматологиялық пәндер кафедрасы', 'Кафедра профилактической медицины и стоматологических дисциплин', 'Department of  Preventive medicine and dental disciplines', 'Önleyici Tıp ve Diş Hekimliği Disiplinleri Bölümü', '7R01130', 'Терапиялық стоматология ', 'Терапевтическая стоматология ', 'Therapeutic dentistry', 'Terapötik Diş Hekimliği', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (157, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01103', 'Жалпы хирургия ', 'Общая хирургия ', 'General surgery', 'Genel Cerrahi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (158, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01111', 'Ересектердің, балалардың офтальмологиясы ', 'Офтальмология взрослая, детская', 'Ophthalmology', 'Oftalmoloji', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (159, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01112', 'Ересектердің, балалардың анестезиология және реаниматологиясы ', 'Анестезиология и реаниматология взрослая, детская ', 'Anesthesiology and resuscitation ', 'Anesteziyoloji ve Resüsitasyon', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (160, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01109', 'Ересектердің, балалардың нейрохирургиясы ', 'Нейрохирургия взрослая, детская ', 'Neurosurgery ', 'Beyin Cerrahisi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (161, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01118', 'Балалар хирургиясы ', 'Детская хирургия ', 'Pediatric surgery', 'Çocuk Cerrahisi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (162, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01128', 'Ересектердің, балалардың ангиохирургиясы ', 'Ангиохирургия взрослая, детская ', 'Angiosurgery', 'Anjio Cerrahi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (163, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'Хирургия  және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of  Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '7R01131', 'Ересектердің, балалардың бет-жақ хирургиясы ', 'Челюстно-лицевая хирургия взрослая, детская', 'Maxillofacial surgery', 'Çene-Yüz Cerrahisi', 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık');
INSERT INTO `birimler` VALUES (164, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği Fakültesi', 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği ', '6B10156', 'Стоматология', 'Стоматология', 'Dentistry', 'Diş Hekimliği', 'Бакалавриат', 'Бакалавриат', 'Lisans', 'Lisans');

-- ----------------------------
-- Table structure for bolumler
-- ----------------------------
DROP TABLE IF EXISTS `bolumler`;
CREATE TABLE `bolumler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int NULL DEFAULT NULL,
  `bolum_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `duzey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fakulte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bolumler
-- ----------------------------
INSERT INTO `bolumler` VALUES (80, 62, 'Педагогика және психология', 'Бакалавриат', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (81, 63, 'Мектепке дейінгі және бастауышта білім беру', 'Бакалавриат', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (82, 64, 'Тарих', 'Бакалавриат', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (83, 65, 'Журналистика', 'Бакалавриат', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (84, 66, 'Педагогика және психология', 'Магистратура', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (85, 67, 'Мектепке дейінгі және бастауышта білім беру', 'Магистратура', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (86, 68, 'Тарих', 'Магистратура', 'Sosyal ve Beşeri bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (87, 69, 'Дене мәдениеті', 'Бакалавриат', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (88, 70, 'Орындаушылық өнер', 'Бакалавриат', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (89, 71, 'Бейнелеу өнері', 'Бакалавриат', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (90, 72, 'Дене мәдениеті', 'Магистратура', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (91, 73, 'Орындаушылық өнер', 'Магистратура', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (92, 74, 'Бейнелеу өнері', 'Магистратура', 'Spor ve Sanat Fakültesi');
INSERT INTO `bolumler` VALUES (93, 75, 'Математика', 'Бакалавриат', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (94, 76, 'Физика', 'Бакалавриат', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (95, 77, 'Экология және химия', 'Бакалавриат', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (96, 78, 'Биология', 'Бакалавриат', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (97, 79, 'Физика', 'Магистратура', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (98, 80, 'Математика', 'Магистратура', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (99, 81, 'Экология және химия', 'Магистратура', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (100, 82, 'Биология', 'Магистратура', 'Fen Fakültesi');
INSERT INTO `bolumler` VALUES (101, 83, 'Компьютерлік ғылымдар', 'Бакалавриат', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (102, 84, 'Компьютерлік инженерия', 'Бакалавриат', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (103, 85, 'Электр инженериясы', 'Бакалавриат', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (104, 86, 'Компьютерлік ғылымдар', 'Магистратура', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (105, 87, 'Компьютерлік инженерия', 'Магистратура', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (106, 88, 'Электр инженериясы', 'Магистратура', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (107, 89, 'Компьютерлік ғылымдар', 'Докторантура', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (108, 90, 'Компьютерлік инженерия', 'Докторантура', 'Mühendislik Fakültesi');
INSERT INTO `bolumler` VALUES (109, 92, 'Қазақ филологиясы ', 'Бакалавриат', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (110, 93, 'Орыс тілі және әдебиеті', 'Бакалавриат', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (111, 94, 'Педагогикалық шетел тілдері', 'Бакалавриат', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (112, 95, 'Түрік филологиясы', 'Бакалавриат', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (113, 96, 'Ағылшын филологиясы және аударма ісі', 'Бакалавриат', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (114, 98, 'Педагогикалық шетел тілдері', 'Магистратура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (115, 99, 'Қазақ филологиясы ', 'Магистратура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (116, 100, 'Орыс тілі және әдебиеті', 'Магистратура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (117, 101, 'Түрік филологиясы', 'Магистратура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (118, 102, 'Ағылшын филологиясы және аударма ісі', 'Магистратура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (119, 105, 'Қазақ филологиясы ', 'Докторантура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (120, 106, 'Педагогикалық шетел тілдері', 'Докторантура', 'Filoloji Fakültesi');
INSERT INTO `bolumler` VALUES (121, 110, 'Дінтану', 'Бакалавриат', 'Teoloji Fakültesi');
INSERT INTO `bolumler` VALUES (122, 111, 'Теология', 'Бакалавриат', 'Teoloji Fakültesi');
INSERT INTO `bolumler` VALUES (123, 112, 'Дінтану', 'Магистратура', 'Teoloji Fakültesi');
INSERT INTO `bolumler` VALUES (124, 113, 'Теология', 'Магистратура', 'Teoloji Fakültesi');
INSERT INTO `bolumler` VALUES (125, 114, 'Мемлекеттік басқару және халықаралық қатынастар', 'Бакалавриат', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (126, 115, 'Менеджмент және туризм ', 'Бакалавриат', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (127, 116, 'Экономика, қаржы және есеп', 'Бакалавриат', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (128, 117, 'Құқықтану', 'Бакалавриат', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (129, 118, 'Мемлекеттік басқару және халықаралық қатынастар', 'Магистратура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (130, 119, 'Экономика, қаржы және есеп', 'Магистратура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (131, 120, 'Менеджмент және туризм', 'Магистратура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (132, 121, 'Құқықтану', 'Магистратура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (133, 122, 'Экономика, қаржы және есеп', 'Докторантура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (134, 123, 'Менеджмент және туризм ', 'Докторантура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (135, 124, 'Мемлекеттік басқару және халықаралық қатынастар', 'Докторантура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (136, 125, 'Құқықтану', 'Докторантура', 'İktisadi ve İdari Bilimler Fakültesi');
INSERT INTO `bolumler` VALUES (137, 126, '', 'Бакалавриат', 'Tıp Fakültesi');
INSERT INTO `bolumler` VALUES (138, 127, '', 'Магистратура', 'Tıp Fakültesi');
INSERT INTO `bolumler` VALUES (139, 128, '', 'Докторантура', 'Tıp Fakültesi');
INSERT INTO `bolumler` VALUES (141, 130, 'Экология және химия', 'Магистратура', 'Fen Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (142, 131, 'Физика', 'Магистратура', 'Fen Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (143, 132, 'Математика', 'Магистратура', 'Fen Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (144, 133, 'Математика', 'Докторантура', 'Fen Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (145, 134, 'Физика', 'Докторантура', 'Fen Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (146, 135, 'Педагогика және психология', 'Докторантура', 'İnsan Ve Toplum Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (147, 136, 'Тарих', 'Докторантура', 'İnsan Ve Toplum Bilimleri Fakültesi');
INSERT INTO `bolumler` VALUES (148, 137, 'Акушерлік гинекология', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (149, 138, 'Арнайы хирургиялық пәндер', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (150, 139, 'Жалпы дәрігерлік практика № 1', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (151, 140, 'Жалпы дәрігерлік практика № 2', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (152, 141, 'Жұқпалы аурулар және фтизиатрия', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (153, 142, 'Ішкі аурулар', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (154, 143, 'Неврология, психиатрия, наркология', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (155, 144, 'Педиатрия', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (156, 145, 'Профилактикалық медицина және стоматологиялық пәндер', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (157, 146, 'Хирургия және анестезиология-реанимация', 'Резидентура ', 'Lisansüstü Tıp Eğitimi  Fakültesi');
INSERT INTO `bolumler` VALUES (158, 147, 'Стоматология', 'Бакалавриат', 'Diş Hekimliği Fakültesi');

-- ----------------------------
-- Table structure for deneme
-- ----------------------------
DROP TABLE IF EXISTS `deneme`;
CREATE TABLE `deneme`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `a1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ust_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deneme
-- ----------------------------
INSERT INTO `deneme` VALUES (1, 'Sosyal ve Beşeri bilimler Fakültesi', 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji', 'Бакалавриат', '6B01101', 'Педагогика и психология', 'Педагогика және психология', 'Рedagogy and psychology', 'Pedagoji ve Psikoloji', NULL, 62);
INSERT INTO `deneme` VALUES (2, 'Sosyal ve Beşeri bilimler Fakültesi', 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi', 'Бакалавриат', '6B01202', 'Дошкольное обучение и воспитание', 'Мектепке дейінгі оқыту және тәрбиелеу', 'Pre-school education and upbringing', 'Okul Öncesi Eğitim ve Öğretim', NULL, 63);
INSERT INTO `deneme` VALUES (3, 'Sosyal ve Beşeri bilimler Fakültesi', 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi', 'Бакалавриат', '6B01303', 'Педагогика и методика начального обучения', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Pedagogy and methods of primary education ', 'İlköğretim Pedagojisi ve Metodolojisi', NULL, 63);
INSERT INTO `deneme` VALUES (4, 'Spor ve Sanat Fakültesi', 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi', 'Бакалавриат', '6B01404', 'Начальная военная подготовка', 'Бастапқы әскери дайындық', 'Basic Military Training', 'İlk Askeri Hazırlık', NULL, 69);
INSERT INTO `deneme` VALUES (5, 'Spor ve Sanat Fakültesi', 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi', 'Бакалавриат', '6B01405', 'Физическая культура и спорт', 'Денешынықтыру және спорт', 'Physical education and sports', 'Beden Eğitimi ve Spor', NULL, 69);
INSERT INTO `deneme` VALUES (6, 'Spor ve Sanat Fakültesi', 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi', 'Бакалавриат', '6B01485', 'Физическая культура и начальная военная подготовка', 'Дене шынықтыру және бастапқы әскери дайындық', 'Physical education and initial military training', 'Beden Eğitimi ve Spor', NULL, 69);
INSERT INTO `deneme` VALUES (7, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B01406', 'Музыкальное образование', 'Музыкалық білім', 'Music Education', 'Müzik Eğitimi', NULL, 70);
INSERT INTO `deneme` VALUES (8, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B01408', 'Изобразительное искусство и черчение', 'Бейнелеу өнері және сызу', 'Fine Art and Drawing', 'Güzel Sanatlar ve Çizim', NULL, 71);
INSERT INTO `deneme` VALUES (9, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B01407', 'Профессиональное обучение', 'Кәсіптік оқыту', 'Professional Training', 'Meslekî Eğitim', NULL, 71);
INSERT INTO `deneme` VALUES (10, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B01478', 'Художественный труд и графическое проектирование ', 'Көркем еңбек және графикалық жобалау ', 'Artistic work and graphic design', 'Sanatsal Çalışma ve Grafik Çizim', NULL, 71);
INSERT INTO `deneme` VALUES (11, 'Fen Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Бакалавриат', '6B01509', 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', NULL, 75);
INSERT INTO `deneme` VALUES (12, 'Fen Fakültesi', 'Физика', 'Физики', 'Physicists', 'Fizikler', 'Бакалавриат', '6B01510', 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', NULL, 76);
INSERT INTO `deneme` VALUES (13, 'Mühendislik Fakültesi', 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi', 'Бакалавриат', '6B01511', 'Информатика', 'Информатика', 'Computer Science ', 'Bilgi İşlem', NULL, 83);
INSERT INTO `deneme` VALUES (14, 'Mühendislik Fakültesi', 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi', 'Бакалавриат', '6B01573', 'Информатика, ИКТ и робототехника ', 'Информатика, АКТ және робототехника ', 'Computer Science, ICT and robotic', 'Bilgi İşlem, Bilişim Teknolojileri ve Robototeknik ', NULL, 83);
INSERT INTO `deneme` VALUES (15, 'Fen Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Бакалавриат', '6B01512', 'Химия', 'Химия', 'Chemistry', 'Kimya Öğetmenliği', NULL, 77);
INSERT INTO `deneme` VALUES (16, 'Fen Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Бакалавриат', '6B01562 ', 'Химия-Биология ', 'Химия-Биология ', 'Chemistry-Biology ', 'Kimya-Biyoloji Öğretmenliği', NULL, 77);
INSERT INTO `deneme` VALUES (17, 'Fen Fakültesi', 'Биология', 'Биологии', 'Biology', 'Biyolojiler', 'Бакалавриат', '6B01513', 'Биология', 'Биология', 'Biology', 'Biyoloji Öğretmenliği', NULL, 78);
INSERT INTO `deneme` VALUES (18, 'Fen Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Бакалавриат', '6B01514', 'География', 'География', 'Geography', 'Coğrafya Öğretmenliği', NULL, 77);
INSERT INTO `deneme` VALUES (19, 'Sosyal ve Beşeri bilimler Fakültesi', 'Тарих', 'Истории', 'Historii', 'Tarih', 'Бакалавриат', '6B01615', 'История', 'Тарих', 'History', 'Tarih Öğretmenliği', NULL, 64);
INSERT INTO `deneme` VALUES (20, 'Filoloji Fakültesi', 'Қазақ филологиясы ', 'Казахской филологии ', 'Kazakh Philology', 'Kazak Filolojisi', 'Бакалавриат', '6B01716', 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh language and literature', 'Kazak Dili ve Edebiyatı', NULL, 92);
INSERT INTO `deneme` VALUES (21, 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті', 'Русского языка и литература', 'Russian language and literature', 'Rus dili ve edebiyatı', 'Бакалавриат', '6B01717', 'Русский язык и литература', 'Орыс тілі мен әдебиеті', 'Russian language and literature ', 'Rus Dili ve Edebiyatı', NULL, 93);
INSERT INTO `deneme` VALUES (22, 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті', 'Русского языка и литература', 'Russian language and literature', 'Rus dili ve edebiyatı', 'Бакалавриат', '6B01764', 'Русский язык и литература с нерусским языком обучения ', 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті  ', 'Russian Language and Literature in International  Schools ', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı', NULL, 93);
INSERT INTO `deneme` VALUES (23, 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller', 'Бакалавриат', '6B01718  ', 'Иностранный язык: два иностранных языка (английский-китайский)', 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Foreign language: two foreign languages (English - Chinese )', 'İngilizce Çince Öğretmenliği', NULL, 94);
INSERT INTO `deneme` VALUES (24, 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller', 'Бакалавриат', '6B01719 ', 'Иностранный язык: два иностранных языка (английский-турецский)', 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Foreign Language: Two Foreign Languages(English -Turkish )', 'İngilizce Türkçe Öğretmenliği', NULL, 94);
INSERT INTO `deneme` VALUES (25, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B02121', 'Вокальное искусство', 'Вокалдық өнер', 'Vocal art', 'Vokal Sanatı', NULL, 70);
INSERT INTO `deneme` VALUES (26, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B02165', 'Искусство эстрады', 'Эстрада өнері', 'Pop art ', 'Pop Müzik Sanatı ', NULL, 70);
INSERT INTO `deneme` VALUES (27, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B02122', 'Традиционное музыкальное искусство(Народное пение)', 'Дәстүрлі музыка өнері (Халық әні)', 'Traditional Music Art (Folk singing)', 'Geleneksel müzik sanatı', NULL, 70);
INSERT INTO `deneme` VALUES (28, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B02123', 'Актерское искусство', 'Актерлік өнер', 'Acting art', 'Oyunculuk Sanatı', NULL, 70);
INSERT INTO `deneme` VALUES (29, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Бакалавриат', '6B02124', 'Хореография', 'Хореография', 'Choreography', 'Koreografi', NULL, 70);
INSERT INTO `deneme` VALUES (30, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B02125', 'Декоративное искусство', 'Сән өнері', 'Decorative Art', 'Dekoratif Sanatı', NULL, 71);
INSERT INTO `deneme` VALUES (31, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B02126', 'Дизайн', 'Дизайн', 'Design', 'Tasarım', NULL, 71);
INSERT INTO `deneme` VALUES (32, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Бакалавриат', '6B02184', 'Декоративно-прикладное искусство', 'Сәндік-қолданбалы өнері', 'Decorative and applied art', 'Dekoratif Sanatlar', NULL, 71);
INSERT INTO `deneme` VALUES (33, 'Teoloji Fakültesi', 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi', 'Бакалавриат', '6В02286', 'Философия -Религиоведение ', 'Философия-Дінтану', 'Philosophy-Religious Studies', 'Din Felsefesi', NULL, 110);
INSERT INTO `deneme` VALUES (34, 'Teoloji Fakültesi', 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi', 'Бакалавриат', '6B02228', 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', NULL, 110);
INSERT INTO `deneme` VALUES (35, 'Teoloji Fakültesi', 'Теология', 'Теологии', 'Theology', 'Teoloji', 'Бакалавриат', '6B02229', 'Теология', 'Теология', 'Theology', 'İlahiyat', NULL, 111);
INSERT INTO `deneme` VALUES (36, 'Teoloji Fakültesi', 'Теология', 'Теологии', 'Theology', 'Teoloji', 'Бакалавриат', '6B02266', 'Исламоведение', 'Исламтану', 'Islamic Studies', 'İslam Bilimleri', NULL, 111);
INSERT INTO `deneme` VALUES (37, 'Teoloji Fakültesi', 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi', 'Бакалавриат', '6B01683', 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', NULL, 110);
INSERT INTO `deneme` VALUES (38, 'Sosyal ve Beşeri bilimler Fakültesi', 'Тарих', 'Истории', 'Historii', 'Tarih', 'Бакалавриат', '6B02231', 'История', 'Тарих', 'History', 'Tarih', NULL, 64);
INSERT INTO `deneme` VALUES (39, 'Filoloji Fakültesi', 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi', 'Бакалавриат', '6B02267', 'Тюркология ', 'Түркітану ', 'Turkology', 'Türkoloji', NULL, 95);
INSERT INTO `deneme` VALUES (40, 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі', 'Английской филологии и переводческого дела', 'English Philology and Translation', 'İngiliz Filolojisi ve çeviri işleri', 'Бакалавриат', '6B02332  ', 'Иностранная филология (английский язык)', 'Шетел филологиясы (ағылшын тілі)', 'Foreign Philology:  (english language)', 'İngiliz Dili ve Edebiyatı', NULL, 96);
INSERT INTO `deneme` VALUES (41, 'Filoloji Fakültesi', 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi', 'Бакалавриат', '6B02333', 'Иностранная филология (турецский язык)', 'Шетел филологиясы  (түрік тілі)', 'Foreign Philology:(тurkish language)', '\"Türk Dili Ve Edebiyatı', NULL, 95);
INSERT INTO `deneme` VALUES (43, 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі', 'Английской филологии и переводческого дела', 'English Philology and Translation', 'İngiliz Filolojisi ve çeviri işleri', 'Бакалавриат', '6B02335', '\"Переводческое дело:английский язык', NULL, NULL, NULL, NULL, 96);
INSERT INTO `deneme` VALUES (46, 'Filoloji Fakültesi', 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi', 'Бакалавриат', '6B02336', 'Филология: казахская филология', 'Филология: қазақ филологиясы', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı', NULL, 92);
INSERT INTO `deneme` VALUES (47, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Бакалавриат', '6B03138', 'Международные отношения', 'Халықаралық қатынастар', 'International Relations', 'Uluslararası İlişkiler', NULL, 114);
INSERT INTO `deneme` VALUES (48, 'Teoloji Fakültesi', 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi', 'Бакалавриат', '6В03187', 'Психология-Религиоведение', 'Психология-Дінтану', 'Psychology-Religious Studies', 'Din Psikolojisi', NULL, 110);
INSERT INTO `deneme` VALUES (49, 'Sosyal ve Beşeri bilimler Fakültesi', 'Журналистика', 'Журналистики', 'Journalism', 'Gazetecilikler', 'Бакалавриат', '6B03239', 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', NULL, 65);
INSERT INTO `deneme` VALUES (50, 'Sosyal ve Beşeri bilimler Fakültesi', 'Журналистика', 'Журналистики', 'Journalism', 'Gazetecilikler', 'Бакалавриат', '6B03279', 'Цифровая медиа и телерадиожурналистика', 'Сандық медия және телерадиожурналистика', 'Digital media and TV, radio journalism', 'Dijital medya ve televizyon ve radyo gazeteciliği', NULL, 65);
INSERT INTO `deneme` VALUES (51, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Бакалавриат', '6B04140', 'Менеджмент', 'Менеджмент ', 'Management', 'İşletme', NULL, 115);
INSERT INTO `deneme` VALUES (52, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Бакалавриат', '6B04141', 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару', 'Public and Local administration', 'Kamu ve Yerel Yönetimi', NULL, 114);
INSERT INTO `deneme` VALUES (53, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Бакалавриат', '6B04143', 'Учет и аудит', 'Есеп және аудит', 'Accounting and Audit', 'Muhasebe ve Denetim', NULL, 116);
INSERT INTO `deneme` VALUES (54, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Бакалавриат', '6B04144', 'Финансы', 'Қаржы', 'Finance', 'Finans', NULL, 116);
INSERT INTO `deneme` VALUES (55, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Бакалавриат', '6B04142', 'Экономика', 'Экономика', 'Economics', 'Ekonomi ', NULL, 116);
INSERT INTO `deneme` VALUES (56, 'İktisadi ve İdari Bilimler Fakültesi', 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk', 'Бакалавриат', '6B04245', 'Юриспруденция', 'Құқықтану', 'Jurisprudence', 'Hukuk', NULL, 117);
INSERT INTO `deneme` VALUES (57, 'İktisadi ve İdari Bilimler Fakültesi', 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk', 'Бакалавриат', '6B04282 ', 'Правоохранительная деятельность', 'Құқыққорғау қызметі', 'Law enforcement ', 'Hukuk Hizmetleri', NULL, 117);
INSERT INTO `deneme` VALUES (58, 'İktisadi ve İdari Bilimler Fakültesi', 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk', 'Бакалавриат', '6B04281', 'Международное право', 'Халықаралық құқық', '\"International Law', NULL, NULL, 117);
INSERT INTO `deneme` VALUES (60, 'Fen Fakültesi', 'Биология', 'Биологии', 'Biology', 'Biyolojiler', 'Бакалавриат', '6B05146', 'Биология', 'Биология', 'Biology', 'Biyoloji', NULL, 78);
INSERT INTO `deneme` VALUES (61, 'Fen Fakültesi', 'Биология', 'Биологии', 'Biology', 'Biyolojiler', 'Бакалавриат', '6B05169', 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji (yeni)', NULL, 78);
INSERT INTO `deneme` VALUES (62, 'Fen Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Бакалавриат', '6B05247', 'Экология ', 'Экология', 'Ecology', 'Ekoloji', NULL, 77);
INSERT INTO `deneme` VALUES (63, 'Fen Fakültesi', 'Физика', 'Физики', 'Physicists', 'Fizikler', 'Бакалавриат', '6B05348', 'Физика ', 'Физика', 'Physics', 'Fizik', NULL, 76);
INSERT INTO `deneme` VALUES (64, 'Fen Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Бакалавриат', '6B05449', 'Математика ', 'Математика', 'Mathematics', 'Matematik', NULL, 75);
INSERT INTO `deneme` VALUES (65, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Бакалавриат', '6B06151', 'Информационные системы', 'Ақпараттық жүйелер', 'Information Systems', 'Bilişim Sistemleri', NULL, 84);
INSERT INTO `deneme` VALUES (66, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Бакалавриат', '6B06152', 'Вычислительная техника и программное обеспечение', 'Есептеу техникасы және бағдарламалық қамтамасыз ету', 'Computing and Software', 'Hesaplama Teknikleri ve Programlama', NULL, 84);
INSERT INTO `deneme` VALUES (67, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Бакалавриат', '6B06182', 'Компьютерная инженерия ', 'Компьютерлік инженерия  ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', NULL, 84);
INSERT INTO `deneme` VALUES (68, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Бакалавриат', '6B06181', 'Обработка информации и визуализация данных ', 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Information Processing and Data Visualization ', 'Bilgi İşlem ve Verilerin Görselleştirilmesi', NULL, 84);
INSERT INTO `deneme` VALUES (69, 'Mühendislik Fakültesi', 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği', 'Бакалавриат', '6B07153', 'Электроэнергетика', 'Электр энергетика', 'Electrical power engineering', '\"Elektrik Enerjisi', NULL, 85);
INSERT INTO `deneme` VALUES (71, 'Mühendislik Fakültesi', 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği', 'Бакалавриат', '6B07154', 'Автоматизация и управление', 'Автоматтандыру және басқару', '\"Automation and Control', NULL, NULL, 85);
INSERT INTO `deneme` VALUES (74, 'Mühendislik Fakültesi', 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği', 'Бакалавриат', '6B07189', 'Машиностроение', 'Машина жасау', '6B07189 Mechanical engineering', 'Makine Mühendisliği', NULL, 85);
INSERT INTO `deneme` VALUES (75, 'Tıp Fakültesi', 'деканат', '', '', '', 'Бакалавриат', '6B10155', 'Общая медицина', 'Жалпы медицина', 'General Medicine', 'Genel Tıp', NULL, NULL);
INSERT INTO `deneme` VALUES (76, 'Tıp Fakültesi', 'деканат', '', '', '', 'Бакалавриат', '6B10173', 'Сестринское дело', 'Мейіргер ісі', 'Nursing', 'Hemşirelik', NULL, NULL);
INSERT INTO `deneme` VALUES (77, 'Diş Hekimliği Fakültesi', 'деканат', '', '', '', 'Бакалавриат', '6B10156', 'Стоматология', 'Стоматология', 'Stomatology', 'Diş Hekimliği', NULL, NULL);
INSERT INTO `deneme` VALUES (78, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Бакалавриат', '6B11157', 'Туризм', 'Туризм', 'Tourism', 'Turizm', NULL, 115);
INSERT INTO `deneme` VALUES (79, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Бакалавриат', '6B11180', '\" Ресторанное дело и гостиничный ', NULL, NULL, NULL, NULL, 115);
INSERT INTO `deneme` VALUES (81, 'Tıp Fakültesi', 'деканат', '', '', '', 'Бакалавриат', '6B10188', 'Медицина', 'Медицина', 'Medicine', 'Tıp', NULL, NULL);
INSERT INTO `deneme` VALUES (82, 'Diş Hekimliği Fakültesi', 'деканат', '', '', '', 'Бакалавриат', '6B10189', 'Стоматология', 'Стоматология', 'Dentistry', 'Diş Hekimliği', NULL, NULL);
INSERT INTO `deneme` VALUES (83, 'Sosyal ve Beşeri bilimler Fakültesi', 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji', 'Магистратура', '7M01101', 'Педагогика и психология', 'Педагогика және психология', 'Pedagogy and psychology', 'Pedagoji ve Psikoloji', NULL, 66);
INSERT INTO `deneme` VALUES (84, 'Sosyal ve Beşeri bilimler Fakültesi', 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi', 'Магистратура', '7M01202', 'Педагогика дошкольного воспитания и обучения', 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Pedagogy of the pre-school education and upbringing', 'Okul Öğrenci Öğretmenliği', NULL, 67);
INSERT INTO `deneme` VALUES (85, 'Sosyal ve Beşeri bilimler Fakültesi', 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi', 'Магистратура', '7M01303', 'Педагогика и методика начального обучения', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Pedagogy and methods of primary education', 'Sınıf Öğretmenliği', NULL, 67);
INSERT INTO `deneme` VALUES (86, 'Spor ve Sanat Fakültesi', 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi', 'Магистратура', '7M01404', 'Физическая культура и спорт', 'Дене шынықтыру және спорт', 'Physical Culture and Sport', 'Fiziksel Kültür ve Spor', NULL, 72);
INSERT INTO `deneme` VALUES (87, 'Spor ve Sanat Fakültesi', 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları', 'Магистратура', '7M01434', 'Музыкальное образование', 'Музыкалық білім', 'Music Education', 'Müzik Eğitimi', NULL, 73);
INSERT INTO `deneme` VALUES (88, 'Spor ve Sanat Fakültesi', 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar', 'Магистратура', '7M01405', 'Изобразительное искусство и черчение', 'Бейнелеу өнері және сызу', 'Fine Art and Drawing', 'Güzel Sanatlar ve Çizim', NULL, 74);
INSERT INTO `deneme` VALUES (89, 'Fen Fakültesi', 'Физика', 'Физики', 'Physicists', 'Fizikler', 'Магистратура', '7M01506', 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', NULL, 79);
INSERT INTO `deneme` VALUES (90, 'Fen Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Магистратура', '7M01547', 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', NULL, 80);
INSERT INTO `deneme` VALUES (91, 'Mühendislik Fakültesi', 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi', 'Магистратура', '7M01557', 'Информатика ', 'Информатика', 'Computer Science', 'Bilgi İşlem', NULL, 86);
INSERT INTO `deneme` VALUES (92, 'Fen Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Магистратура', '7M01535', 'Химия', 'Химия', 'Chemistry', 'Kimya Öğetmenliği', NULL, 81);
INSERT INTO `deneme` VALUES (93, 'Fen Fakültesi', 'Биология', 'Биологии', 'Biology', 'Biyolojiler', 'Магистратура', '7M01507', 'Биология', 'Биология', 'Biology', 'Biyoloji Öğretmenliği', NULL, 82);
INSERT INTO `deneme` VALUES (94, 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller', 'Магистратура', '7M01708', 'Иностранный язык: два иностранных языка', 'Шетел тілі: екі шетел тілі', 'Foreign Language: Two Foreign Languages', 'Yabancı Dil: İki Yabancı Dil ', NULL, 98);
INSERT INTO `deneme` VALUES (95, 'Filoloji Fakültesi', 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi', 'Магистратура', '7M01737', 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği', NULL, 99);
INSERT INTO `deneme` VALUES (96, 'Filoloji Fakültesi', 'Орыс тілі және әдебиеті', 'Русского языка и литература', 'Russian language and literature', 'Rus dili ve edebiyatı', 'Магистратура', '7M01738', 'Русский язык и литература ', 'Орыс тілі мен әдебиеті', 'Russian language and literature', 'Rus Dili ve Edebiyatı Öğretmenliği', NULL, 100);
INSERT INTO `deneme` VALUES (97, 'Sosyal ve Beşeri bilimler Fakültesi', 'Тарих', 'Истории', 'Historii', 'Tarih', 'Магистратура', '7M02210', 'История', 'Тарих', 'History', 'Tarih', NULL, 68);
INSERT INTO `deneme` VALUES (98, 'Teoloji Fakültesi', 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi', 'Магистратура', '7M02211', 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', NULL, 112);
INSERT INTO `deneme` VALUES (99, 'Teoloji Fakültesi', 'Теология', 'Теологии', 'Theology', 'Teoloji', 'Магистратура', '7M02262', 'Теология', 'Теология', 'Theology', 'İlahiyat', NULL, 113);
INSERT INTO `deneme` VALUES (100, 'Filoloji Fakültesi', 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi', 'Магистратура', '7M02212', 'Тюркология', 'Түркітану', 'Turkology', 'Türkoloji', NULL, 101);
INSERT INTO `deneme` VALUES (101, 'Filoloji Fakültesi', 'Ағылшын филологиясы және аударма ісі', 'Английской филологии и переводческого дела', 'English Philology and Translation', 'İngiliz Filolojisi ve çeviri işleri', 'Магистратура', '7M02313', 'Иностранная филология (английский язык)', 'Шетел филологиясы:  Ағылшын тілі', 'Foreign Philology(English)', 'İngiliz Dili ve Edebiyatı', NULL, 102);
INSERT INTO `deneme` VALUES (102, 'Filoloji Fakültesi', 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi', 'Магистратура', '7M02314', 'Иностранная филология (турецкий язык)', 'Шетел филологиясы: Түрік тілі', 'Foreign Philology (Turkish)', '\"Türk Dili ve Edebiyatı', NULL, 101);
INSERT INTO `deneme` VALUES (104, 'Filoloji Fakültesi', 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi', 'Магистратура', '7M02315', 'Филология', 'Филология', 'Philology', 'Dil Bilimi', NULL, 99);
INSERT INTO `deneme` VALUES (105, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Магистратура', '7M03117', 'Политология', 'Саясаттану', 'Political Science ', 'Siyaset Bilimi', NULL, 118);
INSERT INTO `deneme` VALUES (106, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Магистратура', '7M03140', 'Международные отношения', 'Халықаралық қатынастар', 'International Relations', 'Uluslararası İlişkiler', NULL, 118);
INSERT INTO `deneme` VALUES (107, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Магистратура', '7M04118', 'Экономика', 'Экономика', 'Economics', 'Ekonomi', NULL, 119);
INSERT INTO `deneme` VALUES (108, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Магистратура', '7M04119', 'Менеджмент', 'Менеджмент', 'Management', 'İşletme', NULL, 120);
INSERT INTO `deneme` VALUES (109, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Магистратура', '7M04160', 'Менеджмент в сфере здравоохранения 1', 'Денсаулық сақтау саласындағы менеджмент 1ж', '7M04160 Health Management 1', 'Sağlık İşletmeciliği', NULL, 120);
INSERT INTO `deneme` VALUES (110, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Магистратура', '7M04150', 'Менеджмент в сфере образования 1', 'Білім беру саласындағы менеджмент 1ж', '7M04150 Education Management 1', 'Eğitim Yönetimi', NULL, 120);
INSERT INTO `deneme` VALUES (111, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Магистратура', '7M04120', 'Учет и аудит', 'Есеп және аудит', 'Accounting and Audit', 'Muhasebe ve Denetim', NULL, 119);
INSERT INTO `deneme` VALUES (112, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Магистратура', '7M04121', 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару', 'State and local government ', 'Kamu Yönetimi', NULL, 118);
INSERT INTO `deneme` VALUES (113, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Магистратура', '7M04143', 'Управление человеческими ресурсами  ', 'Адам ресурстарын басқару', 'Human resource management', 'Insan kaynakları yönetimi', NULL, 118);
INSERT INTO `deneme` VALUES (114, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Магистратура', '7M04141', 'Финансы ', 'Қаржы ', 'Finance', 'Finans', NULL, 119);
INSERT INTO `deneme` VALUES (115, 'İktisadi ve İdari Bilimler Fakültesi', 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk', 'Магистратура', '7M04222', 'Право', 'Құқық', 'Law', 'Hukuk', NULL, 121);
INSERT INTO `deneme` VALUES (116, 'Fen Bilimleri Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Магистратура', '7M05223', 'Экология', 'Экология', 'Ecology', 'Ekoloji', NULL, 130);
INSERT INTO `deneme` VALUES (117, 'Fen Bilimleri Fakültesi', 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya', 'Магистратура', '7M05324', 'Химия', 'Химия', 'Chemistry', 'Kimya', NULL, 130);
INSERT INTO `deneme` VALUES (118, 'Fen Bilimleri Fakültesi', 'Физика', 'Физики', 'Physicists', 'Fizikler', 'Магистратура', '7M05325', 'Физика', 'Физика', 'Physics', 'Fizik', NULL, 131);
INSERT INTO `deneme` VALUES (119, 'Fen Bilimleri Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Магистратура', '7M05426', 'Математика', 'Математика', 'Mathematics', 'Matematik', NULL, 132);
INSERT INTO `deneme` VALUES (120, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Магистратура', '7M06127', 'Информатика', 'Информатика', 'Computer Science', 'Bilgi İşlem', NULL, 87);
INSERT INTO `deneme` VALUES (121, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Магистратура', '7M06128', 'Информационные системы', 'Ақпараттық жүйелер', 'Information Systems', 'Bilişim Sistemleri', NULL, 87);
INSERT INTO `deneme` VALUES (122, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Магистратура', '7M06146', 'Компьютерная инженерия ', 'Компьютерлік инженерия  ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', NULL, 87);
INSERT INTO `deneme` VALUES (123, 'Fen Bilimleri Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Магистратура', '7M06129', 'Математическое и компьютерное моделирование', 'Математикалық және компьютерлік модельдеу', 'Mathematical and Computer Modeling', 'Matematiksel ve Bilgisayarda Modelleme', NULL, 132);
INSERT INTO `deneme` VALUES (124, 'Mühendislik Fakültesi', 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği', 'Магистратура', '7M07130', 'Электроэнергетика', 'Электр энергетикасы', 'Electrical power engineering', 'Electricity', NULL, 88);
INSERT INTO `deneme` VALUES (125, 'Mühendislik Fakültesi', 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği', 'Магистратура', '7M07158', 'Автоматизация и управление', 'Автоматтандыру және басқару', 'Automation and Management', 'Automation and Management', NULL, 88);
INSERT INTO `deneme` VALUES (126, 'Tıp Fakültesi', 'деканат', '', '', '', 'Магистратура', '7M10131', 'Медицина ', 'Медицина', 'Medicine', 'Tıp', NULL, NULL);
INSERT INTO `deneme` VALUES (127, 'Tıp Fakültesi', 'деканат', '', '', '', 'Магистратура', '7M10144', 'Общественное здравоохранение ', 'Қоғамдық денсаулық сақтау ', 'Public Health', 'Halk sağlığı', NULL, NULL);
INSERT INTO `deneme` VALUES (128, 'İnsan Ve Toplum Bilimleri Fakültesi', 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji', 'Докторантура', '8D01101', 'Педагогика и психология', 'Педагогика және психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji', NULL, 135);
INSERT INTO `deneme` VALUES (129, 'Fen Bilimleri Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Докторантура', '8D01502', 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', NULL, 133);
INSERT INTO `deneme` VALUES (130, 'Fen Bilimleri Fakültesi', 'Физика', 'Физики', 'Physicists', 'Fizikler', 'Докторантура', '8D01503', 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', NULL, 134);
INSERT INTO `deneme` VALUES (131, 'Mühendislik Fakültesi', 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi', 'Докторантура', '8D01516 ', 'Информатика', 'Информатика', 'Computer Science', 'Bilgi İşlem', NULL, 89);
INSERT INTO `deneme` VALUES (132, 'İnsan Ve Toplum Bilimleri Fakültesi', 'Тарих', 'Истории', 'Historii', 'Tarih', 'Докторантура', '8D01604', 'История', 'Тарих', 'History', 'Tarih Öğretmenliği', NULL, 136);
INSERT INTO `deneme` VALUES (133, 'Filoloji Fakültesi', 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi', 'Докторантура', '8D01705', 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh language and literature ', 'Kazak Dili ve Edebiyatı', NULL, 105);
INSERT INTO `deneme` VALUES (134, 'Filoloji Fakültesi', 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller', 'Докторантура', '8D01713', 'Иностранный язык: два иностранных языка', 'Шетел тілі: екі шетел тілі ', 'Foreign Language: Two Foreign Languages', 'Yabancı Dil: İki Yabancı Dil Öğretmenliği', NULL, 106);
INSERT INTO `deneme` VALUES (135, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Докторантура', '8D04106', 'Экономика', 'Экономика', 'Economics', 'Ekonomi', NULL, 122);
INSERT INTO `deneme` VALUES (136, 'İktisadi ve İdari Bilimler Fakültesi', 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm', 'Докторантура', '8D04107', 'Менеджмент', 'Менеджмент', 'Management', 'İşletme', NULL, 123);
INSERT INTO `deneme` VALUES (137, 'İktisadi ve İdari Bilimler Fakültesi', 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler', 'Докторантура', '8D04114', 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару ', 'State and local government ', 'Kamu ve Yerel Yönetimi', NULL, 124);
INSERT INTO `deneme` VALUES (138, 'İktisadi ve İdari Bilimler Fakültesi', 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe', 'Докторантура', '8D04117', 'Финансы', 'Қаржы', 'Finance', 'Finans', NULL, 122);
INSERT INTO `deneme` VALUES (139, 'İktisadi ve İdari Bilimler Fakültesi', 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk', 'Докторантура', '8D04208', 'Право', 'Құқық', 'Law', 'Hukuk', NULL, 125);
INSERT INTO `deneme` VALUES (140, 'Mühendislik Fakültesi', 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği', 'Докторантура', '8D06115', 'Информационные системы', 'Ақпараттық жүйелер ', 'Information Systems', 'Bilişim Sistemleri', NULL, 90);
INSERT INTO `deneme` VALUES (141, 'Fen Bilimleri Fakültesi', 'Математика', 'Математики', 'Mathematicians', 'Matematikler', 'Докторантура', '8D06109', 'Математическое и компьютерное моделирование', 'Математикалық және компьютерлік модельдеу', 'Mathematical and computer modeling', 'Matematiksel ve Bilgisayarda Modelleme', NULL, 133);
INSERT INTO `deneme` VALUES (142, 'Tıp Fakültesi', 'деканат', '', '', '', 'Докторантура', '8D10110', 'Медицина ', 'Медицина', 'Medicine', 'Tıp', NULL, NULL);
INSERT INTO `deneme` VALUES (143, 'Tıp Fakültesi', 'деканат', '', '', '', 'Докторантура', '8D10111', 'Общественное здравоохранение', 'Қоғамдық денсаулық сақтау', 'Public Health', 'Halk sağlığı', NULL, NULL);
INSERT INTO `deneme` VALUES (144, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Акушерлік  гинекология', 'Акушерская гинекология', 'Obstetric gynecology', 'Obstetrik Jinekoloji', 'Резидентура', '7R01102', 'Акушерство и гинекология взрослая, детская', 'Ересектердің, балалардың акушерия және гинекологиясы', 'Obstetrics and gynecology for adults, children', 'Kadın Hastalıkları ve Doğum, Çocuk Kadın Hastalıkları ve Doğumu Dahil', NULL, NULL);
INSERT INTO `deneme` VALUES (145, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler', 'Резидентура', '7R01120', 'Травматология-ортопедия взрослая, детская', 'Ересектердің, балалардың травматология-ортопедиясы', 'Traumatology-orthopedics adults, children', 'Yetişkinler ve çocuklar için travmatoloji ve ortopedi', NULL, NULL);
INSERT INTO `deneme` VALUES (146, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler', 'Резидентура', '7R01115', 'Кардиохирургия взрослая, детская', 'Ересектердің, балалардың кардиохирургиясы', 'Cardiac surgery adults, children', 'Kalp cerrahisi, yetişkinler, çocuklar', NULL, NULL);
INSERT INTO `deneme` VALUES (147, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler', 'Резидентура', '7R01121', 'Урология и андрология взрослая, детская', 'Ересектердің, балалардың урология және андрологиясы', 'Urology and andrology adults, children', 'Yetişkinlerin ve çocukların ürolojisi ve androlojisi', NULL, NULL);
INSERT INTO `deneme` VALUES (148, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler', 'Резидентура', '7R01119', 'Оториноларингология взрослая, детская', 'Ересектердің, балалардың оториноларингологиясы', 'Otorhinolaryngology adults, children', 'Yetişkinlerde ve çocuklarda kulak burun boğaz', NULL, NULL);
INSERT INTO `deneme` VALUES (149, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler', 'Резидентура', '7R01124', 'Онкология взрослая', 'Ересектердің онкологиясы', 'Adult oncology ', 'Onkoloji', NULL, NULL);
INSERT INTO `deneme` VALUES (150, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жалпы  дәрігерлік  практика № 1', 'Общей врачебной практики  № 1', 'General medical practice  № 1', 'Genel Tıbbi uygulamalar  № 1', 'Резидентура', '7R01114', 'Радиология ', 'Радиология ', 'Radiology', 'Radyoloji Teşhisi', NULL, NULL);
INSERT INTO `deneme` VALUES (151, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жалпы  дәрігерлік  практика № 2', 'Общей врачебной практики  № 2', 'General medical practice  № 2', 'Genel Tıbbi uygulamalar  № 2', 'Резидентура', '7R01106', 'Семейная медицина', 'Отбасылық медицина', 'Family doctor', 'Aile Hekimliği ', NULL, NULL);
INSERT INTO `deneme` VALUES (152, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жалпы  дәрігерлік  практика № 2', 'Общей врачебной практики  № 2', 'General medical practice  № 2', 'Genel Tıbbi uygulamalar  № 2', 'Резидентура', '7R01129', 'Патологическая анатомия', 'Патологиялық анатомия', 'Pathological anatomy', 'Patolojik anatomi', NULL, NULL);
INSERT INTO `deneme` VALUES (153, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жалпы  дәрігерлік  практика № 2', 'Общей врачебной практики  № 2', 'General medical practice  № 2', 'Genel Tıbbi uygulamalar  № 2', 'Резидентура', '7R01116', 'Клиническая фармакология', 'Клиникалық фармакология', 'Clinical pharmacology', 'Klinik Farmakoloji', NULL, NULL);
INSERT INTO `deneme` VALUES (154, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жұқпалы  аурулар  және  фтизиатрия', 'Инфекционных заболеваний и фтизиатрии', 'Infectious diseases and phthisiology', 'Bulaşıcı hastalıklar ve Phthysiatrics', 'Резидентура', '7R01122', 'Дерматовенерология взрослая, детская', 'Ересектердің, балалардың дерматовенерологиясы', 'Dermatovenerology adults, children', 'Yetişkinlerin ve çocukların dermatovenerolojisi', NULL, NULL);
INSERT INTO `deneme` VALUES (155, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Жұқпалы  аурулар  және  фтизиатрия', 'Инфекционных заболеваний и фтизиатрии', 'Infectious diseases and phthisiology', 'Bulaşıcı hastalıklar ve Phthysiatrics', 'Резидентура', '7R01123', 'Инфекционные болезни взрослые, детские', 'Ересектердің, балалардың инфекциялық аурулары', 'Infectious diseases adults, children', 'Yetişkinlerin ve çocukların bulaşıcı hastalıkları', NULL, NULL);
INSERT INTO `deneme` VALUES (156, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01105', 'Терапия', 'Терапия', 'Therapy', 'Terapi', NULL, NULL);
INSERT INTO `deneme` VALUES (157, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01107', 'Кардиология взрослая, детская', 'Ересектердің, балалардың кардиологиясы', 'Cardiology adult, children', 'Kardiyoloji, Çocuk Kardiyolojisi ', NULL, NULL);
INSERT INTO `deneme` VALUES (158, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01108', 'Эндокринология взрослая, детская', 'Ересектердің, балалардың эндокринологиясы', 'Endocrinology adult, children', 'Endokrinoloji, Çocuk Endokrinolojisi ', NULL, NULL);
INSERT INTO `deneme` VALUES (159, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01126', 'Аллергология и иммунология взрослая, детская', 'Ересектердің, балалардың аллергология және иммунологиясы', 'Allergology and immunology adult, children', 'Yetişkinlerin ve çocukların alerjisi ve immünolojisi', NULL, NULL);
INSERT INTO `deneme` VALUES (160, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01127', 'Пульмонология взрослая, детская', 'Ересектердің, балалардың пульмонологиясы  ', 'Pulmonology adult, children', 'Yetişkinlerin ve çocukların göğüs hastalıkları', NULL, NULL);
INSERT INTO `deneme` VALUES (161, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye', 'Резидентура', '7R01110', 'Гастроэнтерология взрослая, детская', 'Ересектердің, балалардың гастроэнтерологиясы', 'Gastroenterology adults, children', 'Gastroenteroloji, Çocuk Gastroenterolojisi ', NULL, NULL);
INSERT INTO `deneme` VALUES (162, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Неврология, психиатрия, наркология', 'Неврологии, психиатрии, наркологии', 'Neurology, psychiatry, narcology', 'Nöroloji, psikiyatri, uyuşturucu bilimi', 'Резидентура', '7R01104', 'Неврология взрослая, детская', 'Ересектердің, балалардың неврологиясы', 'Neurology adults, children ', 'Pediatrik Nöroloji , Çocuk Nörolojisi', NULL, 143);
INSERT INTO `deneme` VALUES (163, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Неврология, психиатрия, наркология', 'Неврологии, психиатрии, наркологии', 'Neurology, psychiatry, narcology', 'Nöroloji, psikiyatri, uyuşturucu bilimi', 'Резидентура', '7R01117', 'Физическая медицина и реабилитация взрослая, детская', 'Ересектердің, балалардың физикалық медицина және реабилитациясы', 'Physical medicine and rehabilitation adults, children', 'Yetişkinlerde ve çocuklarda fiziksel tıp ve rehabilitasyon', NULL, 143);
INSERT INTO `deneme` VALUES (164, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Неврология, психиатрия, наркология', 'Неврологии, психиатрии, наркологии', 'Neurology, psychiatry, narcology', 'Nöroloji, psikiyatri, uyuşturucu bilimi', 'Резидентура', '7R01113', 'Психиатрия взрослая, детская', 'Ересектер мен балалар психиатриясы', 'Psychiatry  adults, children ', 'Psikiyatri', NULL, 143);
INSERT INTO `deneme` VALUES (165, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Педиатрия', 'Педиатрии', 'Pediatrics', 'Pediatri', 'Резидентура', '7R01101', 'Педиатрия', 'Педиатрия', 'Pediatrics', 'Pediatri', NULL, 144);
INSERT INTO `deneme` VALUES (166, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Педиатрия', 'Педиатрии', 'Pediatrics', 'Pediatri', 'Резидентура', '7R01125', 'Неонатология', 'Неонатология', 'Neonatology', 'Neonatoloji', NULL, 144);
INSERT INTO `deneme` VALUES (167, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Профилактикалық медицина және стоматологиялық пәндер', 'Профилактической медицины и стоматологических дисциплин', 'Preventive medicine and dental disciplines', 'Önleyici tıp ve diş disiplinleri', 'Резидентура', '7R01130', 'Терапевтическая стоматология', 'Терапиялық стоматология', 'Therapeutic dentistry', 'Terapötik diş hekimliği', NULL, 145);
INSERT INTO `deneme` VALUES (168, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01103', 'Общая хирургия ', 'Жалпы хирургия', 'General surgery', 'Genel Cerrahi', NULL, NULL);
INSERT INTO `deneme` VALUES (169, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01111', 'Офтальмология взрослая, детская', 'Ересектердің, балалардың офтальмологиясы', 'Ophthalmology  adults, children', 'Oftalmoloji, Çocuk Oftalmolojisi ', NULL, NULL);
INSERT INTO `deneme` VALUES (170, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01112', 'Анестезиология и реаниматология взрослая, детская', 'Ересектердің, балалардың анестезиология және реаниматологиясы', 'Anesthesiology and resuscitation adults, children', 'Anesteziyoloji ve Resüsitasyon, Çocuk Anesteziyoloji ve Resüsitasyonu Dahil', NULL, NULL);
INSERT INTO `deneme` VALUES (171, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01109', 'Нейрохирургия взрослая, детская.', 'Ересектердің, балалардың нейрохирургиясы', 'Neurosurgery  adults, children', 'Sinir Cerrahisi, Çocuk Sinir Cerrahisi ', NULL, NULL);
INSERT INTO `deneme` VALUES (172, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01118', 'Детская хирургия', 'Балалар хирургиясы', 'Pediatric surgery', 'Çocuk Cerrahisi', NULL, NULL);
INSERT INTO `deneme` VALUES (173, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01128', 'Ангиохирургия взрослая, детская', 'Ересектердің, балалардың ангиохирургиясы', 'Angiosurgery adults, children', 'Çocuk ve Yetişkin Anjiyo Cerrahi', NULL, NULL);
INSERT INTO `deneme` VALUES (174, 'Lisansüstü Tıp Eğitimi  Fakültesi', 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon', 'Резидентура', '7R01131', 'Челюстно-лицевая хирургия взрослая, детская', 'Ересектердің, балалардың бет-жақ хирургиясы', 'Maxillofacial surgery for adults, children', 'Çocuk ve Yetişkin Çene-Yüz cerrahisi', NULL, NULL);

-- ----------------------------
-- Table structure for tb_anabilim_dallari
-- ----------------------------
DROP TABLE IF EXISTS `tb_anabilim_dallari`;
CREATE TABLE `tb_anabilim_dallari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fakulte_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anabilim_dallari
-- ----------------------------
INSERT INTO `tb_anabilim_dallari` VALUES (1, 1, 'Anesteziyoloji ve Reanimasyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (2, 1, 'Çocuk Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (3, 1, 'Genel Cerrahi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (4, 1, 'Göğüs Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (5, 1, 'Göz Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (6, 1, 'Kadın Hastalıkları ve Doğum Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (7, 1, 'Kalp ve Damar Cerrahisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (8, 1, 'Kulak Burun Boğaz Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (9, 1, 'Nöroşirürji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (10, 1, 'Ortopedi ve Travmatoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (11, 1, 'Plastik ve Rekonstrüktif Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (12, 1, 'Üroloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (13, 1, 'Anatomi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (14, 1, 'Biyofizik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (15, 1, 'Biyoistatistik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (16, 1, 'Biyokimya Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (17, 1, 'Fizyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (18, 1, 'Histoloji ve Embriyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (19, 1, 'Mikrobiyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (20, 1, 'Patoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (21, 1, 'Tıbbi Biyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (22, 1, 'Tıbbi Parazitoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (23, 1, 'Tıp Eğitimi ve Bilişimi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (24, 1, 'Tıp Tarihi ve Etik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (25, 1, 'Acil Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (26, 1, 'Adli Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (27, 1, 'Aile Hekimliği Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (28, 1, 'Çocuk Sağlığı ve Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (29, 1, 'Dermatoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (30, 1, 'Farmakoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (31, 1, 'Fiziksel Tıp ve Rehabilitasyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (32, 1, 'Göğüs Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (33, 1, 'Halk Sağlığı Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (34, 1, 'İç Hastalıkları Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (35, 1, 'Kardiyoloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (36, 1, 'Klinik Bakteriyoloji ve Enfeksiyon Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (37, 1, 'Nöroloji Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (38, 1, 'Nükleer Tıp Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (39, 1, 'Psikiyatri Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (40, 1, 'Radyasyon Onkolojisi Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (41, 1, 'Radyodiagnostik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (42, 1, 'Spor Hekimliği Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (43, 1, 'Tıbbi Genetik Anabilim Dalı', 1);
INSERT INTO `tb_anabilim_dallari` VALUES (44, 1, 'Diğer', 1);

-- ----------------------------
-- Table structure for tb_anket_cevaplari
-- ----------------------------
DROP TABLE IF EXISTS `tb_anket_cevaplari`;
CREATE TABLE `tb_anket_cevaplari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anket_id` int NULL DEFAULT NULL,
  `soru_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `cevap` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anket_cevaplari
-- ----------------------------
INSERT INTO `tb_anket_cevaplari` VALUES (1, 1, 1, 131, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (2, 1, 2, 131, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (3, 1, 3, 131, 4);
INSERT INTO `tb_anket_cevaplari` VALUES (4, 1, 4, 131, 5);
INSERT INTO `tb_anket_cevaplari` VALUES (5, 1, 1, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (6, 1, 2, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (7, 1, 3, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (8, 1, 4, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (9, 2, 1, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (10, 2, 2, 129, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (11, 2, 3, 129, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (12, 2, 4, 129, 1);
INSERT INTO `tb_anket_cevaplari` VALUES (13, 1, 1, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (14, 1, 2, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (15, 1, 3, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (16, 1, 4, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (17, 2, 1, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (18, 2, 2, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (19, 2, 3, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (20, 2, 4, 2, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (21, 1, 1, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (22, 1, 2, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (23, 1, 3, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (24, 1, 4, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (25, 2, 1, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (26, 2, 2, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (27, 2, 3, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (28, 2, 4, 1, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (29, 2, 1, 131, 4);
INSERT INTO `tb_anket_cevaplari` VALUES (30, 2, 2, 131, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (31, 2, 3, 131, 3);
INSERT INTO `tb_anket_cevaplari` VALUES (32, 2, 4, 131, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (33, 3, 1, 1, 4);
INSERT INTO `tb_anket_cevaplari` VALUES (34, 3, 2, 1, 4);
INSERT INTO `tb_anket_cevaplari` VALUES (35, 3, 1, 2, 2);
INSERT INTO `tb_anket_cevaplari` VALUES (36, 3, 2, 2, 1);

-- ----------------------------
-- Table structure for tb_anket_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_anket_ogrencileri`;
CREATE TABLE `tb_anket_ogrencileri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anket_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `anket_bitti` tinyint UNSIGNED NULL DEFAULT 0 COMMENT '1 Olması Bitti anlamında 0 Olması Katılmadığı anlamında',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anket_ogrencileri
-- ----------------------------
INSERT INTO `tb_anket_ogrencileri` VALUES (1, 1, 3, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (2, 1, 9, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (3, 1, 4, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (4, 1, 129, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (5, 1, 131, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (6, 1, 2, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (7, 1, 1, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (8, 2, 3, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (9, 2, 9, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (10, 2, 4, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (11, 2, 129, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (12, 2, 130, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (13, 2, 2, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (14, 2, 1, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (15, 2, 131, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (16, 3, 3, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (17, 3, 9, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (18, 3, 4, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (19, 3, 129, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (20, 3, 130, 0);
INSERT INTO `tb_anket_ogrencileri` VALUES (21, 3, 2, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (22, 3, 1, 1);
INSERT INTO `tb_anket_ogrencileri` VALUES (23, 3, 131, 0);

-- ----------------------------
-- Table structure for tb_anket_sablon
-- ----------------------------
DROP TABLE IF EXISTS `tb_anket_sablon`;
CREATE TABLE `tb_anket_sablon`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `donem_id` int NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anket_sablon
-- ----------------------------
INSERT INTO `tb_anket_sablon` VALUES (1, 1, NULL, NULL, NULL, 'Anket Değerlendirme Formu', 0);
INSERT INTO `tb_anket_sablon` VALUES (2, 1, NULL, NULL, NULL, 'Öğretim Görevlisi Değerlendirme', 1);

-- ----------------------------
-- Table structure for tb_anket_sablon_sorulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_anket_sablon_sorulari`;
CREATE TABLE `tb_anket_sablon_sorulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sablon_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anket_sablon_sorulari
-- ----------------------------
INSERT INTO `tb_anket_sablon_sorulari` VALUES (1, 2, 'Öğretim Görevlisi bilgisi yeterli mi?', 1);
INSERT INTO `tb_anket_sablon_sorulari` VALUES (2, 2, 'Öğretim görevlisi zamanında geliyor', 1);
INSERT INTO `tb_anket_sablon_sorulari` VALUES (3, 2, 'Öğretim görevlisi tertipli mi?', 0);
INSERT INTO `tb_anket_sablon_sorulari` VALUES (4, 2, 'Öğrencilere kaba davranıyor mu?', 0);

-- ----------------------------
-- Table structure for tb_anket_sorulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_anket_sorulari`;
CREATE TABLE `tb_anket_sorulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `anket_id` int NULL DEFAULT NULL,
  `soru_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anket_sorulari
-- ----------------------------
INSERT INTO `tb_anket_sorulari` VALUES (1, 1, 1);
INSERT INTO `tb_anket_sorulari` VALUES (2, 1, 2);
INSERT INTO `tb_anket_sorulari` VALUES (3, 1, 3);
INSERT INTO `tb_anket_sorulari` VALUES (4, 1, 4);
INSERT INTO `tb_anket_sorulari` VALUES (5, 2, 1);
INSERT INTO `tb_anket_sorulari` VALUES (6, 2, 2);
INSERT INTO `tb_anket_sorulari` VALUES (7, 2, 3);
INSERT INTO `tb_anket_sorulari` VALUES (8, 2, 4);
INSERT INTO `tb_anket_sorulari` VALUES (9, 3, 1);
INSERT INTO `tb_anket_sorulari` VALUES (10, 3, 2);
INSERT INTO `tb_anket_sorulari` VALUES (11, 3, 3);
INSERT INTO `tb_anket_sorulari` VALUES (12, 3, 4);
INSERT INTO `tb_anket_sorulari` VALUES (13, 4, 1);
INSERT INTO `tb_anket_sorulari` VALUES (14, 4, 2);
INSERT INTO `tb_anket_sorulari` VALUES (15, 4, 3);
INSERT INTO `tb_anket_sorulari` VALUES (16, 4, 4);

-- ----------------------------
-- Table structure for tb_anketler
-- ----------------------------
DROP TABLE IF EXISTS `tb_anketler`;
CREATE TABLE `tb_anketler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `donem_id` int NULL DEFAULT NULL,
  `kategori` int NULL DEFAULT NULL,
  `kategori_id` int NULL DEFAULT NULL,
  `sablon_id` int NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_anketler
-- ----------------------------
INSERT INTO `tb_anketler` VALUES (1, 1, NULL, 1, 1, 1, 2, 'Dönem Personel  Degerlendirmesi', 1);
INSERT INTO `tb_anketler` VALUES (2, 1, NULL, 1, 1, 1, 2, 'Sınav Sonrası Anket', 1);
INSERT INTO `tb_anketler` VALUES (3, 1, NULL, 1, 1, 1, 2, 'asdasd', 1);
INSERT INTO `tb_anketler` VALUES (4, 1, NULL, 1, 1, 3, 2, 'Şablon Adı', 1);

-- ----------------------------
-- Table structure for tb_birim_agaci
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_agaci`;
CREATE TABLE `tb_birim_agaci`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  `program_kodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_agaci
-- ----------------------------
INSERT INTO `tb_birim_agaci` VALUES (1, 0, 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', '0-ahmet-yesevi-universitesi', 1, 0, NULL);
INSERT INTO `tb_birim_agaci` VALUES (2, 1, 'Академиялық бөлім', 'Академическая единица', 'Academic Unit', 'Akademik Birimler', '1-akademik-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (3, 1, NULL, NULL, 'Administrative Units', 'İdari Birimler', '1-idari-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (4, 2, 'Факультет\r\n', 'Факультет', 'Faculty', 'Fakülteler', '2-fakulteler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (5, 2, NULL, NULL, NULL, 'Enstitüler', '2-enstituler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (6, 2, NULL, NULL, NULL, 'Merkezler', '2-merkezler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (7, 2, NULL, NULL, NULL, 'Meslek Yüksekokulları', '2-meslek-yuksekokullari', 1, 1, NULL);
INSERT INTO `tb_birim_agaci` VALUES (8, 4, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği Fakültesi', '4-dis-hekimligi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (9, 8, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği ', '8-dis-hekimligi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (10, 9, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (11, 10, 'Стоматология (ВМ087)', 'Стоматология (ВМ087)', 'Dentistry', 'Diş Hekimliği', '10-dis-hekimligi', 0, 0, '6B10189');
INSERT INTO `tb_birim_agaci` VALUES (12, 4, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', '4-fen-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (13, 12, 'Биология кафедрасы', 'Кафедра биологии', 'Department of Biology', 'Biyoloji Bölümü', '12-biyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (14, 13, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (15, 14, 'Биология (Жаратылыстану ғылымдары)', 'Биология (Естественные науки)', 'Biology ', 'Biyoloji', '14-biyoloji', 0, 0, '6B05146');
INSERT INTO `tb_birim_agaci` VALUES (16, 14, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', '14-biyoloji-ogretmenligi', 0, 0, '6B01513');
INSERT INTO `tb_birim_agaci` VALUES (17, 14, 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji ', '14-biyoteknoloji', 0, 0, '6B05169');
INSERT INTO `tb_birim_agaci` VALUES (18, 13, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (19, 18, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', '18-biyoloji-ogretmenligi', 0, 0, '7M01507');
INSERT INTO `tb_birim_agaci` VALUES (20, 12, 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '12-ekoloji-ve-kimya-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (21, 20, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (22, 21, 'География (Педагогикалық ғылымдар)', 'География (Педагогические науки) ', 'Geography Teacher Education ', 'Coğrafya Öğretmenliği', '21-cografya-ogretmenligi', 0, 0, '6B01514');
INSERT INTO `tb_birim_agaci` VALUES (23, 21, 'Экология ', 'Экология ', 'Ecology', 'Ekoloji ', '21-ekoloji', 0, 0, '6B05247');
INSERT INTO `tb_birim_agaci` VALUES (24, 21, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğretmenliği ', '21-kimya-ogretmenligi', 0, 0, '6B01512');
INSERT INTO `tb_birim_agaci` VALUES (25, 21, 'Химия-Биология (Педагогикалық ғылымдар)', 'Химии-биология (Педагогические науки) ', 'Chemistry-Biology Teacher Education ', 'Kimya-Biyoloji Öğretmenliği ', '21-kimya-biyoloji-ogretmenligi', 0, 0, '6B01562');
INSERT INTO `tb_birim_agaci` VALUES (26, 20, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (27, 26, 'Экология ', 'Экология ', 'Ecology ', 'Ekoloji ', '26-ekoloji', 0, 0, '7M05223');
INSERT INTO `tb_birim_agaci` VALUES (28, 26, 'Химия (Жаратылыстану ғылымдары)', 'Химия (Естественные науки)', 'Chemistry ', 'Kimya ', '26-kimya', 0, 0, '7M05324');
INSERT INTO `tb_birim_agaci` VALUES (29, 26, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğetmenliği', '26-kimya-ogetmenligi', 0, 0, '7M01535');
INSERT INTO `tb_birim_agaci` VALUES (30, 12, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '12-fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (31, 30, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (32, 31, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik ', '31-fizik', 0, 0, '6B05348');
INSERT INTO `tb_birim_agaci` VALUES (33, 31, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', '31-fizik-ogretmenligi', 0, 0, '6B01510');
INSERT INTO `tb_birim_agaci` VALUES (34, 30, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (35, 34, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik', '34-fizik', 0, 0, '7M05325');
INSERT INTO `tb_birim_agaci` VALUES (36, 34, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', '34-fizik-ogretmenligi', 0, 0, '7M01506');
INSERT INTO `tb_birim_agaci` VALUES (37, 30, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (38, 37, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics ', 'Fizik Öğretmenliği ', '37-fizik-ogretmenligi', 0, 0, '8D01503');
INSERT INTO `tb_birim_agaci` VALUES (39, 12, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '12-matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (40, 39, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (41, 40, 'Информатика, АКТ және робототехника (Педагогикалық ғылымдар)', 'Информатика, ИКТ и робототехника (Педагогические науки) ', 'Computer Science, ICT and Robotic Teacher Education ', 'Bilgi İşlem, Bilişim Teknolojileri ve Robotik Öğretmenliği ', '40-bilgi-islem-bilisim-teknolojileri-ve-robotik-ogretmenligi', 0, 0, '6B01573');
INSERT INTO `tb_birim_agaci` VALUES (42, 40, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', '40-bilgisayar-ogretmenligi', 0, 0, '6B01511');
INSERT INTO `tb_birim_agaci` VALUES (43, 40, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics', 'Matematik ', '40-matematik', 0, 0, '6B05449');
INSERT INTO `tb_birim_agaci` VALUES (44, 40, 'Математика (Педагогикалық ғылымдар) ', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği ', '40-matematik-ogretmenligi', 0, 0, '6B01509');
INSERT INTO `tb_birim_agaci` VALUES (45, 39, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (46, 45, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', '45-bilgisayar-ogretmenligi', 0, 0, '7M01557');
INSERT INTO `tb_birim_agaci` VALUES (47, 45, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics ', 'Matematik ', '45-matematik', 0, 0, '7M05426');
INSERT INTO `tb_birim_agaci` VALUES (48, 45, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği', '45-matematik-ogretmenligi', 0, 0, '7M01547');
INSERT INTO `tb_birim_agaci` VALUES (49, 45, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', '45-matematiksel-ve-bilgisayarda-modelleme', 0, 0, '7M06129');
INSERT INTO `tb_birim_agaci` VALUES (50, 39, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (51, 50, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science ', 'Bilgisayar Bilimleri ', '50-bilgisayar-bilimleri', 0, 0, '8D01516');
INSERT INTO `tb_birim_agaci` VALUES (52, 50, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics ', 'Matematik Öğretmenliği ', '50-matematik-ogretmenligi', 0, 0, '8D01502');
INSERT INTO `tb_birim_agaci` VALUES (53, 50, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', '50-matematiksel-ve-bilgisayarda-modelleme', 0, 0, '8D06109');
INSERT INTO `tb_birim_agaci` VALUES (54, 4, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', '4-filoloji-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (55, 54, 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '54-ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (56, 55, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (57, 56, 'Шетел филологиясы (ағылшын тілі)', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', '56-ingiliz-dili-ve-edebiyati', 0, 0, '6B02332');
INSERT INTO `tb_birim_agaci` VALUES (58, 56, 'Аударма ісі: ағылшын тілі', 'Переводческое дело:английский язык', 'Translation Studies: the English Language ', 'İngilizce Mütercim ve Tercümanlık ', '56-ingilizce-mutercim-ve-tercumanlik', 0, 0, '6B02335');
INSERT INTO `tb_birim_agaci` VALUES (59, 55, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (60, 59, 'Шетел филологиясы: Ағылшын тілі', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', '59-ingiliz-dili-ve-edebiyati', 0, 0, '7M02313');
INSERT INTO `tb_birim_agaci` VALUES (61, 54, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '54-kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (62, 61, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (63, 62, 'Филология: қазақ филологиясы', 'Филология: казахская филология', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı ', '62-kazak-dili-ve-edebiyati', 0, 0, '6B02336');
INSERT INTO `tb_birim_agaci` VALUES (64, 62, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği ', '62-kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01716');
INSERT INTO `tb_birim_agaci` VALUES (65, 61, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (66, 65, 'Филология', 'Филология', 'Philology', 'Dil Bilimi ', '65-dil-bilimi', 0, 0, '7M02315');
INSERT INTO `tb_birim_agaci` VALUES (67, 65, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature', 'Kazak Dili ve Edebiyatı Öğretmenliği ', '65-kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01737');
INSERT INTO `tb_birim_agaci` VALUES (68, 61, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (69, 68, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', '68-kazak-dili-ve-edebiyati', 0, 0, '8D01705');
INSERT INTO `tb_birim_agaci` VALUES (70, 54, 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '54-rus-dili-ve-edebiyati-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (71, 70, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (72, 71, 'Орыс тілі мен әдебиеті', 'Русский язык и литература', 'Russian Language and Literature ', 'Rus Dili ve Edebiyatı Öğretmenliği ', '71-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01717');
INSERT INTO `tb_birim_agaci` VALUES (73, 71, 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті ', 'Русский язык и литература с нерусским языком обучения ', 'Russian Language and Literature at Schools with non-Russian Training', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı Öğretmenliği ', '71-ruscada-egitim-vermeyen-okullarda-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01764');
INSERT INTO `tb_birim_agaci` VALUES (74, 70, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (75, 74, 'Орыс тілі мен әдебиеті', 'Русский язык и литература ', 'Russian Language and Literature', 'Rus Dili ve Edebiyatı Öğretmenliği ', '74-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01738');
INSERT INTO `tb_birim_agaci` VALUES (76, 54, 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '54-turk-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (77, 76, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (78, 77, 'Шетел филологиясы (түрік тілі)', 'Иностранная филология (турецский язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', '77-turk-dili-ve-edebiyati', 0, 0, '6B02333');
INSERT INTO `tb_birim_agaci` VALUES (79, 77, 'Түркітану ', 'Тюркология ', 'Turkology ', 'Türkoloji ', '77-turkoloji', 0, 0, '6B02267');
INSERT INTO `tb_birim_agaci` VALUES (80, 76, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (81, 80, 'Шетел филологиясы: Түрік тілі', 'Иностранная филология (турецкий язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', '80-turk-dili-ve-edebiyati', 0, 0, '7M02314');
INSERT INTO `tb_birim_agaci` VALUES (82, 80, 'Түркітану', 'Тюркология', 'Turkology', 'Türkoloji ', '80-turkoloji', 0, 0, '7M02212');
INSERT INTO `tb_birim_agaci` VALUES (83, 54, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '54-yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (84, 83, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (85, 84, 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Иностранный язык: два иностранных языка (английский-китайский)', 'Foreign language: two foreign languages (English - Chinese) ', 'İngilizce Çince Öğretmenliği ', '84-ingilizce-cince-ogretmenligi', 0, 0, '6B01718');
INSERT INTO `tb_birim_agaci` VALUES (86, 84, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'İngilizce Türkçe Öğretmenliği', '84-ingilizce-turkce-ogretmenligi', 0, 0, '6B01719');
INSERT INTO `tb_birim_agaci` VALUES (87, 83, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (88, 87, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'English Language and Literature', 'İngilizce Türkçe Öğretmenliği', '87-ingilizce-turkce-ogretmenligi', 0, 0, '7M01708');
INSERT INTO `tb_birim_agaci` VALUES (89, 83, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (90, 89, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', '89-kazak-dili-ve-edebiyati', 0, 0, '8D01713');
INSERT INTO `tb_birim_agaci` VALUES (91, 4, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', '4-iktisadi-idari-bilimler-ve-hukuk-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (92, 91, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '91-ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (93, 92, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (94, 93, 'Экономика бакалавриат бағдарламасы', 'Экономика программа бакалавриата', 'Economics ', 'Ekonomi ', '93-ekonomi', 0, 0, '6B04142');
INSERT INTO `tb_birim_agaci` VALUES (95, 93, 'Қаржы бакалавриат бағдарламасы', 'Финансы программа бакалавриата', 'Finance ', 'Finans ', '93-finans', 0, 0, '6B04144');
INSERT INTO `tb_birim_agaci` VALUES (96, 93, 'Есеп және аудит бакалавриат бағдарламасы', 'Учет и аудит программа бакалавриата', 'Accounting and Audit ', 'Muhasebe ve Denetim ', '93-muhasebe-ve-denetim', 0, 0, '6B04143');
INSERT INTO `tb_birim_agaci` VALUES (97, 92, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (98, 97, 'Экономика магистратура бағдарламасы', 'Экономика программа магистратуры', 'Economics. Program', 'Ekonomi ', '97-ekonomi', 0, 0, '7M04118');
INSERT INTO `tb_birim_agaci` VALUES (99, 97, 'Қаржы магистратура бағдарламасы', 'Финансы программа магистратуры', 'Finance. Program', 'Finans ', '97-finans', 0, 0, '7M04141');
INSERT INTO `tb_birim_agaci` VALUES (100, 97, 'Есеп және аудит магистратура бағдарламасы', 'Учет и аудит (программа магистратуры)', 'Accounting and Audit. Program', 'Muhasebe ve Denetim ', '97-muhasebe-ve-denetim', 0, 0, '7M04120');
INSERT INTO `tb_birim_agaci` VALUES (101, 92, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (102, 101, 'Экономика докторантура бағдарламасы', 'Экономика программа докторантуры', 'Economics Program', 'Ekonomi ', '101-ekonomi', 0, 0, '8D04106');
INSERT INTO `tb_birim_agaci` VALUES (103, 101, 'Қаржы докторантуры бағдарламасы', 'Финансы программа докторантуры', 'Finance Program', 'Finans ', '101-finans', 0, 0, '8D04117');
INSERT INTO `tb_birim_agaci` VALUES (104, 91, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', '91-hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (105, 104, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (106, 105, 'Құқықтану бакалавриат бағдарламасы', 'Юриспруденция программа бакалавриата', 'Law ', 'Hukuk ', '105-hukuk', 0, 0, '6B04245');
INSERT INTO `tb_birim_agaci` VALUES (107, 105, 'Құқыққорғау қызметі бакалавриат бағдарламасы', 'Правоохранительная деятельность (программа бакалавриата)', 'Law Enforcement', 'Hukuk Hizmetleri ', '105-hukuk-hizmetleri', 0, 0, '6B04282');
INSERT INTO `tb_birim_agaci` VALUES (108, 105, 'Халықаралық құқық бакалавриат бағдарламасы', 'Международное право программа бакалавриата', 'International Law', 'Uluslararası Hukuk', '105-uluslararasi-hukuk', 0, 0, '6B04281');
INSERT INTO `tb_birim_agaci` VALUES (109, 104, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (110, 109, 'Құқық магистратура бағдарламасы', 'Право программа магистратуры', 'Law. Program', 'Hukuk ', '109-hukuk', 0, 0, '7M04222');
INSERT INTO `tb_birim_agaci` VALUES (111, 104, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (112, 111, 'Құқық докторантура бағдарламасы', 'Право программа докторантуры', 'Law Program', 'Hukuk ', '111-hukuk', 0, 0, '8D04208');
INSERT INTO `tb_birim_agaci` VALUES (113, 91, 'Менеджмент және туризм бөлімі', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', '91-isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (114, 113, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (115, 114, 'Менеджмент бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'Management ', 'İşletme ', '114-isletme', 0, 0, '6B04140');
INSERT INTO `tb_birim_agaci` VALUES (116, 114, 'Туризм бакалавриат бағдарламасы', 'Туризм программа бакалавриата', 'Tourism', 'Turizm', '114-turizm', 0, 0, '6B11157');
INSERT INTO `tb_birim_agaci` VALUES (117, 114, 'Мейрамхана ісі және қонақ үй бизнесі бакалавриат бағдарламасы', 'Ресторанное дело и гостиничный бизнес программа бакалавриата', 'Restaurant and Hotel Business', 'Turizm ve Otel İşletmeciliği ', '114-turizm-ve-otel-isletmeciligi', 0, 0, '6B11180');
INSERT INTO `tb_birim_agaci` VALUES (118, 113, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (119, 118, 'Білім беру саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере образования программа магистратуры', 'Education Management. Program', 'Eğitim Yönetimi ', '118-egitim-yonetimi', 0, 0, '7M04150');
INSERT INTO `tb_birim_agaci` VALUES (120, 118, 'Менеджмент магистратура бағдарламасы', 'Менеджмент программа магистратуры', 'Management. Program', 'İşletme ', '118-isletme', 0, 0, '7M04119');
INSERT INTO `tb_birim_agaci` VALUES (121, 118, 'Денсаулық сақтау саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере здравоохранения программа магистратуры', 'Health Management. Program', 'Sağlık İşletmeciliği ', '118-saglik-isletmeciligi', 0, 0, '7M04160');
INSERT INTO `tb_birim_agaci` VALUES (122, 113, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (123, 122, 'Менеджмент докторантура бағдарламасы', 'Менеджмент программа докторантуры', 'Management Program', 'İşletme ', '122-isletme', 0, 0, '8D04107');
INSERT INTO `tb_birim_agaci` VALUES (124, 91, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public administration and international relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '91-kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (125, 124, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (126, 125, 'Мемлекеттік және жергілікті басқару бакалавриат бағдарламасы', 'Государственное и местное управление программа бакалавриата', 'Public and Local administration ', 'Kamu ve Yerel Yönetim ', '125-kamu-ve-yerel-yonetim', 0, 0, '6B04141');
INSERT INTO `tb_birim_agaci` VALUES (127, 125, 'Халықаралық қатынастар бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'International Relations', 'Uluslararası İlişkiler ', '125-uluslararasi-iliskiler', 0, 0, '6B03138');
INSERT INTO `tb_birim_agaci` VALUES (128, 124, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (129, 128, 'Адам ресурстарын басқару магистратура бағдарламасы', 'Управление человеческими ресурсами программа магистратуры', 'Human resource management. Program', 'Insan kaynakları yönetimi ', '128-insan-kaynaklari-yonetimi', 0, 0, '7M04143');
INSERT INTO `tb_birim_agaci` VALUES (130, 128, 'Мемлекеттік және жергілікті басқару магистратура бағдарламасы', 'Государственное и местное управление программа магистратуры', 'State and local Administration. Program', 'Kamu Yönetimi ', '128-kamu-yonetimi', 0, 0, '7M04121');
INSERT INTO `tb_birim_agaci` VALUES (131, 128, 'Саясаттану магистратура бағдарламасы', 'Политология (программа магистратуры)', 'Political Science. Program', 'Siyaset Bilimi ', '128-siyaset-bilimi', 0, 0, '7M03117');
INSERT INTO `tb_birim_agaci` VALUES (132, 128, 'Халықаралық қатынастар магистратура бағдарламасы', 'Международные отношения программа магистратуры', 'International Relations. Program', 'Uluslararası İlişkiler ', '128-uluslararasi-iliskiler', 0, 0, '7M03140');
INSERT INTO `tb_birim_agaci` VALUES (133, 124, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (134, 133, 'Мемлекеттік және жергілікті басқару докторантура бағдарламасы', 'Государственное и местное управление программа докторантуры', 'State and Local Administration Program', 'Kamu ve Yerel Yönetim ', '133-kamu-ve-yerel-yonetim', 0, 0, '8D04114');
INSERT INTO `tb_birim_agaci` VALUES (135, 4, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', '4-ilahiyat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (136, 135, 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '135-din-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (137, 136, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (138, 137, 'Дінтану (Педагогикалық ғылымдар)', 'Религиоведение (Педагогические науки)', 'Religious Studies Teacher Education ', 'Din Bilgisi Öğretmenliği', '137-din-bilgisi-ogretmenligi', 0, 0, '6B01683');
INSERT INTO `tb_birim_agaci` VALUES (139, 137, 'Дінтану', 'Религиоведение', 'Religious Studies', 'Din Bilimleri', '137-din-bilimleri', 0, 0, '6B02228');
INSERT INTO `tb_birim_agaci` VALUES (140, 137, 'Психология-Дінтану', 'Психология-Религиоведение', 'Psychology-Religious Studies ', 'Din Psikolojisi ', '137-din-psikolojisi', 0, 0, '6В03187');
INSERT INTO `tb_birim_agaci` VALUES (141, 136, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (142, 141, 'Дінтану', 'Религиоведение', 'Religious Studies ', 'Din Bilimleri ', '141-din-bilimleri', 0, 0, '7M02211');
INSERT INTO `tb_birim_agaci` VALUES (143, 135, 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '135-ilahiyat-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (144, 143, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (145, 144, 'Теология', 'Теология', 'Theology', 'İlahiyat', '144-ilahiyat', 0, 0, '6B02229');
INSERT INTO `tb_birim_agaci` VALUES (146, 144, 'Исламтану', 'Исламоведение', 'Islamic Studies', 'İslam Bilimleri', '144-islam-bilimleri', 0, 0, '6B02266');
INSERT INTO `tb_birim_agaci` VALUES (147, 143, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (148, 147, 'Теология', 'Теология', 'Theology ', 'İlahiyat ', '147-ilahiyat', 0, 0, '7M02262');
INSERT INTO `tb_birim_agaci` VALUES (149, 135, 'Қоғамдық ғылымдар кафедрасы', 'Кафедра общественных наук', 'Department of Community Sciences', 'Toplum Bilimleri Bölümü', '135-toplum-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (150, 149, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (151, 150, 'Философия-Дінтану', 'Философия -Религиоведение ', 'Philosophy-Religious Studies', 'Din Felsefesi', '150-din-felsefesi', 0, 0, '6В02286');
INSERT INTO `tb_birim_agaci` VALUES (152, 4, 'Әлеуметтік - гуманитарлық ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', '4-insan-ve-toplum-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (153, 152, 'Журналистика кафедрасы', 'Кафедра журналистики', 'Department of Journalism', 'Gazetecilik Bölümü', '152-gazetecilik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (154, 153, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (155, 154, 'Сандық медия және телерадиожурналистика', 'Цифровая медиа и телерадиожурналистика', 'Digital Media and TV, Radio Journalism', 'Dijital Medya, Radyo ve Televizyon Gazeteciliği ', '154-dijital-medya-radyo-ve-televizyon-gazeteciligi', 0, 0, '6B03279');
INSERT INTO `tb_birim_agaci` VALUES (156, 154, 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', '154-gazetecilik', 0, 0, '6B03239');
INSERT INTO `tb_birim_agaci` VALUES (157, 152, 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '152-okul-oncesi-ogretmenligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (158, 157, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (159, 158, 'Мектепке дейінгі оқыту және тәрбиелеу', 'Дошкольное обучение и воспитание', 'Pre-School Education and Upbringing ', 'Okul Öncesi Öğretmenliği ', '158-okul-oncesi-ogretmenligi', 0, 0, '6B01202');
INSERT INTO `tb_birim_agaci` VALUES (160, 158, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', '158-sinif-ogretmenligi', 0, 0, '6B01303');
INSERT INTO `tb_birim_agaci` VALUES (161, 157, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (162, 161, 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Педагогика дошкольного воспитания и обучения', 'Pedagogy of the Pre-school Education and Upbringing', 'Okul Öncesi Öğretmenliği ', '161-okul-oncesi-ogretmenligi', 0, 0, '7M01202');
INSERT INTO `tb_birim_agaci` VALUES (163, 161, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', '161-sinif-ogretmenligi', 0, 0, '7M01303');
INSERT INTO `tb_birim_agaci` VALUES (164, 152, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Pedagogy and Psychology', 'Pedagoji ve Psikoloji Bölümü', '152-pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (165, 164, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (166, 165, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', '165-pedagoji-ve-psikoloji', 0, 0, '6B01101');
INSERT INTO `tb_birim_agaci` VALUES (167, 164, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (168, 167, 'Педагогика және психология', 'Педагогика и психология', 'Pedagogy and Psychology', 'Pedagoji ve Psikoloji ', '167-pedagoji-ve-psikoloji', 0, 0, '7M01101');
INSERT INTO `tb_birim_agaci` VALUES (169, 164, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (170, 169, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', '169-pedagoji-ve-psikoloji', 0, 0, '8D01101');
INSERT INTO `tb_birim_agaci` VALUES (171, 152, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '152-tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (172, 171, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (173, 172, 'Тарих', 'История', 'History ', 'Tarih ', '172-tarih', 0, 0, '6B02231');
INSERT INTO `tb_birim_agaci` VALUES (174, 172, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', '172-tarih-ogretmenligi', 0, 0, '6B01615');
INSERT INTO `tb_birim_agaci` VALUES (175, 171, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (176, 175, 'Тарих', 'История', 'History', 'Tarih ', '175-tarih', 0, 0, '7M02210');
INSERT INTO `tb_birim_agaci` VALUES (177, 171, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (178, 177, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', '177-tarih-ogretmenligi', 0, 0, '8D01604');
INSERT INTO `tb_birim_agaci` VALUES (179, 4, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', '4-lisansustu-tip-egitimi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (180, 179, 'Жұқпалы аурулар және фтизиатрия кафедрасы', 'Кафедра инфекционных заболеваний и фтизиатрии', 'Department of Infectious diseases and phthisiology', 'Bulaşıcı Hastalıklar ve Fitizyoloji Bölümü', '179-bulasici-hastaliklar-ve-fitizyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (181, 180, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (182, 181, 'Ересектердің, балалардың инфекциялық аурулары ', 'Инфекционные болезни взрослые, детские ', 'Infectious Diseases ', 'Bulaşıcı Hastalıkları', '181-bulasici-hastaliklari', 0, 0, '7R01123');
INSERT INTO `tb_birim_agaci` VALUES (183, 181, 'Ересектердің, балалардың дерматовенерологиясы ', 'Дерматовенерология взрослая, детская', 'Dermatovenerology ', 'Dermatoveneroloji', '181-dermatoveneroloji', 0, 0, '7R01122');
INSERT INTO `tb_birim_agaci` VALUES (184, 179, 'Хирургия және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '179-cerrahi-ve-anesteziyoloji-resusitasyon-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (185, 184, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (186, 185, 'Ересектердің, балалардың анестезиология және реаниматологиясы ', 'Анестезиология и реаниматология взрослая, детская ', 'Anesthesiology and resuscitation ', 'Anesteziyoloji ve Resüsitasyon', '185-anesteziyoloji-ve-resusitasyon', 0, 0, '7R01112');
INSERT INTO `tb_birim_agaci` VALUES (187, 185, 'Ересектердің, балалардың ангиохирургиясы ', 'Ангиохирургия взрослая, детская ', 'Angiosurgery', 'Anjio Cerrahi', '185-anjio-cerrahi', 0, 0, '7R01128');
INSERT INTO `tb_birim_agaci` VALUES (188, 185, 'Ересектердің, балалардың нейрохирургиясы ', 'Нейрохирургия взрослая, детская ', 'Neurosurgery ', 'Beyin Cerrahisi', '185-beyin-cerrahisi', 0, 0, '7R01109');
INSERT INTO `tb_birim_agaci` VALUES (189, 185, 'Ересектердің, балалардың бет-жақ хирургиясы ', 'Челюстно-лицевая хирургия взрослая, детская', 'Maxillofacial surgery', 'Çene-Yüz Cerrahisi', '185-cene-yuz-cerrahisi', 0, 0, '7R01131');
INSERT INTO `tb_birim_agaci` VALUES (190, 185, 'Балалар хирургиясы ', 'Детская хирургия ', 'Pediatric surgery', 'Çocuk Cerrahisi', '185-cocuk-cerrahisi', 0, 0, '7R01118');
INSERT INTO `tb_birim_agaci` VALUES (191, 185, 'Жалпы хирургия ', 'Общая хирургия ', 'General surgery', 'Genel Cerrahi', '185-genel-cerrahi', 0, 0, '7R01103');
INSERT INTO `tb_birim_agaci` VALUES (192, 185, 'Ересектердің, балалардың офтальмологиясы ', 'Офтальмология взрослая, детская', 'Ophthalmology', 'Oftalmoloji', '185-oftalmoloji', 0, 0, '7R01111');
INSERT INTO `tb_birim_agaci` VALUES (193, 179, 'Ішкі аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of Internal diseases', 'Dahiliye Bölümü', '179-dahiliye-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (194, 193, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (195, 194, 'Ересектердің, балалардың аллергология және иммунологиясы', 'Аллергология и иммунология взрослая, детская ', 'Allergology and immunology ', 'Alerji ve İmmünoloji', '194-alerji-ve-immunoloji', 0, 0, '7R01126');
INSERT INTO `tb_birim_agaci` VALUES (196, 194, 'Ересектердің, балалардың эндокринологиясы ', 'Эндокринология взрослая, детская ', 'Endocrinology ', 'Endokrinoloji ', '194-endokrinoloji', 0, 0, '7R01108');
INSERT INTO `tb_birim_agaci` VALUES (197, 194, 'Ересектердің, балалардың гастроэнтерологиясы ', 'Гастроэнтерология взрослая, детская ', 'Gastroenterology ', 'Gastroenteroloji', '194-gastroenteroloji', 0, 0, '7R01110');
INSERT INTO `tb_birim_agaci` VALUES (198, 194, 'Ересектердің, балалардың пульмонологиясы ', 'Пульмонология взрослая, детская ', 'Pulmonology ', 'Göğüs Hastalıkları', '194-gogus-hastaliklari', 0, 0, '7R01127');
INSERT INTO `tb_birim_agaci` VALUES (199, 194, 'Ересектердің, балалардың кардиологиясы', 'Кардиология взрослая, детская ', 'Cardiology ', 'Kardiyoloji', '194-kardiyoloji', 0, 0, '7R01107');
INSERT INTO `tb_birim_agaci` VALUES (200, 194, 'Терапия', 'Терапия ', 'Therapy', 'Terapi', '194-terapi', 0, 0, '7R01105');
INSERT INTO `tb_birim_agaci` VALUES (201, 179, 'Жалпы дәрігерлік практика № 1 кафедрасы', 'Кафедра общей врачебной практики № 1', 'Department of General medical practice № 1', 'Genel Tıbbi Uygulamalar № 1 Bölümü', '179-genel-tibbi-uygulamalar-1-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (202, 201, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (203, 202, 'Радиология ', 'Радиология', 'Radiology', 'Radyoloji Teşhisi', '202-radyoloji-teshisi', 0, 0, '7R01114');
INSERT INTO `tb_birim_agaci` VALUES (204, 179, 'Жалпы дәрігерлік практика № 2 кафедрасы', 'Кафдера общей врачебной практики № 2', 'Department of General medical practice № 2', 'Genel Tıbbi Uygulamalar № 2 Bölümü', '179-genel-tibbi-uygulamalar-2-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (205, 204, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (206, 205, 'Отбасылық медицина ', 'Семейная медицина', 'Primary Care Provider ', 'Aile Hekimliği ', '205-aile-hekimligi', 0, 0, '7R01106');
INSERT INTO `tb_birim_agaci` VALUES (207, 205, 'Клиникалық фармакология ', 'Клиническая фармакология ', 'Clinical Pharmacology', 'Klinik Farmakoloji', '205-klinik-farmakoloji', 0, 0, '7R01116');
INSERT INTO `tb_birim_agaci` VALUES (208, 205, 'Патологиялық анатомия ', 'Патологическая анатомия ', 'Pathological anatomy', 'Patolojik Anatomi', '205-patolojik-anatomi', 0, 0, '7R01129');
INSERT INTO `tb_birim_agaci` VALUES (209, 179, 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', '179-noroloji-psikiyatri-narkoloji-bilimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (210, 209, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (211, 210, 'Ересектердің, балалардың физикалық медицина және реабилитациясы ', 'Физическая медицина и реабилитация взрослая, детская ', 'Physical medicine and rehabilitation', 'Fiziksel Tıp ve Rehabilitasyon', '210-fiziksel-tip-ve-rehabilitasyon', 0, 0, '7R01117');
INSERT INTO `tb_birim_agaci` VALUES (212, 210, 'Ересектердің, балалардың неврологиясы', 'Неврология взрослая, детская ', 'Neurology ', 'Nöroloji', '210-noroloji', 0, 0, '7R01104');
INSERT INTO `tb_birim_agaci` VALUES (213, 210, 'Ересектер мен балалар психиатриясы ', 'Психиатрия взрослая, детская ', 'Psychiatry ', 'Psikiyatri', '210-psikiyatri', 0, 0, '7R01113');
INSERT INTO `tb_birim_agaci` VALUES (214, 179, 'Акушерлік гинекология кафедрасы', 'Кафедра акушерской гинекологии', 'Department of Obstetric gynecology', 'Obstetrik Jinekoloji Bölümü', '179-obstetrik-jinekoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (215, 214, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (216, 215, 'Ересектердің, балалардың акушерия және гинекологиясы ', 'Акушерство и гинекология взрослая, детская', 'Obstetrics and Gynecology ', 'Kadın Hastalıkları ve Jinekoloji ', '215-kadin-hastaliklari-ve-jinekoloji', 0, 0, '7R01102');
INSERT INTO `tb_birim_agaci` VALUES (217, 179, 'Профилактикалық медицина және стоматологиялық пәндер кафедрасы', 'Кафедра профилактической медицины и стоматологических дисциплин', 'Department of Preventive medicine and dental disciplines', 'Önleyici Tıp ve Diş Hekimliği Disiplinleri Bölümü', '179-onleyici-tip-ve-dis-hekimligi-disiplinleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (218, 217, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (219, 218, 'Терапиялық стоматология ', 'Терапевтическая стоматология ', 'Therapeutic dentistry', 'Terapötik Diş Hekimliği', '218-terapotik-dis-hekimligi', 0, 0, '7R01130');
INSERT INTO `tb_birim_agaci` VALUES (220, 179, 'Арнайы хирургиялық пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '179-ozel-cerrahi-disiplinler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (221, 220, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (222, 221, 'Ересектердің, балалардың кардиохирургиясы ', 'Кардиохирургия взрослая, детская ', 'Cardiac surgery', 'Kalp Damar Cerrahisi', '221-kalp-damar-cerrahisi', 0, 0, '7R01115');
INSERT INTO `tb_birim_agaci` VALUES (223, 221, 'Ересектердің, балалардың оториноларингологиясы ', 'Оториноларингология взрослая, детская', 'Otorhinolaryngology ', 'Kulak Burun Boğaz', '221-kulak-burun-bogaz', 0, 0, '7R01119');
INSERT INTO `tb_birim_agaci` VALUES (224, 221, 'Ересектердің онкологиясы ', 'Онкология взрослая', 'Adult oncology ', 'Onkoloji', '221-onkoloji', 0, 0, '7R01124');
INSERT INTO `tb_birim_agaci` VALUES (225, 221, 'Ересектердің, балалардың травматология-ортопедиясы ', 'Травматология-ортопедия взрослая, детская ', 'Traumatology-orthopedics', 'Travmatoloji ve Ortopedi', '221-travmatoloji-ve-ortopedi', 0, 0, '7R01120');
INSERT INTO `tb_birim_agaci` VALUES (226, 221, 'Ересектердің, балалардың урология және андрологиясы ', 'Урология и андрология взрослая, детская ', 'Urology and andrology', 'Üroloji ve Androloji', '221-uroloji-ve-androloji', 0, 0, '7R01121');
INSERT INTO `tb_birim_agaci` VALUES (227, 179, 'Педиатрия кафедрасы', 'Кафедра педиатрии', 'Department of Pediatrics', 'Pediatri Bölümü', '179-pediatri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (228, 227, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (229, 228, 'Неонатология ', 'Неонатология ', 'Neonatology', 'Neonatoloji', '228-neonatoloji', 0, 0, '7R01125');
INSERT INTO `tb_birim_agaci` VALUES (230, 228, 'Педиатрия ', 'Педиатрия ', 'Pediatrics', 'Pediatri', '228-pediatri', 0, 0, '7R01101');
INSERT INTO `tb_birim_agaci` VALUES (231, 4, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', '4-muhendislik-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (232, 231, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '231-bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (233, 232, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (234, 233, 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Обработка информации и визуализация данных ', 'Information Processing and Data Visualization', 'Bilgi Yönetimi ve Veri Görselleştirme', '233-bilgi-yonetimi-ve-veri-gorsellestirme', 0, 0, '6B06181');
INSERT INTO `tb_birim_agaci` VALUES (235, 233, 'Компьютерлік инженерия ', 'Компьютерная инженерия ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', '233-bilgisayar-muhendisligi', 0, 0, '6B06182');
INSERT INTO `tb_birim_agaci` VALUES (236, 233, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '233-bilisim-sistemleri', 0, 0, '6B06151');
INSERT INTO `tb_birim_agaci` VALUES (237, 232, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (238, 237, 'Информатика (Жаратылыстану ғылымдары)', 'Информатика (Педагогические науки) ', 'Computer Science', 'Bilgisayar Mühendisliği ', '237-bilgisayar-muhendisligi', 0, 0, '7M06127');
INSERT INTO `tb_birim_agaci` VALUES (239, 237, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '237-bilisim-sistemleri', 0, 0, '7M06128');
INSERT INTO `tb_birim_agaci` VALUES (240, 232, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (241, 240, 'Ақпараттық жүйелер ', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '240-bilisim-sistemleri', 0, 0, '8D06115');
INSERT INTO `tb_birim_agaci` VALUES (242, 231, 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '231-elektrik-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (243, 242, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (244, 243, 'Электр энергетика', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', '243-elektrik-enerjisi-muhendisligi', 0, 0, '6B07153');
INSERT INTO `tb_birim_agaci` VALUES (245, 243, 'Машина жасау', 'Машиностроение', 'Mechanical Engineering', 'Makine Mühendisliği ', '243-makine-muhendisligi', 0, 0, '6B07189');
INSERT INTO `tb_birim_agaci` VALUES (246, 243, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Kontrol', '243-otomasyon-ve-kontrol', 0, 0, '6B07154');
INSERT INTO `tb_birim_agaci` VALUES (247, 242, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (248, 247, 'Электр энергетикасы', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', '247-elektrik-enerjisi-muhendisligi', 0, 0, '7M07130');
INSERT INTO `tb_birim_agaci` VALUES (249, 247, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Yönetim ', '247-otomasyon-ve-yonetim', 0, 0, '7M07158');
INSERT INTO `tb_birim_agaci` VALUES (250, 4, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', '4-spor-ve-sanat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (251, 250, 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', '250-beden-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (252, 251, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (253, 252, 'Денешынықтыру және спорт', 'Физическая культура и спорт', 'Physical Education and Sports', 'Beden Eğitimi ve Spor Öğretmenliği', '252-beden-egitimi-ve-spor-ogretmenligi', 0, 0, '6B01405');
INSERT INTO `tb_birim_agaci` VALUES (254, 252, 'Дене шынықтыру және бастапқы әскери дайындық', 'Физическая культура и начальная военная подготовка', 'Physical Education and Initial Military Training', 'Beden Eğitimi ve Temel Askeri Hazırlık Öğretmenliği ', '252-beden-egitimi-ve-temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01485');
INSERT INTO `tb_birim_agaci` VALUES (255, 252, 'Бастапқы әскери дайындық', 'Начальная военная подготовка', 'Basic Military Training', 'Temel Askeri Hazırlık Öğretmenliği ', '252-temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01404');
INSERT INTO `tb_birim_agaci` VALUES (256, 251, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (257, 256, 'Дене шынықтыру және спорт', 'Физическая культура и спорт', 'Physical Culture and Sport', 'Beden Eğitimi ve Spor Öğretmenliği', '256-beden-egitimi-ve-spor-ogretmenligi', 0, 0, '7M01404');
INSERT INTO `tb_birim_agaci` VALUES (258, 250, 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '250-guzel-sanatlar-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (259, 258, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (260, 259, 'Сән өнері', 'Декоративное искусство', 'Decorative Art', 'Dekoratif Sanatı', '259-dekoratif-sanati', 0, 0, '6B02125');
INSERT INTO `tb_birim_agaci` VALUES (261, 259, 'Сәндік-қолданбалы өнері', 'Декоративно-прикладное искусство', 'Decorative and Applied Art', 'Dekoratif Sanatlar', '259-dekoratif-sanatlar', 0, 0, '6B02184');
INSERT INTO `tb_birim_agaci` VALUES (262, 259, 'Кәсіптік оқыту', 'Профессиональное обучение', 'Professional Training', 'Mesleki Eğitim Öğretmenliği ', '259-mesleki-egitim-ogretmenligi', 0, 0, '6B01407');
INSERT INTO `tb_birim_agaci` VALUES (263, 259, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher Training in Art Work and Technical Drawing', 'Resim Öğretmenliği ', '259-resim-ogretmenligi', 0, 0, '6B01408');
INSERT INTO `tb_birim_agaci` VALUES (264, 259, 'Көркем еңбек және графикалық жобалау ', 'Художественный труд и графическое проектирование ', 'Artistic Work and Graphic Design', 'Sanatsal Çalışma ve Grafik Çizim Öğretmenliği ', '259-sanatsal-calisma-ve-grafik-cizim-ogretmenligi', 0, 0, '6B01478');
INSERT INTO `tb_birim_agaci` VALUES (265, 259, 'Дизайн', 'Дизайн', 'Design', 'Tasarım', '259-tasarim', 0, 0, '6B02126');
INSERT INTO `tb_birim_agaci` VALUES (266, 258, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (267, 266, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher training in Art work and technical drawing', 'Resim Öğretmenliği ', '266-resim-ogretmenligi', 0, 0, '7M01405');
INSERT INTO `tb_birim_agaci` VALUES (268, 250, 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '250-sahne-sanatlari-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (269, 268, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (270, 269, 'Дәстүрлі музыка өнері (Халық әні)', 'Традиционное музыкальное искусство(Народное пение)', 'Traditional Music Art', 'Geleneksel Müzik Sanatı', '269-geleneksel-muzik-sanati', 0, 0, '6B02122');
INSERT INTO `tb_birim_agaci` VALUES (271, 269, 'Хореография', 'Хореография', 'Choreography', 'Koreografi', '269-koreografi', 0, 0, '6B02124');
INSERT INTO `tb_birim_agaci` VALUES (272, 269, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', '269-muzik-ogretmenligi', 0, 0, '6B01406');
INSERT INTO `tb_birim_agaci` VALUES (273, 269, 'Актерлік өнер', 'Актерское искусство', 'Acting Art', 'Oyunculuk Sanatı', '269-oyunculuk-sanati', 0, 0, '6B02123');
INSERT INTO `tb_birim_agaci` VALUES (274, 269, 'Эстрада өнері', 'Искусство эстрады', 'Pop Art ', 'Pop Müzik Sanatı ', '269-pop-muzik-sanati', 0, 0, '6B02165');
INSERT INTO `tb_birim_agaci` VALUES (275, 269, 'Вокалдық өнер', 'Вокальное искусство', 'Vocal Art', 'Şan Sanatı ', '269-san-sanati', 0, 0, '6B02121');
INSERT INTO `tb_birim_agaci` VALUES (276, 268, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (277, 276, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', '276-muzik-ogretmenligi', 0, 0, '7M01434');
INSERT INTO `tb_birim_agaci` VALUES (278, 4, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', '4-tip-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (279, 278, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '278-tip', 1, 0, '');
INSERT INTO `tb_birim_agaci` VALUES (280, 279, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (281, 280, 'Жалпы медицина', 'Общая медицина', 'General Medicine', 'Genel Tıp', '280-genel-tip', 0, 0, '6B10155');
INSERT INTO `tb_birim_agaci` VALUES (282, 280, 'Мейіргер ісі', 'Сестринское дело', 'Nursing', 'Hemşirelik', '280-hemsirelik', 0, 0, '6B10173');
INSERT INTO `tb_birim_agaci` VALUES (283, 280, 'Медицина (ВМ086)', 'Медицина (ВМ086)', 'Medicine', 'Tıp', '280-tip', 0, 0, '6B10188');
INSERT INTO `tb_birim_agaci` VALUES (284, 279, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (285, 284, 'Қоғамдық денсаулық сақтау ', 'Общественное здравоохранение ', 'Public Health', 'Halk Sağlığı', '284-halk-sagligi', 0, 0, '7M10144');
INSERT INTO `tb_birim_agaci` VALUES (286, 284, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', '284-tip', 0, 0, '7M10131');
INSERT INTO `tb_birim_agaci` VALUES (287, 279, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci` VALUES (288, 287, 'Қоғамдық денсаулық сақтау', 'Общественное здравоохранение', 'Public Health', 'Halk sağlığı', '287-halk-sagligi', 0, 0, '8D10111');
INSERT INTO `tb_birim_agaci` VALUES (289, 287, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', '287-tip', 0, 0, '8D10110');

-- ----------------------------
-- Table structure for tb_birim_agaci_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_agaci_copy1`;
CREATE TABLE `tb_birim_agaci_copy1`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_agaci_copy1
-- ----------------------------
INSERT INTO `tb_birim_agaci_copy1` VALUES (1, 0, 'Akademik Birimler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (2, 0, 'İdari Birimler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (3, 1, 'Fakülteler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (4, 1, 'Enstitüler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (5, 1, 'Merkezler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (7, 1, 'Meslek Yüksekokulları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (8, 3, 'Hazırlık Okulu', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (9, 3, 'Mühendislik Fakültesi', 'muhendislik-fakultesi', 1, 0, 'deneme', 'Faculty of Engineering', 'Rusça Mühendislikkk');
INSERT INTO `tb_birim_agaci_copy1` VALUES (10, 3, 'Fen Bilimleri Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (11, 3, 'Filoloji Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (12, 3, 'İnsan ve Toplum Bilimleri Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (13, 3, 'İlahiyat Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (14, 3, 'Spor ve Sanat Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (15, 3, 'Sosyal Bilimler Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (16, 3, 'Diş Hekimliği Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (17, 3, 'Tıp Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (18, 3, 'Lisansüstü Tıp Eğitimi Fakültesi (Çimkent)', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (19, 4, 'Türkoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (20, 4, 'Ekoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (21, 4, 'Avrasya Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (22, 4, 'Arkeoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (23, 4, 'Tıbbi Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (24, 4, 'Fen Bilimleri Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (25, 4, 'Yesevi Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (27, 8, 'Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (29, 27, 'Türk Dili Bölümü', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (30, 27, 'Kazak ve Rus Dili Bölümü	', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (31, 27, 'İngiliz Dili Bölümü', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (32, 9, 'Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (33, 9, 'Yüksek Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (34, 9, 'Doktora Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (37, 32, 'Bilgisayar Mühendisliği', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (38, 7, 'Ahmet Yesevi Meslek Yüksekokulu', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (39, 2, 'Bilgi İşlem Daire Baişkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (40, 2, 'Öğreci İşleri Daire Başkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (41, 2, 'Personel İşleri Daire Başkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (42, 2, 'Satınalma Müdürlüğü', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy1` VALUES (43, 8, 'Yüksek Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_birim_agaci_copy2
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_agaci_copy2`;
CREATE TABLE `tb_birim_agaci_copy2`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_agaci_copy2
-- ----------------------------
INSERT INTO `tb_birim_agaci_copy2` VALUES (1, 0, 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'ahmet-yesevi-universitesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (2, 1, 'Академиялық бөлім', 'Академическая единица', 'Academic Unit', 'Akademik Birimler', 'akademik-birimler', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (3, 1, NULL, NULL, 'Administrative Units', 'İdari Birimler', 'idari-birimler', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (4, 2, 'Факультет\r\n', 'Факультет', 'Faculty', 'Fakülteler', 'fakulteler', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (5, 2, NULL, NULL, NULL, 'Enstitüler', 'enstituler', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (6, 2, NULL, NULL, NULL, 'Merkezler', 'merkezler', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (7, 2, NULL, NULL, NULL, 'Meslek Yüksekokulları', 'meslek-yuksekokullari', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (8, 4, 'Әлеуметтік - Гуманитарлық  ғылымдар', 'Социально-гуманитарных наук', 'Social and Humanitarian Sciences', 'Sosyal ve Beşeri bilimler Fakültesi', 'sosyal-ve-beseri-bilimler-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (9, 4, 'Спорт және өнер ', 'Спорта и искусства', 'Sports and Art', 'Spor ve Sanat Fakültesi', 'spor-ve-sanat-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (10, 4, 'Жаратылыстану ғылымдар', 'Естестенных наук', 'Natural Sciences', 'Fen Fakültesi', 'fen-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (11, 4, 'Инженерия', 'Инженерии', 'Engineering', 'Mühendislik Fakültesi', 'muhendislik-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (12, 4, 'Филология', 'Филологический', 'Philological', 'Filoloji Fakültesi', 'filoloji-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (14, 4, 'Теология', 'Теологический', 'Theological', 'Teoloji Fakültesi', 'teoloji-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (15, 4, 'Экономика, басқару және құқық', 'Экономики, управления и права', 'Economics, Management and Law', 'İktisadi ve İdari Bilimler Fakültesi', 'iktisadi-ve-idari-bilimler-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (16, 4, 'Медицина', 'Медицинский', 'Medical', 'Tıp Fakültesi', 'tip-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (17, 4, 'Стоматология', 'Стоматологический', 'Dental', 'Diş Hekimliği Fakültesi', 'dis-hekimligi-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (19, 4, 'Жаратылыстану ғылымдар', 'Естестенных наук', 'Natural Sciences', 'Fen Bilimleri Fakültesi', 'fen-bilimleri-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (20, 4, 'Әлеуметтік - Гуманитарлық  ғылымдар', 'Социально-гуманитарных наук', 'Social and Humanitarian Sciences', 'İnsan Ve Toplum Bilimleri Fakültesi', 'insan-ve-toplum-bilimleri-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (21, 4, 'Жоғары медициналық білімнен кейінгі білім беру', 'Послевузовского высшего медицинское образования', 'Postgraduate higher medical education', 'Lisansüstü Tıp Eğitimi  Fakültesi', 'lisansustu-tip-egitimi-fakultesi', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (22, 8, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (23, 8, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (25, 9, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (26, 9, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (28, 10, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (29, 10, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (31, 11, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (32, 11, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (33, 11, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (34, 12, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (35, 12, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (36, 12, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (40, 14, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (41, 14, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (43, 15, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (44, 15, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (45, 15, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (46, 16, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (47, 16, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (48, 16, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (49, 17, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (50, 17, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (51, 17, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (55, 19, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (56, 19, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (57, 19, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (60, 20, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (61, 21, 'Резидентура\r\n', 'Резидентура\r\n', 'Specialization Training in Medicine', 'Tıpta Uzmanlık Eğitimi', 'tipta-uzmanlik-egitimi', 1, 1);
INSERT INTO `tb_birim_agaci_copy2` VALUES (62, 22, 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (63, 22, 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi Bölümü', 'okul-oncesi-ve-ilkokul-egitimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (64, 22, 'Тарих', 'Истории', 'Historii', 'Tarih Bölümü', 'tarih-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (65, 22, 'Журналистика', 'Журналистики', 'Journalism', 'Gazetecilik Bölümü', 'gazetecilik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (66, 23, 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (67, 23, 'Мектепке дейінгі және бастауышта білім беру', 'Дошкольного и начального образования', 'Preschool and primary education', 'Okul öncesi ve ilkokul eğitimi Bölümü', 'okul-oncesi-ve-ilkokul-egitimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (68, 23, 'Тарих', 'Истории', 'Historii', 'Tarih Bölümü', 'tarih-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (69, 25, 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi Bölümü', 'beden-egitimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (70, 25, 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları Bölümü', 'sahne-sanatlari-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (71, 25, 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar Bölümü', 'guzel-sanatlar-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (72, 26, 'Дене мәдениеті', 'Физической культуры', 'Physical education', 'Beden eğitimi Bölümü', 'beden-egitimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (73, 26, 'Орындаушылық өнер', 'Исполнительского искусства', 'Executive search', 'Sahne sanatları Bölümü', 'sahne-sanatlari-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (74, 26, 'Бейнелеу өнері', 'Изобразительного искусство', 'Fine arts', 'Güzel sanatlar Bölümü', 'guzel-sanatlar-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (75, 28, 'Математика', 'Математики', 'Mathematicians', 'Matematik Bölümü', 'matematik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (76, 28, 'Физика', 'Физики', 'Physicists', 'Fizik Bölümü', 'fizik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (77, 28, 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', 'ekoloji-ve-kimya-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (78, 28, 'Биология', 'Биологии', 'Biology', 'Biyoloji Bölümü', 'biyoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (79, 29, 'Физика', 'Физики', 'Physicists', 'Fizik Bölümü', 'fizik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (80, 29, 'Математика', 'Математики', 'Mathematicians', 'Matematik Bölümü', 'matematik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (81, 29, 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', 'ekoloji-ve-kimya-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (82, 29, 'Биология', 'Биологии', 'Biology', 'Biyoloji Bölümü', 'biyoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (83, 31, 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi Bölümü', 'bilgisayar-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (84, 31, 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (85, 31, 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği Bölümü', 'elektrik-muhendisligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (86, 32, 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi Bölümü', 'bilgisayar-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (87, 32, 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (88, 32, 'Электр инженериясы', 'Электроинженерии', 'Electrical Engineering', 'Elektrik Mühendisliği Bölümü', 'elektrik-muhendisligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (89, 33, 'Компьютерлік ғылымдар', 'Компьютерных наук', 'Computer Science', 'Bilgisayar Bilimi Bölümü', 'bilgisayar-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (90, 33, 'Компьютерлік инженерия', 'Компьютерной инженерии', 'Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (92, 34, 'Қазақ филологиясы ', 'Казахской филологии ', 'Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (93, 34, 'Орыс тілі және әдебиеті', 'Русского языка и литература', 'Russian language and literature', 'Rus dili ve edebiyatı Bölümü', 'rus-dili-ve-edebiyati-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (94, 34, 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller Bölümü', 'pedagojik-yabanci-diller-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (95, 34, 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi Bölümü', 'turk-filolojisi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (96, 34, 'Ағылшын филологиясы және аударма ісі', 'Английской филологии и переводческого дела', 'English Philology and Translation', 'İngiliz Filolojisi ve çeviri işleri Bölümü', 'ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (98, 35, 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller Bölümü', 'pedagojik-yabanci-diller-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (99, 35, 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (100, 35, 'Орыс тілі және әдебиеті', 'Русского языка и литература', 'Russian language and literature', 'Rus dili ve edebiyatı Bölümü', 'rus-dili-ve-edebiyati-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (101, 35, 'Түрік филологиясы', 'Турецкой филологии', 'Turkish Philology', 'Türk Filolojisi Bölümü', 'turk-filolojisi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (102, 35, 'Ағылшын филологиясы және аударма ісі', 'Английской филологии и переводческого дела', 'English Philology and Translation', 'İngiliz Filolojisi ve çeviri işleri Bölümü', 'ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (105, 36, 'Қазақ филологиясы ', 'Казахской филологии', 'Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (106, 36, 'Педагогикалық шетел тілдері', 'Педагогических иностранных языков', 'Pedagogical foreign languages', 'Pedagojik yabancı diller Bölümü', 'pedagojik-yabanci-diller-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (110, 40, 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi Bölümü', 'din-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (111, 40, 'Теология', 'Теологии', 'Theology', 'Teoloji Bölümü', 'teoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (112, 41, 'Дінтану', 'Религиоведения', 'Religious studies', 'Din Bilimi Bölümü', 'din-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (113, 41, 'Теология', 'Теологии', 'Theology', 'Teoloji Bölümü', 'teoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (114, 43, 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (115, 43, 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm Bölümü', 'yonetim-ve-turizm-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (116, 43, 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (117, 43, 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (118, 44, 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (119, 44, 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (120, 44, 'Менеджмент және туризм', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm Bölümü', 'yonetim-ve-turizm-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (121, 44, 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (122, 45, 'Экономика, қаржы және есеп', 'Экономика, финансы и учет', 'Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (123, 45, 'Менеджмент және туризм ', 'Менеджмента и туризма', 'Management and Tourism', 'Yönetim ve Turizm Bölümü', 'yonetim-ve-turizm-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (124, 45, 'Мемлекеттік басқару және халықаралық қатынастар', 'Государственного управления и международных отношений', 'Public administration and international relations', 'Kamu yönetimi ve uluslararası ilişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (125, 45, 'Құқықтану', 'Юриспруденции', 'Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (126, 46, 'деканат', NULL, 'Medicine', 'Tıp Bölümü', 'tip-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (127, 47, 'деканат', NULL, 'Medicine', 'Tıp Bölümü', 'tip-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (128, 48, 'деканат', NULL, 'Medicine', 'Tıp Bölümü', 'tip-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (129, 49, 'Стоматология', 'Стоматологический', 'Dentistry', 'Diş Hekimliği Bölümü', 'dis-hekimligi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (130, 56, 'Экология және химия', 'Экологии и химии', 'Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', 'ekoloji-ve-kimya-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (131, 56, 'Физика', 'Физики', 'Physicists', 'Fizik Bölümü', 'fizik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (132, 56, 'Математика', 'Математики', 'Mathematicians', 'Matematik Bölümü', 'matematik-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (133, 57, 'Математика', 'Математики', 'Mathematicians', 'Matematikler Bölümü', 'matematikler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (134, 57, 'Физика', 'Физики', 'Physicists', 'Fizikler Bölümü', 'fizikler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (135, 60, 'Педагогика және психология', 'Педагогики и психологии', 'Pedagogy and psychology', 'Pedagoji ve psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (136, 60, 'Тарих', 'Истории', 'History', 'Tarih Bölümü', 'tarih-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (137, 61, 'Акушерлік  гинекология', 'Акушерская гинекология', 'Obstetric gynecology', 'Obstetrik Jinekoloji Bölümü', 'obstetrik-jinekoloji-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (138, 61, 'Арнайы  хирургиялық  пәндер', 'Специальные хирургические дисциплины', 'Special surgical disciplines', 'Özel cerrahi disiplinler Bölümü', 'ozel-cerrahi-disiplinler-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (139, 61, 'Жалпы  дәрігерлік  практика 1', 'Общей врачебной практики 1', 'General medical practice 1', 'Genel Tıbbi uygulamalar 1 Bölümü', 'genel-tibbi-uygulamalar-1-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (140, 61, 'Жалпы  дәрігерлік  практика 2', 'Общей врачебной практики 2', 'General medical practice 2', 'Genel Tıbbi uygulamalar 2 Bölümü', 'genel-tibbi-uygulamalar-2-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (141, 61, 'Жұқпалы  аурулар  және  фтизиатрия', 'Инфекционных заболеваний и фтизиатрии', 'Infectious diseases and phthisiology', 'Bulaşıcı hastalıklar ve Phthysiatrics Bölümü', 'bulasici-hastaliklar-ve-phthysiatrics-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (142, 61, 'Ішкі  аурулар', 'Внутренних болезней', 'Internal diseases', 'Dahiliye Bölümü', 'dahiliye-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (143, 61, 'Неврология, психиатрия, наркология', 'Неврологии, психиатрии, наркологии', 'Neurology, psychiatry, narcology', 'Nöroloji, psikiyatri, uyuşturucu bilimi Bölümü', 'noroloji-psikiyatri-uyusturucu-bilimi-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (144, 61, 'Педиатрия', 'Педиатрии', 'Pediatrics', 'Pediatri Bölümü', 'pediatri-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (145, 61, 'Профилактикалық медицина және стоматологиялық пәндер', 'Профилактической медицины и стоматологических дисциплин', 'Preventive medicine and dental disciplines', 'Önleyici tıp ve diş disiplinleri Bölümü', 'onleyici-tip-ve-dis-disiplinleri-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (146, 61, 'Хирургия  және анестезиология-реанимация', 'Хирургия и анестезиология-реанимация', 'Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', 'cerrahi-ve-anesteziyoloji-resusitasyon-bolumu', 1, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (147, 49, 'Стоматология', 'Стоматология', 'Dentistry', 'Diş Hekimliği', 'dis-hekimligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (148, 62, 'Педагогика и психология', 'Педагогика және психология', 'Рedagogy and psychology', 'Pedagoji ve Psikoloji', 'pedagoji-ve-psikoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (149, 63, 'Дошкольное обучение и воспитание', 'Мектепке дейінгі оқыту және тәрбиелеу', 'Pre-school education and upbringing', 'Okul Öncesi Eğitim ve Öğretim', 'okul-oncesi-egitim-ve-ogretim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (150, 63, 'Педагогика и методика начального обучения', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Pedagogy and methods of primary education ', 'İlköğretim Pedagojisi ve Metodolojisi', 'ilkogretim-pedagojisi-ve-metodolojisi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (151, 64, 'История', 'Тарих', 'History', 'Tarih Öğretmenliği', 'tarih-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (152, 64, 'История', 'Тарих', 'History', 'Tarih', 'tarih', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (153, 65, 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', 'gazetecilik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (154, 65, 'Цифровая медиа и телерадиожурналистика', 'Сандық медия және телерадиожурналистика', 'Digital media and TV, radio journalism', 'Dijital medya ve televizyon ve radyo gazeteciliği', 'dijital-medya-ve-televizyon-ve-radyo-gazeteciligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (155, 66, 'Педагогика и психология', 'Педагогика және психология', 'Pedagogy and psychology', 'Pedagoji ve Psikoloji', 'pedagoji-ve-psikoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (156, 67, 'Педагогика дошкольного воспитания и обучения', 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Pedagogy of the pre-school education and upbringing', 'Okul Öğrenci Öğretmenliği', 'okul-ogrenci-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (157, 67, 'Педагогика и методика начального обучения', 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Pedagogy and methods of primary education', 'Sınıf Öğretmenliği', 'sinif-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (158, 68, 'История', 'Тарих', 'History', 'Tarih', 'tarih', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (159, 69, 'Начальная военная подготовка', 'Бастапқы әскери дайындық', 'Basic Military Training', 'İlk Askeri Hazırlık', 'ilk-askeri-hazirlik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (160, 69, 'Физическая культура и спорт', 'Денешынықтыру және спорт', 'Physical education and sports', 'Beden Eğitimi ve Spor', 'beden-egitimi-ve-spor', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (161, 69, 'Физическая культура и начальная военная подготовка', 'Дене шынықтыру және бастапқы әскери дайындық', 'Physical education and initial military training', 'Beden Eğitimi ve Spor', 'beden-egitimi-ve-spor', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (162, 70, 'Музыкальное образование', 'Музыкалық білім', 'Music Education', 'Müzik Eğitimi', 'muzik-egitimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (163, 70, 'Вокальное искусство', 'Вокалдық өнер', 'Vocal art', 'Vokal Sanatı', 'vokal-sanati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (164, 70, 'Искусство эстрады', 'Эстрада өнері', 'Pop art ', 'Pop Müzik Sanatı ', 'pop-muzik-sanati-', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (165, 70, 'Традиционное музыкальное искусство(Народное пение)', 'Дәстүрлі музыка өнері (Халық әні)', 'Traditional Music Art (Folk singing)', 'Geleneksel müzik sanatı', 'geleneksel-muzik-sanati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (166, 70, 'Актерское искусство', 'Актерлік өнер', 'Acting art', 'Oyunculuk Sanatı', 'oyunculuk-sanati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (167, 70, 'Хореография', 'Хореография', 'Choreography', 'Koreografi', 'koreografi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (168, 71, 'Изобразительное искусство и черчение', 'Бейнелеу өнері және сызу', 'Fine Art and Drawing', 'Güzel Sanatlar ve Çizim', 'guzel-sanatlar-ve-cizim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (169, 71, 'Профессиональное обучение', 'Кәсіптік оқыту', 'Professional Training', 'Meslekî Eğitim', 'meslek-egitim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (170, 71, 'Художественный труд и графическое проектирование ', 'Көркем еңбек және графикалық жобалау ', 'Artistic work and graphic design', 'Sanatsal Çalışma ve Grafik Çizim', 'sanatsal-calisma-ve-grafik-cizim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (171, 71, 'Декоративное искусство', 'Сән өнері', 'Decorative Art', 'Dekoratif Sanatı', 'dekoratif-sanati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (172, 71, 'Дизайн', 'Дизайн', 'Design', 'Tasarım', 'tasarim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (173, 71, 'Декоративно-прикладное искусство', 'Сәндік-қолданбалы өнері', 'Decorative and applied art', 'Dekoratif Sanatlar', 'dekoratif-sanatlar', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (174, 72, 'Физическая культура и спорт', 'Дене шынықтыру және спорт', 'Physical Culture and Sport', 'Fiziksel Kültür ve Spor', 'fiziksel-kultur-ve-spor', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (175, 73, 'Музыкальное образование', 'Музыкалық білім', 'Music Education', 'Müzik Eğitimi', 'muzik-egitimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (176, 74, 'Изобразительное искусство и черчение', 'Бейнелеу өнері және сызу', 'Fine Art and Drawing', 'Güzel Sanatlar ve Çizim', 'guzel-sanatlar-ve-cizim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (177, 75, 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', 'matematik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (178, 75, 'Математика ', 'Математика', 'Mathematics', 'Matematik', 'matematik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (179, 76, 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', 'fizik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (180, 76, 'Физика ', 'Физика', 'Physics', 'Fizik', 'fizik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (181, 77, 'Химия', 'Химия', 'Chemistry', 'Kimya Öğetmenliği', 'kimya-ogetmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (182, 77, 'Химия-Биология ', 'Химия-Биология ', 'Chemistry-Biology ', 'Kimya-Biyoloji Öğretmenliği', 'kimya-biyoloji-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (183, 77, 'География', 'География', 'Geography', 'Coğrafya Öğretmenliği', 'cografya-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (184, 77, 'Экология ', 'Экология', 'Ecology', 'Ekoloji', 'ekoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (185, 78, 'Биология', 'Биология', 'Biology', 'Biyoloji Öğretmenliği', 'biyoloji-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (186, 78, 'Биология', 'Биология', 'Biology', 'Biyoloji', 'biyoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (187, 78, 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji', 'biyoteknoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (188, 79, 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', 'fizik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (189, 80, 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', 'matematik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (190, 81, 'Химия', 'Химия', 'Chemistry', 'Kimya Öğetmenliği', 'kimya-ogetmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (191, 82, 'Биология', 'Биология', 'Biology', 'Biyoloji Öğretmenliği', 'biyoloji-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (192, 83, 'Информатика', 'Информатика', 'Computer Science ', 'Bilgi İşlem', 'bilgi-islem', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (193, 83, 'Информатика, ИКТ и робототехника ', 'Информатика, АКТ және робототехника ', 'Computer Science, ICT and robotic', 'Bilgi İşlem, Bilişim Teknolojileri ve Robototeknik ', 'bilgi-islem-bilisim-teknolojileri-ve-robototeknik-', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (194, 84, 'Информационные системы', 'Ақпараттық жүйелер', 'Information Systems', 'Bilişim Sistemleri', 'bilisim-sistemleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (195, 84, 'Вычислительная техника и программное обеспечение', 'Есептеу техникасы және бағдарламалық қамтамасыз ету', 'Computing and Software', 'Hesaplama Teknikleri ve Programlama', 'hesaplama-teknikleri-ve-programlama', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (196, 84, 'Компьютерная инженерия ', 'Компьютерлік инженерия  ', 'Computer Enginering', 'Bilgisayar Mühendisliği', 'bilgisayar-muhendisligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (197, 84, 'Обработка информации и визуализация данных ', 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Information Processing and Data Visualization ', 'Bilgi İşlem ve Verilerin Görselleştirilmesi', 'bilgi-islem-ve-verilerin-gorsellestirilmesi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (198, 85, 'Электроэнергетика', 'Электр энергетика', 'Electrical power engineering', 'Elektrik Enerjisi', 'elektrik-enerjisi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (200, 85, 'Машиностроение', 'Машина жасау', 'Mechanical engineering', 'Makine Mühendisliği', 'makine-muhendisligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (201, 86, 'Информатика ', 'Информатика', 'Computer Science', 'Bilgi İşlem', 'bilgi-islem', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (202, 87, 'Информатика', 'Информатика', 'Computer Science', 'Bilgi İşlem', 'bilgi-islem', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (203, 87, 'Информационные системы', 'Ақпараттық жүйелер', 'Information Systems', 'Bilişim Sistemleri', 'bilisim-sistemleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (204, 87, 'Компьютерная инженерия ', 'Компьютерлік инженерия  ', 'Computer Enginering', 'Bilgisayar Mühendisliği', 'bilgisayar-muhendisligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (205, 88, 'Электроэнергетика', 'Электр энергетикасы', 'Electrical power engineering', 'Electricity', 'electricity', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (206, 88, 'Автоматизация и управление', 'Автоматтандыру және басқару', 'Automation and Management', 'Automation and Management', 'automation-and-management', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (207, 89, 'Информатика', 'Информатика', 'Computer Science', 'Bilgi İşlem', 'bilgi-islem', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (208, 90, 'Информационные системы', 'Ақпараттық жүйелер ', 'Information Systems', 'Bilişim Sistemleri', 'bilisim-sistemleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (209, 92, 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh language and literature', 'Kazak Dili ve Edebiyatı', 'kazak-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (210, 92, 'Филология: казахская филология', 'Филология: қазақ филологиясы', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı', 'kazak-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (211, 93, 'Русский язык и литература', 'Орыс тілі мен әдебиеті', 'Russian language and literature ', 'Rus Dili ve Edebiyatı', 'rus-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (212, 93, 'Русский язык и литература с нерусским языком обучения ', 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті  ', 'Russian Language and Literature in International  Schools ', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı', 'ruscada-egitim-vermeyen-okullarda-rus-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (213, 94, 'Иностранный язык: два иностранных языка (английский-китайский)', 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Foreign language: two foreign languages (English - Chinese )', 'İngilizce Çince Öğretmenliği', 'ingilizce-cince-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (214, 94, 'Иностранный язык: два иностранных языка (английский-турецский)', 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Foreign Language: Two Foreign Languages(English -Turkish )', 'İngilizce Türkçe Öğretmenliği', 'ingilizce-turkce-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (215, 95, 'Тюркология ', 'Түркітану ', 'Turkology', 'Türkoloji', 'turkoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (216, 95, 'Иностранная филология (турецский язык)', 'Шетел филологиясы  (түрік тілі)', 'Foreign Philology:(тurkish language)', 'Türk Dili Ve Edebiyatı', 'turk-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (217, 96, 'Иностранная филология (английский язык)', 'Шетел филологиясы (ағылшын тілі)', 'Foreign Philology:  (english language)', 'İngiliz Dili ve Edebiyatı', 'ingiliz-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (219, 98, 'Иностранный язык: два иностранных языка', 'Шетел тілі: екі шетел тілі', 'Foreign Language: Two Foreign Languages', 'Yabancı Dil: İki Yabancı Dil ', 'yabanci-dil-iki-yabanci-dil-', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (220, 99, 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği', 'kazak-dili-ve-edebiyati-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (221, 99, 'Филология', 'Филология', 'Philology', 'Dil Bilimi', 'dil-bilimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (222, 100, 'Русский язык и литература ', 'Орыс тілі мен әдебиеті', 'Russian language and literature', 'Rus Dili ve Edebiyatı Öğretmenliği', 'rus-dili-ve-edebiyati-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (223, 101, 'Тюркология', 'Түркітану', 'Turkology', 'Türkoloji', 'turkoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (224, 101, 'Иностранная филология (турецкий язык)', 'Шетел филологиясы: Түрік тілі', 'Foreign Philology (Turkish)', 'Türk Dili ve Edebiyatı', 'turk-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (225, 102, 'Иностранная филология (английский язык)', 'Шетел филологиясы:  Ағылшын тілі', 'Foreign Philology(English)', 'İngiliz Dili ve Edebiyatı', 'ingiliz-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (226, 105, 'Казахский язык и литература', 'Қазақ тілі мен әдебиеті', 'Kazakh language and literature ', 'Kazak Dili ve Edebiyatı', 'kazak-dili-ve-edebiyati', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (227, 106, 'Иностранный язык: два иностранных языка', 'Шетел тілі: екі шетел тілі ', 'Foreign Language: Two Foreign Languages', 'Yabancı Dil: İki Yabancı Dil Öğretmenliği', 'yabanci-dil-iki-yabanci-dil-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (228, 110, 'Философия -Религиоведение ', 'Философия-Дінтану', 'Philosophy-Religious Studies', 'Din Felsefesi', 'din-felsefesi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (229, 110, 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', 'din-bilimleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (230, 110, 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', 'din-bilimleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (231, 110, 'Психология-Религиоведение', 'Психология-Дінтану', 'Psychology-Religious Studies', 'Din Psikolojisi', 'din-psikolojisi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (232, 111, 'Теология', 'Теология', 'Theology', 'İlahiyat', 'ilahiyat', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (233, 111, 'Исламоведение', 'Исламтану', 'Islamic Studies', 'İslam Bilimleri', 'islam-bilimleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (234, 112, 'Религиоведение', 'Дінтану', 'Religious Studies', 'Din Bilimleri', 'din-bilimleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (235, 113, 'Теология', 'Теология', 'Theology', 'İlahiyat', 'ilahiyat', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (236, 114, 'Международные отношения', 'Халықаралық қатынастар', 'International Relations', 'Uluslararası İlişkiler', 'uluslararasi-iliskiler', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (237, 114, 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару', 'Public and Local administration', 'Kamu ve Yerel Yönetimi', 'kamu-ve-yerel-yonetimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (238, 115, 'Менеджмент', 'Менеджмент ', 'Management', 'İşletme', 'isletme', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (239, 115, 'Туризм', 'Туризм', 'Tourism', 'Turizm', 'turizm', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (241, 116, 'Учет и аудит', 'Есеп және аудит', 'Accounting and Audit', 'Muhasebe ve Denetim', 'muhasebe-ve-denetim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (242, 116, 'Финансы', 'Қаржы', 'Finance', 'Finans', 'finans', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (243, 116, 'Экономика', 'Экономика', 'Economics', 'Ekonomi ', 'ekonomi-', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (244, 117, 'Юриспруденция', 'Құқықтану', 'Jurisprudence', 'Hukuk', 'hukuk', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (245, 117, 'Правоохранительная деятельность', 'Құқыққорғау қызметі', 'Law enforcement ', 'Hukuk Hizmetleri', 'hukuk-hizmetleri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (246, 117, 'Международное право', 'Халықаралық құқық', 'International Law', 'Uluslararası Hukuk', 'uluslararasi-hukuk', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (247, 118, 'Политология', 'Саясаттану', 'Political Science ', 'Siyaset Bilimi', 'siyaset-bilimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (248, 118, 'Международные отношения', 'Халықаралық қатынастар', 'International Relations', 'Uluslararası İlişkiler', 'uluslararasi-iliskiler', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (249, 118, 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару', 'State and local government ', 'Kamu Yönetimi', 'kamu-yonetimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (250, 118, 'Управление человеческими ресурсами  ', 'Адам ресурстарын басқару', 'Human resource management', 'Insan kaynakları yönetimi', 'insan-kaynaklari-yonetimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (251, 119, 'Экономика', 'Экономика', 'Economics', 'Ekonomi', 'ekonomi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (252, 119, 'Учет и аудит', 'Есеп және аудит', 'Accounting and Audit', 'Muhasebe ve Denetim', 'muhasebe-ve-denetim', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (253, 119, 'Финансы ', 'Қаржы ', 'Finance', 'Finans', 'finans', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (254, 120, 'Менеджмент', 'Менеджмент', 'Management', 'İşletme', 'isletme', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (255, 120, 'Менеджмент в сфере здравоохранения 1', 'Денсаулық сақтау саласындағы менеджмент 1ж', '7M04160 Health Management 1', 'Sağlık İşletmeciliği', 'saglik-isletmeciligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (256, 120, 'Менеджмент в сфере образования 1', 'Білім беру саласындағы менеджмент 1ж', '7M04150 Education Management 1', 'Eğitim Yönetimi', 'egitim-yonetimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (257, 121, 'Право', 'Құқық', 'Law', 'Hukuk', 'hukuk', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (258, 122, 'Экономика', 'Экономика', 'Economics', 'Ekonomi', 'ekonomi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (259, 122, 'Финансы', 'Қаржы', 'Finance', 'Finans', 'finans', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (260, 123, 'Менеджмент', 'Менеджмент', 'Management', 'İşletme', 'isletme', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (261, 124, 'Государственное и местное управление', 'Мемлекеттік және жергілікті басқару ', 'State and local government ', 'Kamu ve Yerel Yönetimi', 'kamu-ve-yerel-yonetimi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (262, 125, 'Право', 'Құқық', 'Law', 'Hukuk', 'hukuk', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (263, 130, 'Экология', 'Экология', 'Ecology', 'Ekoloji', 'ekoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (264, 130, 'Химия', 'Химия', 'Chemistry', 'Kimya', 'kimya', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (265, 131, 'Физика', 'Физика', 'Physics', 'Fizik', 'fizik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (266, 132, 'Математика', 'Математика', 'Mathematics', 'Matematik', 'matematik', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (267, 132, 'Математическое и компьютерное моделирование', 'Математикалық және компьютерлік модельдеу', 'Mathematical and Computer Modeling', 'Matematiksel ve Bilgisayarda Modelleme', 'matematiksel-ve-bilgisayarda-modelleme', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (268, 133, 'Математика', 'Математика', 'Mathematics', 'Matematik Öğretmenliği', 'matematik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (269, 133, 'Математическое и компьютерное моделирование', 'Математикалық және компьютерлік модельдеу', 'Mathematical and computer modeling', 'Matematiksel ve Bilgisayarda Modelleme', 'matematiksel-ve-bilgisayarda-modelleme', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (270, 134, 'Физика', 'Физика', 'Physics', 'Fizik Öğretmenliği', 'fizik-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (271, 135, 'Педагогика и психология', 'Педагогика және психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji', 'pedagoji-ve-psikoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (272, 136, 'История', 'Тарих', 'History', 'Tarih Öğretmenliği', 'tarih-ogretmenligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (273, 143, 'Неврология взрослая, детская', 'Ересектердің, балалардың неврологиясы', 'Neurology adults, children ', 'Pediatrik Nöroloji , Çocuk Nörolojisi', 'pediatrik-noroloji-cocuk-norolojisi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (274, 143, 'Физическая медицина и реабилитация взрослая, детская', 'Ересектердің, балалардың физикалық медицина және реабилитациясы', 'Physical medicine and rehabilitation adults, children', 'Yetişkinlerde ve çocuklarda fiziksel tıp ve rehabilitasyon', 'yetiskinlerde-ve-cocuklarda-fiziksel-tip-ve-rehabilitasyon', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (275, 143, 'Психиатрия взрослая, детская', 'Ересектер мен балалар психиатриясы', 'Psychiatry  adults, children ', 'Psikiyatri', 'psikiyatri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (276, 144, 'Педиатрия', 'Педиатрия', 'Pediatrics', 'Pediatri', 'pediatri', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (277, 144, 'Неонатология', 'Неонатология', 'Neonatology', 'Neonatoloji', 'neonatoloji', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (278, 145, 'Терапевтическая стоматология', 'Терапиялық стоматология', 'Therapeutic dentistry', 'Terapötik diş hekimliği', 'terapotik-dis-hekimligi', NULL, NULL);
INSERT INTO `tb_birim_agaci_copy2` VALUES (279, 7, NULL, NULL, NULL, 'Ahmet Yesevi Meslek Yüksekokulu', 'ahmet-yesevi-meslek-yuksekokulu', 0, 0);

-- ----------------------------
-- Table structure for tb_birim_agaci_copy3
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_agaci_copy3`;
CREATE TABLE `tb_birim_agaci_copy3`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  `program_kodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_agaci_copy3
-- ----------------------------
INSERT INTO `tb_birim_agaci_copy3` VALUES (1, 0, 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'ahmet-yesevi-universitesi', 1, NULL, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (2, 1, 'Академиялық бөлім', 'Академическая единица', 'Academic Unit', 'Akademik Birimler', 'akademik-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (3, 1, NULL, NULL, 'Administrative Units', 'İdari Birimler', 'idari-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (4, 2, 'Факультет\r\n', 'Факультет', 'Faculty', 'Fakülteler', 'fakulteler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (5, 2, NULL, NULL, NULL, 'Enstitüler', 'enstituler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (6, 2, NULL, NULL, NULL, 'Merkezler', 'merkezler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (7, 2, NULL, NULL, NULL, 'Meslek Yüksekokulları', 'meslek-yuksekokullari', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy3` VALUES (8, 4, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği Fakültesi', 'dis-hekimligi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (9, 8, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (10, 9, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği ', 'dis-hekimligi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (11, 10, 'Стоматология (ВМ087)', 'Стоматология (ВМ087)', 'Dentistry', 'Diş Hekimliği', 'dis-hekimligi', 0, 0, '6B10189');
INSERT INTO `tb_birim_agaci_copy3` VALUES (12, 4, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', 'fen-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (13, 12, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (14, 13, 'Биология кафедрасы', 'Кафедра биологии', 'Department of Biology', 'Biyoloji Bölümü', 'biyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (15, 14, 'Биология (Жаратылыстану ғылымдары)', 'Биология (Естественные науки)', 'Biology ', 'Biyoloji', 'biyoloji', 0, 0, '6B05146');
INSERT INTO `tb_birim_agaci_copy3` VALUES (16, 14, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', 'biyoloji-ogretmenligi', 0, 0, '6B01513');
INSERT INTO `tb_birim_agaci_copy3` VALUES (17, 14, 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji ', 'biyoteknoloji', 0, 0, '6B05169');
INSERT INTO `tb_birim_agaci_copy3` VALUES (18, 13, 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', 'ekoloji-ve-kimya-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (19, 18, 'География (Педагогикалық ғылымдар)', 'География (Педагогические науки) ', 'Geography Teacher Education ', 'Coğrafya Öğretmenliği', 'cografya-ogretmenligi', 0, 0, '6B01514');
INSERT INTO `tb_birim_agaci_copy3` VALUES (20, 18, 'Экология ', 'Экология ', 'Ecology', 'Ekoloji ', 'ekoloji', 0, 0, '6B05247');
INSERT INTO `tb_birim_agaci_copy3` VALUES (21, 18, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğretmenliği ', 'kimya-ogretmenligi', 0, 0, '6B01512');
INSERT INTO `tb_birim_agaci_copy3` VALUES (22, 18, 'Химия-Биология (Педагогикалық ғылымдар)', 'Химии-биология (Педагогические науки) ', 'Chemistry-Biology Teacher Education ', 'Kimya-Biyoloji Öğretmenliği ', 'kimya-biyoloji-ogretmenligi', 0, 0, '6B01562');
INSERT INTO `tb_birim_agaci_copy3` VALUES (23, 13, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', 'fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (24, 23, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik ', 'fizik', 0, 0, '6B05348');
INSERT INTO `tb_birim_agaci_copy3` VALUES (25, 23, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', 'fizik-ogretmenligi', 0, 0, '6B01510');
INSERT INTO `tb_birim_agaci_copy3` VALUES (26, 13, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', 'matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (27, 26, 'Информатика, АКТ және робототехника (Педагогикалық ғылымдар)', 'Информатика, ИКТ и робототехника (Педагогические науки) ', 'Computer Science, ICT and Robotic Teacher Education ', 'Bilgi İşlem, Bilişim Teknolojileri ve Robotik Öğretmenliği ', 'bilgi-islem-bilisim-teknolojileri-ve-robotik-ogretmenligi', 0, 0, '6B01573');
INSERT INTO `tb_birim_agaci_copy3` VALUES (28, 26, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', 'bilgisayar-ogretmenligi', 0, 0, '6B01511');
INSERT INTO `tb_birim_agaci_copy3` VALUES (29, 26, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics', 'Matematik ', 'matematik', 0, 0, '6B05449');
INSERT INTO `tb_birim_agaci_copy3` VALUES (30, 26, 'Математика (Педагогикалық ғылымдар) ', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği ', 'matematik-ogretmenligi', 0, 0, '6B01509');
INSERT INTO `tb_birim_agaci_copy3` VALUES (31, 12, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (32, 31, 'Биология кафедрасы', 'Кафедра биологии', 'Department of Biology', 'Biyoloji Bölümü', 'biyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (33, 32, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', 'biyoloji-ogretmenligi', 0, 0, '7M01507');
INSERT INTO `tb_birim_agaci_copy3` VALUES (34, 31, 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', 'ekoloji-ve-kimya-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (35, 34, 'Экология ', 'Экология ', 'Ecology ', 'Ekoloji ', 'ekoloji', 0, 0, '7M05223');
INSERT INTO `tb_birim_agaci_copy3` VALUES (36, 34, 'Химия (Жаратылыстану ғылымдары)', 'Химия (Естественные науки)', 'Chemistry ', 'Kimya ', 'kimya', 0, 0, '7M05324');
INSERT INTO `tb_birim_agaci_copy3` VALUES (37, 34, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğetmenliği', 'kimya-ogetmenligi', 0, 0, '7M01535');
INSERT INTO `tb_birim_agaci_copy3` VALUES (38, 31, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', 'fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (39, 38, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik', 'fizik', 0, 0, '7M05325');
INSERT INTO `tb_birim_agaci_copy3` VALUES (40, 38, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', 'fizik-ogretmenligi', 0, 0, '7M01506');
INSERT INTO `tb_birim_agaci_copy3` VALUES (41, 31, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', 'matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (42, 41, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', 'bilgisayar-ogretmenligi', 0, 0, '7M01557');
INSERT INTO `tb_birim_agaci_copy3` VALUES (43, 41, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics ', 'Matematik ', 'matematik', 0, 0, '7M05426');
INSERT INTO `tb_birim_agaci_copy3` VALUES (44, 41, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği', 'matematik-ogretmenligi', 0, 0, '7M01547');
INSERT INTO `tb_birim_agaci_copy3` VALUES (45, 41, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', 'matematiksel-ve-bilgisayarda-modelleme', 0, 0, '7M06129');
INSERT INTO `tb_birim_agaci_copy3` VALUES (46, 12, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (47, 46, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', 'fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (48, 47, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics ', 'Fizik Öğretmenliği ', 'fizik-ogretmenligi', 0, 0, '8D01503');
INSERT INTO `tb_birim_agaci_copy3` VALUES (49, 46, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', 'matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (50, 49, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science ', 'Bilgisayar Bilimleri ', 'bilgisayar-bilimleri', 0, 0, '8D01516');
INSERT INTO `tb_birim_agaci_copy3` VALUES (51, 49, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics ', 'Matematik Öğretmenliği ', 'matematik-ogretmenligi', 0, 0, '8D01502');
INSERT INTO `tb_birim_agaci_copy3` VALUES (52, 49, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', 'matematiksel-ve-bilgisayarda-modelleme', 0, 0, '8D06109');
INSERT INTO `tb_birim_agaci_copy3` VALUES (53, 4, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', 'filoloji-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (54, 53, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (55, 54, 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', 'ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (56, 55, 'Шетел филологиясы (ағылшын тілі)', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', 'ingiliz-dili-ve-edebiyati', 0, 0, '6B02332');
INSERT INTO `tb_birim_agaci_copy3` VALUES (57, 55, 'Аударма ісі: ағылшын тілі', 'Переводческое дело:английский язык', 'Translation Studies: the English Language ', 'İngilizce Mütercim ve Tercümanlık ', 'ingilizce-mutercim-ve-tercumanlik', 0, 0, '6B02335');
INSERT INTO `tb_birim_agaci_copy3` VALUES (58, 54, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (59, 58, 'Филология: қазақ филологиясы', 'Филология: казахская филология', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı ', 'kazak-dili-ve-edebiyati', 0, 0, '6B02336');
INSERT INTO `tb_birim_agaci_copy3` VALUES (60, 58, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği ', 'kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01716');
INSERT INTO `tb_birim_agaci_copy3` VALUES (61, 54, 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', 'rus-dili-ve-edebiyati-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (62, 61, 'Орыс тілі мен әдебиеті', 'Русский язык и литература', 'Russian Language and Literature ', 'Rus Dili ve Edebiyatı Öğretmenliği ', 'rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01717');
INSERT INTO `tb_birim_agaci_copy3` VALUES (63, 61, 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті ', 'Русский язык и литература с нерусским языком обучения ', 'Russian Language and Literature at Schools with non-Russian Training', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı Öğretmenliği ', 'ruscada-egitim-vermeyen-okullarda-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01764');
INSERT INTO `tb_birim_agaci_copy3` VALUES (64, 54, 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', 'turk-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (65, 64, 'Шетел филологиясы (түрік тілі)', 'Иностранная филология (турецский язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', 'turk-dili-ve-edebiyati', 0, 0, '6B02333');
INSERT INTO `tb_birim_agaci_copy3` VALUES (66, 64, 'Түркітану ', 'Тюркология ', 'Turkology ', 'Türkoloji ', 'turkoloji', 0, 0, '6B02267');
INSERT INTO `tb_birim_agaci_copy3` VALUES (67, 54, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', 'yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (68, 67, 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Иностранный язык: два иностранных языка (английский-китайский)', 'Foreign language: two foreign languages (English - Chinese) ', 'İngilizce Çince Öğretmenliği ', 'ingilizce-cince-ogretmenligi', 0, 0, '6B01718');
INSERT INTO `tb_birim_agaci_copy3` VALUES (69, 67, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'İngilizce Türkçe Öğretmenliği', 'ingilizce-turkce-ogretmenligi', 0, 0, '6B01719');
INSERT INTO `tb_birim_agaci_copy3` VALUES (70, 53, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (71, 70, 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', 'ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (72, 71, 'Шетел филологиясы: Ағылшын тілі', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', 'ingiliz-dili-ve-edebiyati', 0, 0, '7M02313');
INSERT INTO `tb_birim_agaci_copy3` VALUES (73, 70, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (74, 73, 'Филология', 'Филология', 'Philology', 'Dil Bilimi ', 'dil-bilimi', 0, 0, '7M02315');
INSERT INTO `tb_birim_agaci_copy3` VALUES (75, 73, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature', 'Kazak Dili ve Edebiyatı Öğretmenliği ', 'kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01737');
INSERT INTO `tb_birim_agaci_copy3` VALUES (76, 70, 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', 'rus-dili-ve-edebiyati-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (77, 76, 'Орыс тілі мен әдебиеті', 'Русский язык и литература ', 'Russian Language and Literature', 'Rus Dili ve Edebiyatı Öğretmenliği ', 'rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01738');
INSERT INTO `tb_birim_agaci_copy3` VALUES (78, 70, 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', 'turk-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (79, 78, 'Шетел филологиясы: Түрік тілі', 'Иностранная филология (турецкий язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', 'turk-dili-ve-edebiyati', 0, 0, '7M02314');
INSERT INTO `tb_birim_agaci_copy3` VALUES (80, 78, 'Түркітану', 'Тюркология', 'Turkology', 'Türkoloji ', 'turkoloji', 0, 0, '7M02212');
INSERT INTO `tb_birim_agaci_copy3` VALUES (81, 70, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical foreign languages', 'Yabancı Diller Eğitimi Bölümü', 'yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (82, 81, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'English Language and Literature', 'İngilizce Türkçe Öğretmenliği', 'ingilizce-turkce-ogretmenligi', 0, 0, '7M01708');
INSERT INTO `tb_birim_agaci_copy3` VALUES (83, 53, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (84, 83, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', 'kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (85, 84, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', 'kazak-dili-ve-edebiyati', 0, 0, '8D01705');
INSERT INTO `tb_birim_agaci_copy3` VALUES (86, 83, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', 'yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (87, 86, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', 'kazak-dili-ve-edebiyati', 0, 0, '8D01713');
INSERT INTO `tb_birim_agaci_copy3` VALUES (88, 4, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', 'iktisadi-idari-bilimler-ve-hukuk-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (89, 88, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (90, 89, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (91, 90, 'Экономика бакалавриат бағдарламасы', 'Экономика программа бакалавриата', 'Economics ', 'Ekonomi ', 'ekonomi', 0, 0, '6B04142');
INSERT INTO `tb_birim_agaci_copy3` VALUES (92, 90, 'Қаржы бакалавриат бағдарламасы', 'Финансы программа бакалавриата', 'Finance ', 'Finans ', 'finans', 0, 0, '6B04144');
INSERT INTO `tb_birim_agaci_copy3` VALUES (93, 90, 'Есеп және аудит бакалавриат бағдарламасы', 'Учет и аудит программа бакалавриата', 'Accounting and Audit ', 'Muhasebe ve Denetim ', 'muhasebe-ve-denetim', 0, 0, '6B04143');
INSERT INTO `tb_birim_agaci_copy3` VALUES (94, 89, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (95, 94, 'Құқықтану бакалавриат бағдарламасы', 'Юриспруденция программа бакалавриата', 'Law ', 'Hukuk ', 'hukuk', 0, 0, '6B04245');
INSERT INTO `tb_birim_agaci_copy3` VALUES (96, 94, 'Құқыққорғау қызметі бакалавриат бағдарламасы', 'Правоохранительная деятельность (программа бакалавриата)', 'Law Enforcement', 'Hukuk Hizmetleri ', 'hukuk-hizmetleri', 0, 0, '6B04282');
INSERT INTO `tb_birim_agaci_copy3` VALUES (97, 94, 'Халықаралық құқық бакалавриат бағдарламасы', 'Международное право программа бакалавриата', 'International Law', 'Uluslararası Hukuk', 'uluslararasi-hukuk', 0, 0, '6B04281');
INSERT INTO `tb_birim_agaci_copy3` VALUES (98, 89, 'Менеджмент және туризм бөлімі', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', 'isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (99, 98, 'Менеджмент бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'Management ', 'İşletme ', 'isletme', 0, 0, '6B04140');
INSERT INTO `tb_birim_agaci_copy3` VALUES (100, 98, 'Туризм бакалавриат бағдарламасы', 'Туризм программа бакалавриата', 'Tourism', 'Turizm', 'turizm', 0, 0, '6B11157');
INSERT INTO `tb_birim_agaci_copy3` VALUES (101, 98, 'Мейрамхана ісі және қонақ үй бизнесі бакалавриат бағдарламасы', 'Ресторанное дело и гостиничный бизнес программа бакалавриата', 'Restaurant and Hotel Business', 'Turizm ve Otel İşletmeciliği ', 'turizm-ve-otel-isletmeciligi', 0, 0, '6B11180');
INSERT INTO `tb_birim_agaci_copy3` VALUES (102, 89, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public administration and international relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (103, 102, 'Мемлекеттік және жергілікті басқару бакалавриат бағдарламасы', 'Государственное и местное управление программа бакалавриата', 'Public and Local administration ', 'Kamu ve Yerel Yönetim ', 'kamu-ve-yerel-yonetim', 0, 0, '6B04141');
INSERT INTO `tb_birim_agaci_copy3` VALUES (104, 102, 'Халықаралық қатынастар бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'International Relations', 'Uluslararası İlişkiler ', 'uluslararasi-iliskiler', 0, 0, '6B03138');
INSERT INTO `tb_birim_agaci_copy3` VALUES (105, 88, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (106, 105, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (107, 106, 'Экономика магистратура бағдарламасы', 'Экономика программа магистратуры', 'Economics. Program', 'Ekonomi ', 'ekonomi', 0, 0, '7M04118');
INSERT INTO `tb_birim_agaci_copy3` VALUES (108, 106, 'Қаржы магистратура бағдарламасы', 'Финансы программа магистратуры', 'Finance. Program', 'Finans ', 'finans', 0, 0, '7M04141');
INSERT INTO `tb_birim_agaci_copy3` VALUES (109, 106, 'Есеп және аудит магистратура бағдарламасы', 'Учет и аудит (программа магистратуры)', 'Accounting and Audit. Program', 'Muhasebe ve Denetim ', 'muhasebe-ve-denetim', 0, 0, '7M04120');
INSERT INTO `tb_birim_agaci_copy3` VALUES (110, 105, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (111, 110, 'Құқық магистратура бағдарламасы', 'Право программа магистратуры', 'Law. Program', 'Hukuk ', 'hukuk', 0, 0, '7M04222');
INSERT INTO `tb_birim_agaci_copy3` VALUES (112, 105, 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', 'isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (113, 112, 'Білім беру саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере образования программа магистратуры', 'Education Management. Program', 'Eğitim Yönetimi ', 'egitim-yonetimi', 0, 0, '7M04150');
INSERT INTO `tb_birim_agaci_copy3` VALUES (114, 112, 'Менеджмент магистратура бағдарламасы', 'Менеджмент программа магистратуры', 'Management. Program', 'İşletme ', 'isletme', 0, 0, '7M04119');
INSERT INTO `tb_birim_agaci_copy3` VALUES (115, 112, 'Денсаулық сақтау саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере здравоохранения программа магистратуры', 'Health Management. Program', 'Sağlık İşletmeciliği ', 'saglik-isletmeciligi', 0, 0, '7M04160');
INSERT INTO `tb_birim_agaci_copy3` VALUES (116, 105, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (117, 116, 'Адам ресурстарын басқару магистратура бағдарламасы', 'Управление человеческими ресурсами программа магистратуры', 'Human resource management. Program', 'Insan kaynakları yönetimi ', 'insan-kaynaklari-yonetimi', 0, 0, '7M04143');
INSERT INTO `tb_birim_agaci_copy3` VALUES (118, 116, 'Мемлекеттік және жергілікті басқару магистратура бағдарламасы', 'Государственное и местное управление программа магистратуры', 'State and local Administration. Program', 'Kamu Yönetimi ', 'kamu-yonetimi', 0, 0, '7M04121');
INSERT INTO `tb_birim_agaci_copy3` VALUES (119, 116, 'Саясаттану магистратура бағдарламасы', 'Политология (программа магистратуры)', 'Political Science. Program', 'Siyaset Bilimi ', 'siyaset-bilimi', 0, 0, '7M03117');
INSERT INTO `tb_birim_agaci_copy3` VALUES (120, 116, 'Халықаралық қатынастар магистратура бағдарламасы', 'Международные отношения программа магистратуры', 'International Relations. Program', 'Uluslararası İlişkiler ', 'uluslararasi-iliskiler', 0, 0, '7M03140');
INSERT INTO `tb_birim_agaci_copy3` VALUES (121, 88, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (122, 121, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', 'ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (123, 122, 'Экономика докторантура бағдарламасы', 'Экономика программа докторантуры', 'Economics Program', 'Ekonomi ', 'ekonomi', 0, 0, '8D04106');
INSERT INTO `tb_birim_agaci_copy3` VALUES (124, 122, 'Қаржы докторантуры бағдарламасы', 'Финансы программа докторантуры', 'Finance Program', 'Finans ', 'finans', 0, 0, '8D04117');
INSERT INTO `tb_birim_agaci_copy3` VALUES (125, 121, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', 'hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (126, 125, 'Құқық докторантура бағдарламасы', 'Право программа докторантуры', 'Law Program', 'Hukuk ', 'hukuk', 0, 0, '8D04208');
INSERT INTO `tb_birim_agaci_copy3` VALUES (127, 121, 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', 'isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (128, 127, 'Менеджмент докторантура бағдарламасы', 'Менеджмент программа докторантуры', 'Management Program', 'İşletme ', 'isletme', 0, 0, '8D04107');
INSERT INTO `tb_birim_agaci_copy3` VALUES (129, 121, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', 'kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (130, 129, 'Мемлекеттік және жергілікті басқару докторантура бағдарламасы', 'Государственное и местное управление программа докторантуры', 'State and Local Administration Program', 'Kamu ve Yerel Yönetim ', 'kamu-ve-yerel-yonetim', 0, 0, '8D04114');
INSERT INTO `tb_birim_agaci_copy3` VALUES (131, 4, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', 'ilahiyat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (132, 131, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (133, 132, 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', 'din-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (134, 133, 'Дінтану (Педагогикалық ғылымдар)', 'Религиоведение (Педагогические науки)', 'Religious Studies Teacher Education ', 'Din Bilgisi Öğretmenliği', 'din-bilgisi-ogretmenligi', 0, 0, '6B01683');
INSERT INTO `tb_birim_agaci_copy3` VALUES (135, 133, 'Дінтану', 'Религиоведение', 'Religious Studies', 'Din Bilimleri', 'din-bilimleri', 0, 0, '6B02228');
INSERT INTO `tb_birim_agaci_copy3` VALUES (136, 133, 'Психология-Дінтану', 'Психология-Религиоведение', 'Psychology-Religious Studies ', 'Din Psikolojisi ', 'din-psikolojisi', 0, 0, '6В03187');
INSERT INTO `tb_birim_agaci_copy3` VALUES (137, 132, 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', 'ilahiyat-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (138, 137, 'Теология', 'Теология', 'Theology', 'İlahiyat', 'ilahiyat', 0, 0, '6B02229');
INSERT INTO `tb_birim_agaci_copy3` VALUES (139, 137, 'Исламтану', 'Исламоведение', 'Islamic Studies', 'İslam Bilimleri', 'islam-bilimleri', 0, 0, '6B02266');
INSERT INTO `tb_birim_agaci_copy3` VALUES (140, 132, 'Қоғамдық ғылымдар кафедрасы', 'Кафедра общественных наук', 'Department of Community Sciences', 'Toplum Bilimleri Bölümü', 'toplum-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (141, 140, 'Философия-Дінтану', 'Философия -Религиоведение ', 'Philosophy-Religious Studies', 'Din Felsefesi', 'din-felsefesi', 0, 0, '6В02286');
INSERT INTO `tb_birim_agaci_copy3` VALUES (142, 131, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (143, 142, 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', 'din-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (144, 143, 'Дінтану', 'Религиоведение', 'Religious Studies ', 'Din Bilimleri ', 'din-bilimleri', 0, 0, '7M02211');
INSERT INTO `tb_birim_agaci_copy3` VALUES (145, 142, 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', 'ilahiyat-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (146, 145, 'Теология', 'Теология', 'Theology ', 'İlahiyat ', 'ilahiyat', 0, 0, '7M02262');
INSERT INTO `tb_birim_agaci_copy3` VALUES (147, 4, 'Әлеуметтік - гуманитарлық ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', 'insan-ve-toplum-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (148, 147, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (149, 148, 'Журналистика кафедрасы', 'Кафедра журналистики', 'Department of Journalism', 'Gazetecilik Bölümü', 'gazetecilik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (150, 149, 'Сандық медия және телерадиожурналистика', 'Цифровая медиа и телерадиожурналистика', 'Digital Media and TV, Radio Journalism', 'Dijital Medya, Radyo ve Televizyon Gazeteciliği ', 'dijital-medya-radyo-ve-televizyon-gazeteciligi', 0, 0, '6B03279');
INSERT INTO `tb_birim_agaci_copy3` VALUES (151, 149, 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', 'gazetecilik', 0, 0, '6B03239');
INSERT INTO `tb_birim_agaci_copy3` VALUES (152, 148, 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', 'okul-oncesi-ogretmenligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (153, 152, 'Мектепке дейінгі оқыту және тәрбиелеу', 'Дошкольное обучение и воспитание', 'Pre-School Education and Upbringing ', 'Okul Öncesi Öğretmenliği ', 'okul-oncesi-ogretmenligi', 0, 0, '6B01202');
INSERT INTO `tb_birim_agaci_copy3` VALUES (154, 152, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', 'sinif-ogretmenligi', 0, 0, '6B01303');
INSERT INTO `tb_birim_agaci_copy3` VALUES (155, 148, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Pedagogy and Psychology', 'Pedagoji ve Psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (156, 155, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'pedagoji-ve-psikoloji', 0, 0, '6B01101');
INSERT INTO `tb_birim_agaci_copy3` VALUES (157, 148, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', 'tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (158, 157, 'Тарих', 'История', 'History ', 'Tarih ', 'tarih', 0, 0, '6B02231');
INSERT INTO `tb_birim_agaci_copy3` VALUES (159, 157, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', 'tarih-ogretmenligi', 0, 0, '6B01615');
INSERT INTO `tb_birim_agaci_copy3` VALUES (160, 147, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (161, 160, 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', 'okul-oncesi-ogretmenligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (162, 161, 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Педагогика дошкольного воспитания и обучения', 'Pedagogy of the Pre-school Education and Upbringing', 'Okul Öncesi Öğretmenliği ', 'okul-oncesi-ogretmenligi', 0, 0, '7M01202');
INSERT INTO `tb_birim_agaci_copy3` VALUES (163, 161, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', 'sinif-ogretmenligi', 0, 0, '7M01303');
INSERT INTO `tb_birim_agaci_copy3` VALUES (164, 160, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (165, 164, 'Педагогика және психология', 'Педагогика и психология', 'Pedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'pedagoji-ve-psikoloji', 0, 0, '7M01101');
INSERT INTO `tb_birim_agaci_copy3` VALUES (166, 160, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', 'tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (167, 166, 'Тарих', 'История', 'History', 'Tarih ', 'tarih', 0, 0, '7M02210');
INSERT INTO `tb_birim_agaci_copy3` VALUES (168, 147, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (169, 168, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', 'pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (170, 169, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', 'pedagoji-ve-psikoloji', 0, 0, '8D01101');
INSERT INTO `tb_birim_agaci_copy3` VALUES (171, 168, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', 'tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (172, 171, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', 'tarih-ogretmenligi', 0, 0, '8D01604');
INSERT INTO `tb_birim_agaci_copy3` VALUES (173, 4, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', 'lisansustu-tip-egitimi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (174, 173, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', 'tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (175, 174, 'Жұқпалы аурулар және фтизиатрия кафедрасы', 'Кафедра инфекционных заболеваний и фтизиатрии', 'Department of Infectious diseases and phthisiology', 'Bulaşıcı Hastalıklar ve Fitizyoloji Bölümü', 'bulasici-hastaliklar-ve-fitizyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (176, 175, 'Ересектердің, балалардың инфекциялық аурулары ', 'Инфекционные болезни взрослые, детские ', 'Infectious Diseases ', 'Bulaşıcı Hastalıkları', 'bulasici-hastaliklari', 0, 0, '7R01123');
INSERT INTO `tb_birim_agaci_copy3` VALUES (177, 175, 'Ересектердің, балалардың дерматовенерологиясы ', 'Дерматовенерология взрослая, детская', 'Dermatovenerology ', 'Dermatoveneroloji', 'dermatoveneroloji', 0, 0, '7R01122');
INSERT INTO `tb_birim_agaci_copy3` VALUES (178, 174, 'Хирургия және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', 'cerrahi-ve-anesteziyoloji-resusitasyon-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (179, 178, 'Ересектердің, балалардың анестезиология және реаниматологиясы ', 'Анестезиология и реаниматология взрослая, детская ', 'Anesthesiology and resuscitation ', 'Anesteziyoloji ve Resüsitasyon', 'anesteziyoloji-ve-resusitasyon', 0, 0, '7R01112');
INSERT INTO `tb_birim_agaci_copy3` VALUES (180, 178, 'Ересектердің, балалардың ангиохирургиясы ', 'Ангиохирургия взрослая, детская ', 'Angiosurgery', 'Anjio Cerrahi', 'anjio-cerrahi', 0, 0, '7R01128');
INSERT INTO `tb_birim_agaci_copy3` VALUES (181, 178, 'Ересектердің, балалардың нейрохирургиясы ', 'Нейрохирургия взрослая, детская ', 'Neurosurgery ', 'Beyin Cerrahisi', 'beyin-cerrahisi', 0, 0, '7R01109');
INSERT INTO `tb_birim_agaci_copy3` VALUES (182, 178, 'Ересектердің, балалардың бет-жақ хирургиясы ', 'Челюстно-лицевая хирургия взрослая, детская', 'Maxillofacial surgery', 'Çene-Yüz Cerrahisi', 'cene-yuz-cerrahisi', 0, 0, '7R01131');
INSERT INTO `tb_birim_agaci_copy3` VALUES (183, 178, 'Балалар хирургиясы ', 'Детская хирургия ', 'Pediatric surgery', 'Çocuk Cerrahisi', 'cocuk-cerrahisi', 0, 0, '7R01118');
INSERT INTO `tb_birim_agaci_copy3` VALUES (184, 178, 'Жалпы хирургия ', 'Общая хирургия ', 'General surgery', 'Genel Cerrahi', 'genel-cerrahi', 0, 0, '7R01103');
INSERT INTO `tb_birim_agaci_copy3` VALUES (185, 178, 'Ересектердің, балалардың офтальмологиясы ', 'Офтальмология взрослая, детская', 'Ophthalmology', 'Oftalmoloji', 'oftalmoloji', 0, 0, '7R01111');
INSERT INTO `tb_birim_agaci_copy3` VALUES (186, 174, 'Ішкі аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of Internal diseases', 'Dahiliye Bölümü', 'dahiliye-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (187, 186, 'Ересектердің, балалардың аллергология және иммунологиясы', 'Аллергология и иммунология взрослая, детская ', 'Allergology and immunology ', 'Alerji ve İmmünoloji', 'alerji-ve-immunoloji', 0, 0, '7R01126');
INSERT INTO `tb_birim_agaci_copy3` VALUES (188, 186, 'Ересектердің, балалардың эндокринологиясы ', 'Эндокринология взрослая, детская ', 'Endocrinology ', 'Endokrinoloji ', 'endokrinoloji', 0, 0, '7R01108');
INSERT INTO `tb_birim_agaci_copy3` VALUES (189, 186, 'Ересектердің, балалардың гастроэнтерологиясы ', 'Гастроэнтерология взрослая, детская ', 'Gastroenterology ', 'Gastroenteroloji', 'gastroenteroloji', 0, 0, '7R01110');
INSERT INTO `tb_birim_agaci_copy3` VALUES (190, 186, 'Ересектердің, балалардың пульмонологиясы ', 'Пульмонология взрослая, детская ', 'Pulmonology ', 'Göğüs Hastalıkları', 'gogus-hastaliklari', 0, 0, '7R01127');
INSERT INTO `tb_birim_agaci_copy3` VALUES (191, 186, 'Ересектердің, балалардың кардиологиясы', 'Кардиология взрослая, детская ', 'Cardiology ', 'Kardiyoloji', 'kardiyoloji', 0, 0, '7R01107');
INSERT INTO `tb_birim_agaci_copy3` VALUES (192, 186, 'Терапия', 'Терапия ', 'Therapy', 'Terapi', 'terapi', 0, 0, '7R01105');
INSERT INTO `tb_birim_agaci_copy3` VALUES (193, 174, 'Жалпы дәрігерлік практика № 1 кафедрасы', 'Кафедра общей врачебной практики № 1', 'Department of General medical practice № 1', 'Genel Tıbbi Uygulamalar № 1 Bölümü', 'genel-tibbi-uygulamalar-1-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (194, 193, 'Радиология ', 'Радиология', 'Radiology', 'Radyoloji Teşhisi', 'radyoloji-teshisi', 0, 0, '7R01114');
INSERT INTO `tb_birim_agaci_copy3` VALUES (195, 174, 'Жалпы дәрігерлік практика № 2 кафедрасы', 'Кафдера общей врачебной практики № 2', 'Department of General medical practice № 2', 'Genel Tıbbi Uygulamalar № 2 Bölümü', 'genel-tibbi-uygulamalar-2-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (196, 195, 'Отбасылық медицина ', 'Семейная медицина', 'Primary Care Provider ', 'Aile Hekimliği ', 'aile-hekimligi', 0, 0, '7R01106');
INSERT INTO `tb_birim_agaci_copy3` VALUES (197, 195, 'Клиникалық фармакология ', 'Клиническая фармакология ', 'Clinical Pharmacology', 'Klinik Farmakoloji', 'klinik-farmakoloji', 0, 0, '7R01116');
INSERT INTO `tb_birim_agaci_copy3` VALUES (198, 195, 'Патологиялық анатомия ', 'Патологическая анатомия ', 'Pathological anatomy', 'Patolojik Anatomi', 'patolojik-anatomi', 0, 0, '7R01129');
INSERT INTO `tb_birim_agaci_copy3` VALUES (199, 174, 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', 'noroloji-psikiyatri-narkoloji-bilimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (200, 199, 'Ересектердің, балалардың физикалық медицина және реабилитациясы ', 'Физическая медицина и реабилитация взрослая, детская ', 'Physical medicine and rehabilitation', 'Fiziksel Tıp ve Rehabilitasyon', 'fiziksel-tip-ve-rehabilitasyon', 0, 0, '7R01117');
INSERT INTO `tb_birim_agaci_copy3` VALUES (201, 199, 'Ересектердің, балалардың неврологиясы', 'Неврология взрослая, детская ', 'Neurology ', 'Nöroloji', 'noroloji', 0, 0, '7R01104');
INSERT INTO `tb_birim_agaci_copy3` VALUES (202, 199, 'Ересектер мен балалар психиатриясы ', 'Психиатрия взрослая, детская ', 'Psychiatry ', 'Psikiyatri', 'psikiyatri', 0, 0, '7R01113');
INSERT INTO `tb_birim_agaci_copy3` VALUES (203, 174, 'Акушерлік гинекология кафедрасы', 'Кафедра акушерской гинекологии', 'Department of Obstetric gynecology', 'Obstetrik Jinekoloji Bölümü', 'obstetrik-jinekoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (204, 203, 'Ересектердің, балалардың акушерия және гинекологиясы ', 'Акушерство и гинекология взрослая, детская', 'Obstetrics and Gynecology ', 'Kadın Hastalıkları ve Jinekoloji ', 'kadin-hastaliklari-ve-jinekoloji', 0, 0, '7R01102');
INSERT INTO `tb_birim_agaci_copy3` VALUES (205, 174, 'Профилактикалық медицина және стоматологиялық пәндер кафедрасы', 'Кафедра профилактической медицины и стоматологических дисциплин', 'Department of Preventive medicine and dental disciplines', 'Önleyici Tıp ve Diş Hekimliği Disiplinleri Bölümü', 'onleyici-tip-ve-dis-hekimligi-disiplinleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (206, 205, 'Терапиялық стоматология ', 'Терапевтическая стоматология ', 'Therapeutic dentistry', 'Terapötik Diş Hekimliği', 'terapotik-dis-hekimligi', 0, 0, '7R01130');
INSERT INTO `tb_birim_agaci_copy3` VALUES (207, 174, 'Арнайы хирургиялық пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', 'ozel-cerrahi-disiplinler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (208, 207, 'Ересектердің, балалардың кардиохирургиясы ', 'Кардиохирургия взрослая, детская ', 'Cardiac surgery', 'Kalp Damar Cerrahisi', 'kalp-damar-cerrahisi', 0, 0, '7R01115');
INSERT INTO `tb_birim_agaci_copy3` VALUES (209, 207, 'Ересектердің, балалардың оториноларингологиясы ', 'Оториноларингология взрослая, детская', 'Otorhinolaryngology ', 'Kulak Burun Boğaz', 'kulak-burun-bogaz', 0, 0, '7R01119');
INSERT INTO `tb_birim_agaci_copy3` VALUES (210, 207, 'Ересектердің онкологиясы ', 'Онкология взрослая', 'Adult oncology ', 'Onkoloji', 'onkoloji', 0, 0, '7R01124');
INSERT INTO `tb_birim_agaci_copy3` VALUES (211, 207, 'Ересектердің, балалардың травматология-ортопедиясы ', 'Травматология-ортопедия взрослая, детская ', 'Traumatology-orthopedics', 'Travmatoloji ve Ortopedi', 'travmatoloji-ve-ortopedi', 0, 0, '7R01120');
INSERT INTO `tb_birim_agaci_copy3` VALUES (212, 207, 'Ересектердің, балалардың урология және андрологиясы ', 'Урология и андрология взрослая, детская ', 'Urology and andrology', 'Üroloji ve Androloji', 'uroloji-ve-androloji', 0, 0, '7R01121');
INSERT INTO `tb_birim_agaci_copy3` VALUES (213, 174, 'Педиатрия кафедрасы', 'Кафедра педиатрии', 'Department of Pediatrics', 'Pediatri Bölümü', 'pediatri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (214, 213, 'Неонатология ', 'Неонатология ', 'Neonatology', 'Neonatoloji', 'neonatoloji', 0, 0, '7R01125');
INSERT INTO `tb_birim_agaci_copy3` VALUES (215, 213, 'Педиатрия ', 'Педиатрия ', 'Pediatrics', 'Pediatri', 'pediatri', 0, 0, '7R01101');
INSERT INTO `tb_birim_agaci_copy3` VALUES (216, 4, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', 'muhendislik-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (217, 216, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (218, 217, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (219, 218, 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Обработка информации и визуализация данных ', 'Information Processing and Data Visualization', 'Bilgi Yönetimi ve Veri Görselleştirme', 'bilgi-yonetimi-ve-veri-gorsellestirme', 0, 0, '6B06181');
INSERT INTO `tb_birim_agaci_copy3` VALUES (220, 218, 'Компьютерлік инженерия ', 'Компьютерная инженерия ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', 'bilgisayar-muhendisligi', 0, 0, '6B06182');
INSERT INTO `tb_birim_agaci_copy3` VALUES (221, 218, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'bilisim-sistemleri', 0, 0, '6B06151');
INSERT INTO `tb_birim_agaci_copy3` VALUES (222, 217, 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', 'elektrik-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (223, 222, 'Электр энергетика', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', 'elektrik-enerjisi-muhendisligi', 0, 0, '6B07153');
INSERT INTO `tb_birim_agaci_copy3` VALUES (224, 222, 'Машина жасау', 'Машиностроение', 'Mechanical Engineering', 'Makine Mühendisliği ', 'makine-muhendisligi', 0, 0, '6B07189');
INSERT INTO `tb_birim_agaci_copy3` VALUES (225, 222, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Kontrol', 'otomasyon-ve-kontrol', 0, 0, '6B07154');
INSERT INTO `tb_birim_agaci_copy3` VALUES (226, 216, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (227, 226, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (228, 227, 'Информатика (Жаратылыстану ғылымдары)', 'Информатика (Педагогические науки) ', 'Computer Science', 'Bilgisayar Mühendisliği ', 'bilgisayar-muhendisligi', 0, 0, '7M06127');
INSERT INTO `tb_birim_agaci_copy3` VALUES (229, 227, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'bilisim-sistemleri', 0, 0, '7M06128');
INSERT INTO `tb_birim_agaci_copy3` VALUES (230, 226, 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', 'elektrik-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (231, 230, 'Электр энергетикасы', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', 'elektrik-enerjisi-muhendisligi', 0, 0, '7M07130');
INSERT INTO `tb_birim_agaci_copy3` VALUES (232, 230, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Yönetim ', 'otomasyon-ve-yonetim', 0, 0, '7M07158');
INSERT INTO `tb_birim_agaci_copy3` VALUES (233, 216, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (234, 233, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', 'bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (235, 234, 'Ақпараттық жүйелер ', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', 'bilisim-sistemleri', 0, 0, '8D06115');
INSERT INTO `tb_birim_agaci_copy3` VALUES (236, 4, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', 'spor-ve-sanat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (237, 236, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (238, 237, 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', 'beden-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (239, 238, 'Денешынықтыру және спорт', 'Физическая культура и спорт', 'Physical Education and Sports', 'Beden Eğitimi ve Spor Öğretmenliği', 'beden-egitimi-ve-spor-ogretmenligi', 0, 0, '6B01405');
INSERT INTO `tb_birim_agaci_copy3` VALUES (240, 238, 'Дене шынықтыру және бастапқы әскери дайындық', 'Физическая культура и начальная военная подготовка', 'Physical Education and Initial Military Training', 'Beden Eğitimi ve Temel Askeri Hazırlık Öğretmenliği ', 'beden-egitimi-ve-temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01485');
INSERT INTO `tb_birim_agaci_copy3` VALUES (241, 238, 'Бастапқы әскери дайындық', 'Начальная военная подготовка', 'Basic Military Training', 'Temel Askeri Hazırlık Öğretmenliği ', 'temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01404');
INSERT INTO `tb_birim_agaci_copy3` VALUES (242, 237, 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', 'guzel-sanatlar-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (243, 242, 'Сән өнері', 'Декоративное искусство', 'Decorative Art', 'Dekoratif Sanatı', 'dekoratif-sanati', 0, 0, '6B02125');
INSERT INTO `tb_birim_agaci_copy3` VALUES (244, 242, 'Сәндік-қолданбалы өнері', 'Декоративно-прикладное искусство', 'Decorative and Applied Art', 'Dekoratif Sanatlar', 'dekoratif-sanatlar', 0, 0, '6B02184');
INSERT INTO `tb_birim_agaci_copy3` VALUES (245, 242, 'Кәсіптік оқыту', 'Профессиональное обучение', 'Professional Training', 'Mesleki Eğitim Öğretmenliği ', 'mesleki-egitim-ogretmenligi', 0, 0, '6B01407');
INSERT INTO `tb_birim_agaci_copy3` VALUES (246, 242, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher Training in Art Work and Technical Drawing', 'Resim Öğretmenliği ', 'resim-ogretmenligi', 0, 0, '6B01408');
INSERT INTO `tb_birim_agaci_copy3` VALUES (247, 242, 'Көркем еңбек және графикалық жобалау ', 'Художественный труд и графическое проектирование ', 'Artistic Work and Graphic Design', 'Sanatsal Çalışma ve Grafik Çizim Öğretmenliği ', 'sanatsal-calisma-ve-grafik-cizim-ogretmenligi', 0, 0, '6B01478');
INSERT INTO `tb_birim_agaci_copy3` VALUES (248, 242, 'Дизайн', 'Дизайн', 'Design', 'Tasarım', 'tasarim', 0, 0, '6B02126');
INSERT INTO `tb_birim_agaci_copy3` VALUES (249, 237, 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', 'sahne-sanatlari-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (250, 249, 'Дәстүрлі музыка өнері (Халық әні)', 'Традиционное музыкальное искусство(Народное пение)', 'Traditional Music Art', 'Geleneksel Müzik Sanatı', 'geleneksel-muzik-sanati', 0, 0, '6B02122');
INSERT INTO `tb_birim_agaci_copy3` VALUES (251, 249, 'Хореография', 'Хореография', 'Choreography', 'Koreografi', 'koreografi', 0, 0, '6B02124');
INSERT INTO `tb_birim_agaci_copy3` VALUES (252, 249, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', 'muzik-ogretmenligi', 0, 0, '6B01406');
INSERT INTO `tb_birim_agaci_copy3` VALUES (253, 249, 'Актерлік өнер', 'Актерское искусство', 'Acting Art', 'Oyunculuk Sanatı', 'oyunculuk-sanati', 0, 0, '6B02123');
INSERT INTO `tb_birim_agaci_copy3` VALUES (254, 249, 'Эстрада өнері', 'Искусство эстрады', 'Pop Art ', 'Pop Müzik Sanatı ', 'pop-muzik-sanati', 0, 0, '6B02165');
INSERT INTO `tb_birim_agaci_copy3` VALUES (255, 249, 'Вокалдық өнер', 'Вокальное искусство', 'Vocal Art', 'Şan Sanatı ', 'san-sanati', 0, 0, '6B02121');
INSERT INTO `tb_birim_agaci_copy3` VALUES (256, 236, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (257, 256, 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical education', 'Beden Eğitimi Bölümü', 'beden-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (258, 257, 'Дене шынықтыру және спорт', 'Физическая культура и спорт', 'Physical Culture and Sport', 'Beden Eğitimi ve Spor Öğretmenliği', 'beden-egitimi-ve-spor-ogretmenligi', 0, 0, '7M01404');
INSERT INTO `tb_birim_agaci_copy3` VALUES (259, 256, 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine arts', 'Güzel Sanatlar Bölümü', 'guzel-sanatlar-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (260, 259, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher training in Art work and technical drawing', 'Resim Öğretmenliği ', 'resim-ogretmenligi', 0, 0, '7M01405');
INSERT INTO `tb_birim_agaci_copy3` VALUES (261, 256, 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Executive search', 'Sahne Sanatları Bölümü', 'sahne-sanatlari-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (262, 261, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', 'muzik-ogretmenligi', 0, 0, '7M01434');
INSERT INTO `tb_birim_agaci_copy3` VALUES (263, 4, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', 'tip-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (264, 263, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', 'lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (265, 264, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', 'tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (266, 265, 'Жалпы медицина', 'Общая медицина', 'General Medicine', 'Genel Tıp', 'genel-tip', 0, 0, '6B10155');
INSERT INTO `tb_birim_agaci_copy3` VALUES (267, 265, 'Мейіргер ісі', 'Сестринское дело', 'Nursing', 'Hemşirelik', 'hemsirelik', 0, 0, '6B10173');
INSERT INTO `tb_birim_agaci_copy3` VALUES (268, 265, 'Медицина (ВМ086)', 'Медицина (ВМ086)', 'Medicine', 'Tıp', 'tip', 0, 0, '6B10188');
INSERT INTO `tb_birim_agaci_copy3` VALUES (269, 263, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', 'yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (270, 269, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', 'tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (271, 270, 'Қоғамдық денсаулық сақтау ', 'Общественное здравоохранение ', 'Public Health', 'Halk Sağlığı', 'halk-sagligi', 0, 0, '7M10144');
INSERT INTO `tb_birim_agaci_copy3` VALUES (272, 270, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', 'tip', 0, 0, '7M10131');
INSERT INTO `tb_birim_agaci_copy3` VALUES (273, 263, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', 'doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (274, 273, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', 'tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy3` VALUES (275, 274, 'Қоғамдық денсаулық сақтау', 'Общественное здравоохранение', 'Public Health', 'Halk sağlığı', 'halk-sagligi', 0, 0, '8D10111');
INSERT INTO `tb_birim_agaci_copy3` VALUES (276, 274, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', 'tip', 0, 0, '8D10110');

-- ----------------------------
-- Table structure for tb_birim_agaci_copy4
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_agaci_copy4`;
CREATE TABLE `tb_birim_agaci_copy4`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  `program_kodu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_agaci_copy4
-- ----------------------------
INSERT INTO `tb_birim_agaci_copy4` VALUES (1, 0, 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', 'Ahmet Yesevi Üniversitesi', '0-ahmet-yesevi-universitesi', 1, 0, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (2, 1, 'Академиялық бөлім', 'Академическая единица', 'Academic Unit', 'Akademik Birimler', '1-akademik-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (3, 1, NULL, NULL, 'Administrative Units', 'İdari Birimler', '1-idari-birimler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (4, 2, 'Факультет\r\n', 'Факультет', 'Faculty', 'Fakülteler', '2-fakulteler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (5, 2, NULL, NULL, NULL, 'Enstitüler', '2-enstituler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (6, 2, NULL, NULL, NULL, 'Merkezler', '2-merkezler', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (7, 2, NULL, NULL, NULL, 'Meslek Yüksekokulları', '2-meslek-yuksekokullari', 1, 1, NULL);
INSERT INTO `tb_birim_agaci_copy4` VALUES (8, 4, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği Fakültesi', '4-dis-hekimligi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (9, 8, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '8-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (10, 9, 'Стоматология факультеті', 'Факультет стоматологии', 'Faculty of Dentistry', 'Diş Hekimliği ', '9-dis-hekimligi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (11, 10, 'Стоматология (ВМ087)', 'Стоматология (ВМ087)', 'Dentistry', 'Diş Hekimliği', '10-dis-hekimligi', 0, 0, '6B10189');
INSERT INTO `tb_birim_agaci_copy4` VALUES (12, 4, 'Жаратылыстану ғылымдары факультеті', 'Факультет естестенных наук', 'Faculty of Natural Sciences', 'Fen Bilimleri Fakültesi', '4-fen-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (13, 12, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '12-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (14, 13, 'Биология кафедрасы', 'Кафедра биологии', 'Department of Biology', 'Biyoloji Bölümü', '13-biyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (15, 14, 'Биология (Жаратылыстану ғылымдары)', 'Биология (Естественные науки)', 'Biology ', 'Biyoloji', '14-biyoloji', 0, 0, '6B05146');
INSERT INTO `tb_birim_agaci_copy4` VALUES (16, 14, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', '14-biyoloji-ogretmenligi', 0, 0, '6B01513');
INSERT INTO `tb_birim_agaci_copy4` VALUES (17, 14, 'Биотехнология ', 'Биотехнология ', 'Biotechnology ', 'Biyoteknoloji ', '14-biyoteknoloji', 0, 0, '6B05169');
INSERT INTO `tb_birim_agaci_copy4` VALUES (18, 13, 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '13-ekoloji-ve-kimya-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (19, 18, 'География (Педагогикалық ғылымдар)', 'География (Педагогические науки) ', 'Geography Teacher Education ', 'Coğrafya Öğretmenliği', '18-cografya-ogretmenligi', 0, 0, '6B01514');
INSERT INTO `tb_birim_agaci_copy4` VALUES (20, 18, 'Экология ', 'Экология ', 'Ecology', 'Ekoloji ', '18-ekoloji', 0, 0, '6B05247');
INSERT INTO `tb_birim_agaci_copy4` VALUES (21, 18, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğretmenliği ', '18-kimya-ogretmenligi', 0, 0, '6B01512');
INSERT INTO `tb_birim_agaci_copy4` VALUES (22, 18, 'Химия-Биология (Педагогикалық ғылымдар)', 'Химии-биология (Педагогические науки) ', 'Chemistry-Biology Teacher Education ', 'Kimya-Biyoloji Öğretmenliği ', '18-kimya-biyoloji-ogretmenligi', 0, 0, '6B01562');
INSERT INTO `tb_birim_agaci_copy4` VALUES (23, 13, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '13-fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (24, 23, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik ', '23-fizik', 0, 0, '6B05348');
INSERT INTO `tb_birim_agaci_copy4` VALUES (25, 23, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', '23-fizik-ogretmenligi', 0, 0, '6B01510');
INSERT INTO `tb_birim_agaci_copy4` VALUES (26, 13, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '13-matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (27, 26, 'Информатика, АКТ және робототехника (Педагогикалық ғылымдар)', 'Информатика, ИКТ и робототехника (Педагогические науки) ', 'Computer Science, ICT and Robotic Teacher Education ', 'Bilgi İşlem, Bilişim Teknolojileri ve Robotik Öğretmenliği ', '26-bilgi-islem-bilisim-teknolojileri-ve-robotik-ogretmenligi', 0, 0, '6B01573');
INSERT INTO `tb_birim_agaci_copy4` VALUES (28, 26, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', '26-bilgisayar-ogretmenligi', 0, 0, '6B01511');
INSERT INTO `tb_birim_agaci_copy4` VALUES (29, 26, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics', 'Matematik ', '26-matematik', 0, 0, '6B05449');
INSERT INTO `tb_birim_agaci_copy4` VALUES (30, 26, 'Математика (Педагогикалық ғылымдар) ', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği ', '26-matematik-ogretmenligi', 0, 0, '6B01509');
INSERT INTO `tb_birim_agaci_copy4` VALUES (31, 12, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '12-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (32, 31, 'Биология кафедрасы', 'Кафедра биологии', 'Department of Biology', 'Biyoloji Bölümü', '31-biyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (33, 32, 'Биология (Педагогикалық ғылымдар)', 'Биология (Педагогические науки) ', 'Biology Teacher Education ', 'Biyoloji Öğretmenliği ', '32-biyoloji-ogretmenligi', 0, 0, '7M01507');
INSERT INTO `tb_birim_agaci_copy4` VALUES (34, 31, 'Экология және химия кафедрасы', 'Кафедра экологии и химии', 'Department of Ecology and Chemistry', 'Ekoloji ve Kimya Bölümü', '31-ekoloji-ve-kimya-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (35, 34, 'Экология ', 'Экология ', 'Ecology ', 'Ekoloji ', '34-ekoloji', 0, 0, '7M05223');
INSERT INTO `tb_birim_agaci_copy4` VALUES (36, 34, 'Химия (Жаратылыстану ғылымдары)', 'Химия (Естественные науки)', 'Chemistry ', 'Kimya ', '34-kimya', 0, 0, '7M05324');
INSERT INTO `tb_birim_agaci_copy4` VALUES (37, 34, 'Химия (Педагогикалық ғылымдар)', 'Химия (Педагогические науки) ', 'Chemistry Teacher Education ', 'Kimya Öğetmenliği', '34-kimya-ogetmenligi', 0, 0, '7M01535');
INSERT INTO `tb_birim_agaci_copy4` VALUES (38, 31, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '31-fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (39, 38, 'Физика (Жаратылыстану ғылымдары)', 'Физика (Естественные науки)', 'Physics ', 'Fizik', '38-fizik', 0, 0, '7M05325');
INSERT INTO `tb_birim_agaci_copy4` VALUES (40, 38, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics Teacher Education ', 'Fizik Öğretmenliği ', '38-fizik-ogretmenligi', 0, 0, '7M01506');
INSERT INTO `tb_birim_agaci_copy4` VALUES (41, 31, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '31-matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (42, 41, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science Teacher Education ', 'Bilgisayar Öğretmenliği', '41-bilgisayar-ogretmenligi', 0, 0, '7M01557');
INSERT INTO `tb_birim_agaci_copy4` VALUES (43, 41, 'Математика (Жаратылыстану ғылымдары)', 'Математика (Естественные науки)', 'Mathematics ', 'Matematik ', '41-matematik', 0, 0, '7M05426');
INSERT INTO `tb_birim_agaci_copy4` VALUES (44, 41, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics Teacher Education ', 'Matematik Öğretmenliği', '41-matematik-ogretmenligi', 0, 0, '7M01547');
INSERT INTO `tb_birim_agaci_copy4` VALUES (45, 41, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', '41-matematiksel-ve-bilgisayarda-modelleme', 0, 0, '7M06129');
INSERT INTO `tb_birim_agaci_copy4` VALUES (46, 12, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '12-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (47, 46, 'Физика кафедрасы', 'Кафедра физики', 'Department of Physics', 'Fizik Bölümü', '46-fizik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (48, 47, 'Физика (Педагогикалық ғылымдар)', 'Физика (Педагогические науки) ', 'Physics ', 'Fizik Öğretmenliği ', '47-fizik-ogretmenligi', 0, 0, '8D01503');
INSERT INTO `tb_birim_agaci_copy4` VALUES (49, 46, 'Математика кафедрасы', 'Кафедра математики', 'Department of Mathematics', 'Matematik Bölümü', '46-matematik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (50, 49, 'Информатика (Педагогикалық ғылымдар)', 'Информатика (Педагогические науки) ', 'Computer Science ', 'Bilgisayar Bilimleri ', '49-bilgisayar-bilimleri', 0, 0, '8D01516');
INSERT INTO `tb_birim_agaci_copy4` VALUES (51, 49, 'Математика (Педагогикалық ғылымдар)', 'Математика (Педагогические науки) ', 'Mathematics ', 'Matematik Öğretmenliği ', '49-matematik-ogretmenligi', 0, 0, '8D01502');
INSERT INTO `tb_birim_agaci_copy4` VALUES (52, 49, 'Математикалық және компьютерлік модельдеу ', 'Математическое и компьютерное моделирование', 'Mathematical and Computer Modeling ', 'Matematiksel ve Bilgisayarda Modelleme ', '49-matematiksel-ve-bilgisayarda-modelleme', 0, 0, '8D06109');
INSERT INTO `tb_birim_agaci_copy4` VALUES (53, 4, 'Филология факультеті', 'Факультет филологии', 'Faculty of Philological', 'Filoloji Fakültesi', '4-filoloji-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (54, 53, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '53-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (55, 54, 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '54-ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (56, 55, 'Шетел филологиясы (ағылшын тілі)', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', '55-ingiliz-dili-ve-edebiyati', 0, 0, '6B02332');
INSERT INTO `tb_birim_agaci_copy4` VALUES (57, 55, 'Аударма ісі: ағылшын тілі', 'Переводческое дело:английский язык', 'Translation Studies: the English Language ', 'İngilizce Mütercim ve Tercümanlık ', '55-ingilizce-mutercim-ve-tercumanlik', 0, 0, '6B02335');
INSERT INTO `tb_birim_agaci_copy4` VALUES (58, 54, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '54-kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (59, 58, 'Филология: қазақ филологиясы', 'Филология: казахская филология', 'Philology: Kazakh Philology', 'Kazak Dili ve Edebiyatı ', '58-kazak-dili-ve-edebiyati', 0, 0, '6B02336');
INSERT INTO `tb_birim_agaci_copy4` VALUES (60, 58, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı Öğretmenliği ', '58-kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01716');
INSERT INTO `tb_birim_agaci_copy4` VALUES (61, 54, 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '54-rus-dili-ve-edebiyati-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (62, 61, 'Орыс тілі мен әдебиеті', 'Русский язык и литература', 'Russian Language and Literature ', 'Rus Dili ve Edebiyatı Öğretmenliği ', '61-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01717');
INSERT INTO `tb_birim_agaci_copy4` VALUES (63, 61, 'Орыс тілінде оқытпайтын мектептердегі орыс тілі мен әдебиеті ', 'Русский язык и литература с нерусским языком обучения ', 'Russian Language and Literature at Schools with non-Russian Training', 'Rusçada Eğitim Vermeyen Okullarda Rus Dili ve Edebiyatı Öğretmenliği ', '61-ruscada-egitim-vermeyen-okullarda-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '6B01764');
INSERT INTO `tb_birim_agaci_copy4` VALUES (64, 54, 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '54-turk-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (65, 64, 'Шетел филологиясы (түрік тілі)', 'Иностранная филология (турецский язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', '64-turk-dili-ve-edebiyati', 0, 0, '6B02333');
INSERT INTO `tb_birim_agaci_copy4` VALUES (66, 64, 'Түркітану ', 'Тюркология ', 'Turkology ', 'Türkoloji ', '64-turkoloji', 0, 0, '6B02267');
INSERT INTO `tb_birim_agaci_copy4` VALUES (67, 54, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '54-yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (68, 67, 'Шетел тілі: екі шетел тілі (ағылшын-қытай)', 'Иностранный язык: два иностранных языка (английский-китайский)', 'Foreign language: two foreign languages (English - Chinese) ', 'İngilizce Çince Öğretmenliği ', '67-ingilizce-cince-ogretmenligi', 0, 0, '6B01718');
INSERT INTO `tb_birim_agaci_copy4` VALUES (69, 67, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'İngilizce Türkçe Öğretmenliği', '67-ingilizce-turkce-ogretmenligi', 0, 0, '6B01719');
INSERT INTO `tb_birim_agaci_copy4` VALUES (70, 53, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '53-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (71, 70, 'Ағылшын филологиясы және аударма ісі кафедрасы', 'Кафедра английской филологии и переводческого дела', 'Department of English Philology and Translation', 'İngiliz Filolojisi ve Çeviri İşleri Bölümü', '70-ingiliz-filolojisi-ve-ceviri-isleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (72, 71, 'Шетел филологиясы: Ағылшын тілі', 'Иностранная филология (английский язык)', 'English Language and Literature', 'İngiliz Dili ve Edebiyatı ', '71-ingiliz-dili-ve-edebiyati', 0, 0, '7M02313');
INSERT INTO `tb_birim_agaci_copy4` VALUES (73, 70, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '70-kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (74, 73, 'Филология', 'Филология', 'Philology', 'Dil Bilimi ', '73-dil-bilimi', 0, 0, '7M02315');
INSERT INTO `tb_birim_agaci_copy4` VALUES (75, 73, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature', 'Kazak Dili ve Edebiyatı Öğretmenliği ', '73-kazak-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01737');
INSERT INTO `tb_birim_agaci_copy4` VALUES (76, 70, 'Орыс тілі және әдебиеті кафедрасы', 'Кафедра русского языка и литературы', 'Department of Russian Language and Literature', 'Rus Dili ve Edebiyatı Bölümü', '70-rus-dili-ve-edebiyati-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (77, 76, 'Орыс тілі мен әдебиеті', 'Русский язык и литература ', 'Russian Language and Literature', 'Rus Dili ve Edebiyatı Öğretmenliği ', '76-rus-dili-ve-edebiyati-ogretmenligi', 0, 0, '7M01738');
INSERT INTO `tb_birim_agaci_copy4` VALUES (78, 70, 'Түрік филологиясы кафедрасы', 'Кафедра турецкой филологии', 'Department of Turkish Philology', 'Türk Filolojisi Bölümü', '70-turk-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (79, 78, 'Шетел филологиясы: Түрік тілі', 'Иностранная филология (турецкий язык)', 'Turkish Language and Literature', 'Türk Dili ve Edebiyatı ', '78-turk-dili-ve-edebiyati', 0, 0, '7M02314');
INSERT INTO `tb_birim_agaci_copy4` VALUES (80, 78, 'Түркітану', 'Тюркология', 'Turkology', 'Türkoloji ', '78-turkoloji', 0, 0, '7M02212');
INSERT INTO `tb_birim_agaci_copy4` VALUES (81, 70, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical foreign languages', 'Yabancı Diller Eğitimi Bölümü', '70-yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (82, 81, 'Шетел тілі: екі шетел тілі (ағылшын-түрік)', 'Иностранный язык: два иностранных языка (английский-турецский)', 'English Language and Literature', 'İngilizce Türkçe Öğretmenliği', '81-ingilizce-turkce-ogretmenligi', 0, 0, '7M01708');
INSERT INTO `tb_birim_agaci_copy4` VALUES (83, 53, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '53-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (84, 83, 'Қазақ филологиясы кафедрасы', 'Кафедра казахской филологии ', 'Department of Kazakh Philology', 'Kazak Filolojisi Bölümü', '83-kazak-filolojisi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (85, 84, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', '84-kazak-dili-ve-edebiyati', 0, 0, '8D01705');
INSERT INTO `tb_birim_agaci_copy4` VALUES (86, 83, 'Педагогикалық шетел тілдері кафедрасы', 'Кафедра педагогических иностранных языков', 'Department of Pedagogical Foreign Languages', 'Yabancı Diller Eğitimi Bölümü', '83-yabanci-diller-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (87, 86, 'Қазақ тілі мен әдебиеті', 'Казахский язык и литература', 'Kazakh Language and Literature ', 'Kazak Dili ve Edebiyatı ', '86-kazak-dili-ve-edebiyati', 0, 0, '8D01713');
INSERT INTO `tb_birim_agaci_copy4` VALUES (88, 4, 'Экономика, басқару және құқық факультеті', 'Факультет экономики, управления и права', 'Faculty of Economics, Management and Law', 'İktisadi İdari Bilimler ve Hukuk Fakültesi ', '4-iktisadi-idari-bilimler-ve-hukuk-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (89, 88, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '88-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (90, 89, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '89-ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (91, 90, 'Экономика бакалавриат бағдарламасы', 'Экономика программа бакалавриата', 'Economics ', 'Ekonomi ', '90-ekonomi', 0, 0, '6B04142');
INSERT INTO `tb_birim_agaci_copy4` VALUES (92, 90, 'Қаржы бакалавриат бағдарламасы', 'Финансы программа бакалавриата', 'Finance ', 'Finans ', '90-finans', 0, 0, '6B04144');
INSERT INTO `tb_birim_agaci_copy4` VALUES (93, 90, 'Есеп және аудит бакалавриат бағдарламасы', 'Учет и аудит программа бакалавриата', 'Accounting and Audit ', 'Muhasebe ve Denetim ', '90-muhasebe-ve-denetim', 0, 0, '6B04143');
INSERT INTO `tb_birim_agaci_copy4` VALUES (94, 89, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', '89-hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (95, 94, 'Құқықтану бакалавриат бағдарламасы', 'Юриспруденция программа бакалавриата', 'Law ', 'Hukuk ', '94-hukuk', 0, 0, '6B04245');
INSERT INTO `tb_birim_agaci_copy4` VALUES (96, 94, 'Құқыққорғау қызметі бакалавриат бағдарламасы', 'Правоохранительная деятельность (программа бакалавриата)', 'Law Enforcement', 'Hukuk Hizmetleri ', '94-hukuk-hizmetleri', 0, 0, '6B04282');
INSERT INTO `tb_birim_agaci_copy4` VALUES (97, 94, 'Халықаралық құқық бакалавриат бағдарламасы', 'Международное право программа бакалавриата', 'International Law', 'Uluslararası Hukuk', '94-uluslararasi-hukuk', 0, 0, '6B04281');
INSERT INTO `tb_birim_agaci_copy4` VALUES (98, 89, 'Менеджмент және туризм бөлімі', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', '89-isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (99, 98, 'Менеджмент бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'Management ', 'İşletme ', '98-isletme', 0, 0, '6B04140');
INSERT INTO `tb_birim_agaci_copy4` VALUES (100, 98, 'Туризм бакалавриат бағдарламасы', 'Туризм программа бакалавриата', 'Tourism', 'Turizm', '98-turizm', 0, 0, '6B11157');
INSERT INTO `tb_birim_agaci_copy4` VALUES (101, 98, 'Мейрамхана ісі және қонақ үй бизнесі бакалавриат бағдарламасы', 'Ресторанное дело и гостиничный бизнес программа бакалавриата', 'Restaurant and Hotel Business', 'Turizm ve Otel İşletmeciliği ', '98-turizm-ve-otel-isletmeciligi', 0, 0, '6B11180');
INSERT INTO `tb_birim_agaci_copy4` VALUES (102, 89, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public administration and international relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '89-kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (103, 102, 'Мемлекеттік және жергілікті басқару бакалавриат бағдарламасы', 'Государственное и местное управление программа бакалавриата', 'Public and Local administration ', 'Kamu ve Yerel Yönetim ', '102-kamu-ve-yerel-yonetim', 0, 0, '6B04141');
INSERT INTO `tb_birim_agaci_copy4` VALUES (104, 102, 'Халықаралық қатынастар бакалавриат бағдарламасы', 'Международные отношения программа бакалавриата', 'International Relations', 'Uluslararası İlişkiler ', '102-uluslararasi-iliskiler', 0, 0, '6B03138');
INSERT INTO `tb_birim_agaci_copy4` VALUES (105, 88, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '88-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (106, 105, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '105-ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (107, 106, 'Экономика магистратура бағдарламасы', 'Экономика программа магистратуры', 'Economics. Program', 'Ekonomi ', '106-ekonomi', 0, 0, '7M04118');
INSERT INTO `tb_birim_agaci_copy4` VALUES (108, 106, 'Қаржы магистратура бағдарламасы', 'Финансы программа магистратуры', 'Finance. Program', 'Finans ', '106-finans', 0, 0, '7M04141');
INSERT INTO `tb_birim_agaci_copy4` VALUES (109, 106, 'Есеп және аудит магистратура бағдарламасы', 'Учет и аудит (программа магистратуры)', 'Accounting and Audit. Program', 'Muhasebe ve Denetim ', '106-muhasebe-ve-denetim', 0, 0, '7M04120');
INSERT INTO `tb_birim_agaci_copy4` VALUES (110, 105, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', '105-hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (111, 110, 'Құқық магистратура бағдарламасы', 'Право программа магистратуры', 'Law. Program', 'Hukuk ', '110-hukuk', 0, 0, '7M04222');
INSERT INTO `tb_birim_agaci_copy4` VALUES (112, 105, 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', '105-isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (113, 112, 'Білім беру саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере образования программа магистратуры', 'Education Management. Program', 'Eğitim Yönetimi ', '112-egitim-yonetimi', 0, 0, '7M04150');
INSERT INTO `tb_birim_agaci_copy4` VALUES (114, 112, 'Менеджмент магистратура бағдарламасы', 'Менеджмент программа магистратуры', 'Management. Program', 'İşletme ', '112-isletme', 0, 0, '7M04119');
INSERT INTO `tb_birim_agaci_copy4` VALUES (115, 112, 'Денсаулық сақтау саласындағы менеджмент магистратура бағдарламасы', 'Менеджмент в сфере здравоохранения программа магистратуры', 'Health Management. Program', 'Sağlık İşletmeciliği ', '112-saglik-isletmeciligi', 0, 0, '7M04160');
INSERT INTO `tb_birim_agaci_copy4` VALUES (116, 105, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '105-kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (117, 116, 'Адам ресурстарын басқару магистратура бағдарламасы', 'Управление человеческими ресурсами программа магистратуры', 'Human resource management. Program', 'Insan kaynakları yönetimi ', '116-insan-kaynaklari-yonetimi', 0, 0, '7M04143');
INSERT INTO `tb_birim_agaci_copy4` VALUES (118, 116, 'Мемлекеттік және жергілікті басқару магистратура бағдарламасы', 'Государственное и местное управление программа магистратуры', 'State and local Administration. Program', 'Kamu Yönetimi ', '116-kamu-yonetimi', 0, 0, '7M04121');
INSERT INTO `tb_birim_agaci_copy4` VALUES (119, 116, 'Саясаттану магистратура бағдарламасы', 'Политология (программа магистратуры)', 'Political Science. Program', 'Siyaset Bilimi ', '116-siyaset-bilimi', 0, 0, '7M03117');
INSERT INTO `tb_birim_agaci_copy4` VALUES (120, 116, 'Халықаралық қатынастар магистратура бағдарламасы', 'Международные отношения программа магистратуры', 'International Relations. Program', 'Uluslararası İlişkiler ', '116-uluslararasi-iliskiler', 0, 0, '7M03140');
INSERT INTO `tb_birim_agaci_copy4` VALUES (121, 88, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '88-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (122, 121, 'Экономика, қаржы және есеп кафедрасы', 'Кафедра экономики, финансов и учета', 'Department of Economics, Finance and Accounting', 'Ekonomi, Finans ve Muhasebe Bölümü', '121-ekonomi-finans-ve-muhasebe-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (123, 122, 'Экономика докторантура бағдарламасы', 'Экономика программа докторантуры', 'Economics Program', 'Ekonomi ', '122-ekonomi', 0, 0, '8D04106');
INSERT INTO `tb_birim_agaci_copy4` VALUES (124, 122, 'Қаржы докторантуры бағдарламасы', 'Финансы программа докторантуры', 'Finance Program', 'Finans ', '122-finans', 0, 0, '8D04117');
INSERT INTO `tb_birim_agaci_copy4` VALUES (125, 121, 'Құқықтану кафедрасы', 'Кафедра юриспруденции', 'Department of Law', 'Hukuk Bölümü', '121-hukuk-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (126, 125, 'Құқық докторантура бағдарламасы', 'Право программа докторантуры', 'Law Program', 'Hukuk ', '125-hukuk', 0, 0, '8D04208');
INSERT INTO `tb_birim_agaci_copy4` VALUES (127, 121, 'Менеджмент және туризм кафедрасы', 'Кафедра менеджмента и туризма', 'Department of Management and Tourism', 'İşletme ve Turizm Bölümü', '121-isletme-ve-turizm-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (128, 127, 'Менеджмент докторантура бағдарламасы', 'Менеджмент программа докторантуры', 'Management Program', 'İşletme ', '127-isletme', 0, 0, '8D04107');
INSERT INTO `tb_birim_agaci_copy4` VALUES (129, 121, 'Мемлекеттік басқару және халықаралық қатынастар кафедрасы', 'Кафедра государственного управления и международных отношений', 'Department of Public Administration and International Relations', 'Kamu Yönetimi ve Uluslararası İlişkiler Bölümü', '121-kamu-yonetimi-ve-uluslararasi-iliskiler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (130, 129, 'Мемлекеттік және жергілікті басқару докторантура бағдарламасы', 'Государственное и местное управление программа докторантуры', 'State and Local Administration Program', 'Kamu ve Yerel Yönetim ', '129-kamu-ve-yerel-yonetim', 0, 0, '8D04114');
INSERT INTO `tb_birim_agaci_copy4` VALUES (131, 4, 'Теология факультеті', 'Факультет теологии', 'Faculty of Theological', 'İlahiyat Fakültesi ', '4-ilahiyat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (132, 131, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '131-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (133, 132, 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '132-din-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (134, 133, 'Дінтану (Педагогикалық ғылымдар)', 'Религиоведение (Педагогические науки)', 'Religious Studies Teacher Education ', 'Din Bilgisi Öğretmenliği', '133-din-bilgisi-ogretmenligi', 0, 0, '6B01683');
INSERT INTO `tb_birim_agaci_copy4` VALUES (135, 133, 'Дінтану', 'Религиоведение', 'Religious Studies', 'Din Bilimleri', '133-din-bilimleri', 0, 0, '6B02228');
INSERT INTO `tb_birim_agaci_copy4` VALUES (136, 133, 'Психология-Дінтану', 'Психология-Религиоведение', 'Psychology-Religious Studies ', 'Din Psikolojisi ', '133-din-psikolojisi', 0, 0, '6В03187');
INSERT INTO `tb_birim_agaci_copy4` VALUES (137, 132, 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '132-ilahiyat-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (138, 137, 'Теология', 'Теология', 'Theology', 'İlahiyat', '137-ilahiyat', 0, 0, '6B02229');
INSERT INTO `tb_birim_agaci_copy4` VALUES (139, 137, 'Исламтану', 'Исламоведение', 'Islamic Studies', 'İslam Bilimleri', '137-islam-bilimleri', 0, 0, '6B02266');
INSERT INTO `tb_birim_agaci_copy4` VALUES (140, 132, 'Қоғамдық ғылымдар кафедрасы', 'Кафедра общественных наук', 'Department of Community Sciences', 'Toplum Bilimleri Bölümü', '132-toplum-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (141, 140, 'Философия-Дінтану', 'Философия -Религиоведение ', 'Philosophy-Religious Studies', 'Din Felsefesi', '140-din-felsefesi', 0, 0, '6В02286');
INSERT INTO `tb_birim_agaci_copy4` VALUES (142, 131, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '131-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (143, 142, 'Дінтану кафедрасы', 'Кафедра религиоведения', 'Department of Religious Studies', 'Din Bilimleri Bölümü', '142-din-bilimleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (144, 143, 'Дінтану', 'Религиоведение', 'Religious Studies ', 'Din Bilimleri ', '143-din-bilimleri', 0, 0, '7M02211');
INSERT INTO `tb_birim_agaci_copy4` VALUES (145, 142, 'Теология кафедрасы', 'Кафедра теологии', 'Department of Theology', 'İlahiyat Bölümü', '142-ilahiyat-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (146, 145, 'Теология', 'Теология', 'Theology ', 'İlahiyat ', '145-ilahiyat', 0, 0, '7M02262');
INSERT INTO `tb_birim_agaci_copy4` VALUES (147, 4, 'Әлеуметтік - гуманитарлық ғылымдар факультеті', 'Факультет социально-гуманитарных наук', 'Faculty of Social and Humanitarian Sciences', 'İnsan ve Toplum Bilimleri Fakültesi', '4-insan-ve-toplum-bilimleri-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (148, 147, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '147-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (149, 148, 'Журналистика кафедрасы', 'Кафедра журналистики', 'Department of Journalism', 'Gazetecilik Bölümü', '148-gazetecilik-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (150, 149, 'Сандық медия және телерадиожурналистика', 'Цифровая медиа и телерадиожурналистика', 'Digital Media and TV, Radio Journalism', 'Dijital Medya, Radyo ve Televizyon Gazeteciliği ', '149-dijital-medya-radyo-ve-televizyon-gazeteciligi', 0, 0, '6B03279');
INSERT INTO `tb_birim_agaci_copy4` VALUES (151, 149, 'Журналистика', 'Журналистика', 'Journalism', 'Gazetecilik', '149-gazetecilik', 0, 0, '6B03239');
INSERT INTO `tb_birim_agaci_copy4` VALUES (152, 148, 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '148-okul-oncesi-ogretmenligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (153, 152, 'Мектепке дейінгі оқыту және тәрбиелеу', 'Дошкольное обучение и воспитание', 'Pre-School Education and Upbringing ', 'Okul Öncesi Öğretmenliği ', '152-okul-oncesi-ogretmenligi', 0, 0, '6B01202');
INSERT INTO `tb_birim_agaci_copy4` VALUES (154, 152, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', '152-sinif-ogretmenligi', 0, 0, '6B01303');
INSERT INTO `tb_birim_agaci_copy4` VALUES (155, 148, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Pedagogy and Psychology', 'Pedagoji ve Psikoloji Bölümü', '148-pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (156, 155, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', '155-pedagoji-ve-psikoloji', 0, 0, '6B01101');
INSERT INTO `tb_birim_agaci_copy4` VALUES (157, 148, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '148-tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (158, 157, 'Тарих', 'История', 'History ', 'Tarih ', '157-tarih', 0, 0, '6B02231');
INSERT INTO `tb_birim_agaci_copy4` VALUES (159, 157, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', '157-tarih-ogretmenligi', 0, 0, '6B01615');
INSERT INTO `tb_birim_agaci_copy4` VALUES (160, 147, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '147-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (161, 160, 'Мектепке дейінгі және бастауышта білім беру кафедрасы', 'Кафедра дошкольного и начального образования', 'Department of Preschool and Primary Education', 'Okul Öncesi Öğretmenliği Bölümü', '160-okul-oncesi-ogretmenligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (162, 161, 'Мектепке дейінгі тәрбиелеу және оқыту педагогикасы', 'Педагогика дошкольного воспитания и обучения', 'Pedagogy of the Pre-school Education and Upbringing', 'Okul Öncesi Öğretmenliği ', '161-okul-oncesi-ogretmenligi', 0, 0, '7M01202');
INSERT INTO `tb_birim_agaci_copy4` VALUES (163, 161, 'Бастауышта оқыту педагогикасы мен әдістемесі', 'Педагогика и методика начального обучения', 'Pedagogy and Methods of Primary Education', 'Sınıf Öğretmenliği ', '161-sinif-ogretmenligi', 0, 0, '7M01303');
INSERT INTO `tb_birim_agaci_copy4` VALUES (164, 160, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', '160-pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (165, 164, 'Педагогика және психология', 'Педагогика и психология', 'Pedagogy and Psychology', 'Pedagoji ve Psikoloji ', '164-pedagoji-ve-psikoloji', 0, 0, '7M01101');
INSERT INTO `tb_birim_agaci_copy4` VALUES (166, 160, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '160-tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (167, 166, 'Тарих', 'История', 'History', 'Tarih ', '166-tarih', 0, 0, '7M02210');
INSERT INTO `tb_birim_agaci_copy4` VALUES (168, 147, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '147-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (169, 168, 'Педагогика және психология кафедрасы', 'Кафедра педагогики и психологии', 'Department of Preschool and Primary Education', 'Pedagoji ve Psikoloji Bölümü', '168-pedagoji-ve-psikoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (170, 169, 'Педагогика және психология', 'Педагогика и психология', 'Рedagogy and Psychology', 'Pedagoji ve Psikoloji ', '169-pedagoji-ve-psikoloji', 0, 0, '8D01101');
INSERT INTO `tb_birim_agaci_copy4` VALUES (171, 168, 'Тарих кафедрасы', 'Кафедра истории', 'Department of History', 'Tarih Bölümü', '168-tarih-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (172, 171, 'Тарих', 'История', 'History Teacher Education', 'Tarih Öğretmenliği ', '171-tarih-ogretmenligi', 0, 0, '8D01604');
INSERT INTO `tb_birim_agaci_copy4` VALUES (173, 4, 'Жоғары медициналық білімнен кейінгі білім беру факультеті', 'Факультет послевузовского высшего медицинское образования', 'Faculty of Postgraduate Higher Medical Education', 'Lisansüstü Tıp Eğitimi Fakültesi', '4-lisansustu-tip-egitimi-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (174, 173, 'Резидентура', 'Резидентура', 'Medical Specialty', 'Tıpta Uzmanlık', '173-tipta-uzmanlik', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (175, 174, 'Жұқпалы аурулар және фтизиатрия кафедрасы', 'Кафедра инфекционных заболеваний и фтизиатрии', 'Department of Infectious diseases and phthisiology', 'Bulaşıcı Hastalıklar ve Fitizyoloji Bölümü', '174-bulasici-hastaliklar-ve-fitizyoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (176, 175, 'Ересектердің, балалардың инфекциялық аурулары ', 'Инфекционные болезни взрослые, детские ', 'Infectious Diseases ', 'Bulaşıcı Hastalıkları', '175-bulasici-hastaliklari', 0, 0, '7R01123');
INSERT INTO `tb_birim_agaci_copy4` VALUES (177, 175, 'Ересектердің, балалардың дерматовенерологиясы ', 'Дерматовенерология взрослая, детская', 'Dermatovenerology ', 'Dermatoveneroloji', '175-dermatoveneroloji', 0, 0, '7R01122');
INSERT INTO `tb_birim_agaci_copy4` VALUES (178, 174, 'Хирургия және анестезиология-реанимация кафедрасы', 'Кафедра хирургии и анестезиологии-реанимации', 'Department of Surgery and Anesthesiology-Intensive care', 'Cerrahi ve Anesteziyoloji-Resüsitasyon Bölümü', '174-cerrahi-ve-anesteziyoloji-resusitasyon-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (179, 178, 'Ересектердің, балалардың анестезиология және реаниматологиясы ', 'Анестезиология и реаниматология взрослая, детская ', 'Anesthesiology and resuscitation ', 'Anesteziyoloji ve Resüsitasyon', '178-anesteziyoloji-ve-resusitasyon', 0, 0, '7R01112');
INSERT INTO `tb_birim_agaci_copy4` VALUES (180, 178, 'Ересектердің, балалардың ангиохирургиясы ', 'Ангиохирургия взрослая, детская ', 'Angiosurgery', 'Anjio Cerrahi', '178-anjio-cerrahi', 0, 0, '7R01128');
INSERT INTO `tb_birim_agaci_copy4` VALUES (181, 178, 'Ересектердің, балалардың нейрохирургиясы ', 'Нейрохирургия взрослая, детская ', 'Neurosurgery ', 'Beyin Cerrahisi', '178-beyin-cerrahisi', 0, 0, '7R01109');
INSERT INTO `tb_birim_agaci_copy4` VALUES (182, 178, 'Ересектердің, балалардың бет-жақ хирургиясы ', 'Челюстно-лицевая хирургия взрослая, детская', 'Maxillofacial surgery', 'Çene-Yüz Cerrahisi', '178-cene-yuz-cerrahisi', 0, 0, '7R01131');
INSERT INTO `tb_birim_agaci_copy4` VALUES (183, 178, 'Балалар хирургиясы ', 'Детская хирургия ', 'Pediatric surgery', 'Çocuk Cerrahisi', '178-cocuk-cerrahisi', 0, 0, '7R01118');
INSERT INTO `tb_birim_agaci_copy4` VALUES (184, 178, 'Жалпы хирургия ', 'Общая хирургия ', 'General surgery', 'Genel Cerrahi', '178-genel-cerrahi', 0, 0, '7R01103');
INSERT INTO `tb_birim_agaci_copy4` VALUES (185, 178, 'Ересектердің, балалардың офтальмологиясы ', 'Офтальмология взрослая, детская', 'Ophthalmology', 'Oftalmoloji', '178-oftalmoloji', 0, 0, '7R01111');
INSERT INTO `tb_birim_agaci_copy4` VALUES (186, 174, 'Ішкі аурулар кафедрасы', 'Кафедра внутренних болезней', 'Department of Internal diseases', 'Dahiliye Bölümü', '174-dahiliye-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (187, 186, 'Ересектердің, балалардың аллергология және иммунологиясы', 'Аллергология и иммунология взрослая, детская ', 'Allergology and immunology ', 'Alerji ve İmmünoloji', '186-alerji-ve-immunoloji', 0, 0, '7R01126');
INSERT INTO `tb_birim_agaci_copy4` VALUES (188, 186, 'Ересектердің, балалардың эндокринологиясы ', 'Эндокринология взрослая, детская ', 'Endocrinology ', 'Endokrinoloji ', '186-endokrinoloji', 0, 0, '7R01108');
INSERT INTO `tb_birim_agaci_copy4` VALUES (189, 186, 'Ересектердің, балалардың гастроэнтерологиясы ', 'Гастроэнтерология взрослая, детская ', 'Gastroenterology ', 'Gastroenteroloji', '186-gastroenteroloji', 0, 0, '7R01110');
INSERT INTO `tb_birim_agaci_copy4` VALUES (190, 186, 'Ересектердің, балалардың пульмонологиясы ', 'Пульмонология взрослая, детская ', 'Pulmonology ', 'Göğüs Hastalıkları', '186-gogus-hastaliklari', 0, 0, '7R01127');
INSERT INTO `tb_birim_agaci_copy4` VALUES (191, 186, 'Ересектердің, балалардың кардиологиясы', 'Кардиология взрослая, детская ', 'Cardiology ', 'Kardiyoloji', '186-kardiyoloji', 0, 0, '7R01107');
INSERT INTO `tb_birim_agaci_copy4` VALUES (192, 186, 'Терапия', 'Терапия ', 'Therapy', 'Terapi', '186-terapi', 0, 0, '7R01105');
INSERT INTO `tb_birim_agaci_copy4` VALUES (193, 174, 'Жалпы дәрігерлік практика № 1 кафедрасы', 'Кафедра общей врачебной практики № 1', 'Department of General medical practice № 1', 'Genel Tıbbi Uygulamalar № 1 Bölümü', '174-genel-tibbi-uygulamalar-1-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (194, 193, 'Радиология ', 'Радиология', 'Radiology', 'Radyoloji Teşhisi', '193-radyoloji-teshisi', 0, 0, '7R01114');
INSERT INTO `tb_birim_agaci_copy4` VALUES (195, 174, 'Жалпы дәрігерлік практика № 2 кафедрасы', 'Кафдера общей врачебной практики № 2', 'Department of General medical practice № 2', 'Genel Tıbbi Uygulamalar № 2 Bölümü', '174-genel-tibbi-uygulamalar-2-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (196, 195, 'Отбасылық медицина ', 'Семейная медицина', 'Primary Care Provider ', 'Aile Hekimliği ', '195-aile-hekimligi', 0, 0, '7R01106');
INSERT INTO `tb_birim_agaci_copy4` VALUES (197, 195, 'Клиникалық фармакология ', 'Клиническая фармакология ', 'Clinical Pharmacology', 'Klinik Farmakoloji', '195-klinik-farmakoloji', 0, 0, '7R01116');
INSERT INTO `tb_birim_agaci_copy4` VALUES (198, 195, 'Патологиялық анатомия ', 'Патологическая анатомия ', 'Pathological anatomy', 'Patolojik Anatomi', '195-patolojik-anatomi', 0, 0, '7R01129');
INSERT INTO `tb_birim_agaci_copy4` VALUES (199, 174, 'Неврология, психиатрия, наркология кафедрасы', 'Кафедра неврологии, психиатрии, наркологии', 'Department of Neurology, psychiatry, narcology', 'Nöroloji, Psikiyatri, Narkoloji Bilimi Bölümü', '174-noroloji-psikiyatri-narkoloji-bilimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (200, 199, 'Ересектердің, балалардың физикалық медицина және реабилитациясы ', 'Физическая медицина и реабилитация взрослая, детская ', 'Physical medicine and rehabilitation', 'Fiziksel Tıp ve Rehabilitasyon', '199-fiziksel-tip-ve-rehabilitasyon', 0, 0, '7R01117');
INSERT INTO `tb_birim_agaci_copy4` VALUES (201, 199, 'Ересектердің, балалардың неврологиясы', 'Неврология взрослая, детская ', 'Neurology ', 'Nöroloji', '199-noroloji', 0, 0, '7R01104');
INSERT INTO `tb_birim_agaci_copy4` VALUES (202, 199, 'Ересектер мен балалар психиатриясы ', 'Психиатрия взрослая, детская ', 'Psychiatry ', 'Psikiyatri', '199-psikiyatri', 0, 0, '7R01113');
INSERT INTO `tb_birim_agaci_copy4` VALUES (203, 174, 'Акушерлік гинекология кафедрасы', 'Кафедра акушерской гинекологии', 'Department of Obstetric gynecology', 'Obstetrik Jinekoloji Bölümü', '174-obstetrik-jinekoloji-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (204, 203, 'Ересектердің, балалардың акушерия және гинекологиясы ', 'Акушерство и гинекология взрослая, детская', 'Obstetrics and Gynecology ', 'Kadın Hastalıkları ve Jinekoloji ', '203-kadin-hastaliklari-ve-jinekoloji', 0, 0, '7R01102');
INSERT INTO `tb_birim_agaci_copy4` VALUES (205, 174, 'Профилактикалық медицина және стоматологиялық пәндер кафедрасы', 'Кафедра профилактической медицины и стоматологических дисциплин', 'Department of Preventive medicine and dental disciplines', 'Önleyici Tıp ve Diş Hekimliği Disiplinleri Bölümü', '174-onleyici-tip-ve-dis-hekimligi-disiplinleri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (206, 205, 'Терапиялық стоматология ', 'Терапевтическая стоматология ', 'Therapeutic dentistry', 'Terapötik Diş Hekimliği', '205-terapotik-dis-hekimligi', 0, 0, '7R01130');
INSERT INTO `tb_birim_agaci_copy4` VALUES (207, 174, 'Арнайы хирургиялық пәндер кафедрасы', 'Кафедра специальных хирургических дисциплин', 'Department of Special surgical disciplines', 'Özel Cerrahi Disiplinler Bölümü', '174-ozel-cerrahi-disiplinler-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (208, 207, 'Ересектердің, балалардың кардиохирургиясы ', 'Кардиохирургия взрослая, детская ', 'Cardiac surgery', 'Kalp Damar Cerrahisi', '207-kalp-damar-cerrahisi', 0, 0, '7R01115');
INSERT INTO `tb_birim_agaci_copy4` VALUES (209, 207, 'Ересектердің, балалардың оториноларингологиясы ', 'Оториноларингология взрослая, детская', 'Otorhinolaryngology ', 'Kulak Burun Boğaz', '207-kulak-burun-bogaz', 0, 0, '7R01119');
INSERT INTO `tb_birim_agaci_copy4` VALUES (210, 207, 'Ересектердің онкологиясы ', 'Онкология взрослая', 'Adult oncology ', 'Onkoloji', '207-onkoloji', 0, 0, '7R01124');
INSERT INTO `tb_birim_agaci_copy4` VALUES (211, 207, 'Ересектердің, балалардың травматология-ортопедиясы ', 'Травматология-ортопедия взрослая, детская ', 'Traumatology-orthopedics', 'Travmatoloji ve Ortopedi', '207-travmatoloji-ve-ortopedi', 0, 0, '7R01120');
INSERT INTO `tb_birim_agaci_copy4` VALUES (212, 207, 'Ересектердің, балалардың урология және андрологиясы ', 'Урология и андрология взрослая, детская ', 'Urology and andrology', 'Üroloji ve Androloji', '207-uroloji-ve-androloji', 0, 0, '7R01121');
INSERT INTO `tb_birim_agaci_copy4` VALUES (213, 174, 'Педиатрия кафедрасы', 'Кафедра педиатрии', 'Department of Pediatrics', 'Pediatri Bölümü', '174-pediatri-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (214, 213, 'Неонатология ', 'Неонатология ', 'Neonatology', 'Neonatoloji', '213-neonatoloji', 0, 0, '7R01125');
INSERT INTO `tb_birim_agaci_copy4` VALUES (215, 213, 'Педиатрия ', 'Педиатрия ', 'Pediatrics', 'Pediatri', '213-pediatri', 0, 0, '7R01101');
INSERT INTO `tb_birim_agaci_copy4` VALUES (216, 4, 'Инженерия факультеті', 'Факультет инженерии', 'Faculty of Engineering', 'Mühendislik Fakültesi', '4-muhendislik-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (217, 216, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '216-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (218, 217, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '217-bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (219, 218, 'Ақпаратты өңдеу және деректерді визуализациялау ', 'Обработка информации и визуализация данных ', 'Information Processing and Data Visualization', 'Bilgi Yönetimi ve Veri Görselleştirme', '218-bilgi-yonetimi-ve-veri-gorsellestirme', 0, 0, '6B06181');
INSERT INTO `tb_birim_agaci_copy4` VALUES (220, 218, 'Компьютерлік инженерия ', 'Компьютерная инженерия ', 'Computer Enginering', 'Bilgisayar Mühendisliği ', '218-bilgisayar-muhendisligi', 0, 0, '6B06182');
INSERT INTO `tb_birim_agaci_copy4` VALUES (221, 218, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '218-bilisim-sistemleri', 0, 0, '6B06151');
INSERT INTO `tb_birim_agaci_copy4` VALUES (222, 217, 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '217-elektrik-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (223, 222, 'Электр энергетика', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', '222-elektrik-enerjisi-muhendisligi', 0, 0, '6B07153');
INSERT INTO `tb_birim_agaci_copy4` VALUES (224, 222, 'Машина жасау', 'Машиностроение', 'Mechanical Engineering', 'Makine Mühendisliği ', '222-makine-muhendisligi', 0, 0, '6B07189');
INSERT INTO `tb_birim_agaci_copy4` VALUES (225, 222, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Kontrol', '222-otomasyon-ve-kontrol', 0, 0, '6B07154');
INSERT INTO `tb_birim_agaci_copy4` VALUES (226, 216, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '216-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (227, 226, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '226-bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (228, 227, 'Информатика (Жаратылыстану ғылымдары)', 'Информатика (Педагогические науки) ', 'Computer Science', 'Bilgisayar Mühendisliği ', '227-bilgisayar-muhendisligi', 0, 0, '7M06127');
INSERT INTO `tb_birim_agaci_copy4` VALUES (229, 227, 'Ақпараттық жүйелер', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '227-bilisim-sistemleri', 0, 0, '7M06128');
INSERT INTO `tb_birim_agaci_copy4` VALUES (230, 226, 'Электр инженериясы кафедрасы', 'Кафедра электроинженерии', 'Department of Electrical Engineering', 'Elektrik Mühendisliği Bölümü', '226-elektrik-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (231, 230, 'Электр энергетикасы', 'Электроэнергетика', 'Electrical Power Engineering', 'Elektrik Enerjisi Mühendisliği ', '230-elektrik-enerjisi-muhendisligi', 0, 0, '7M07130');
INSERT INTO `tb_birim_agaci_copy4` VALUES (232, 230, 'Автоматтандыру және басқару', 'Автоматизация и управление', 'Automation and Management', 'Otomasyon ve Yönetim ', '230-otomasyon-ve-yonetim', 0, 0, '7M07158');
INSERT INTO `tb_birim_agaci_copy4` VALUES (233, 216, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '216-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (234, 233, 'Компьютерлік инженерия кафедрасы', 'Кафедра компьютерной инженерии', 'Department of Computer Engineering', 'Bilgisayar Mühendisliği Bölümü', '233-bilgisayar-muhendisligi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (235, 234, 'Ақпараттық жүйелер ', 'Информационные системы', 'Information Systems', 'Bilişim Sistemleri ', '234-bilisim-sistemleri', 0, 0, '8D06115');
INSERT INTO `tb_birim_agaci_copy4` VALUES (236, 4, 'Спорт және өнер факультеті', 'Факультет спорта и искусства', 'Faculty of Sports and Art', 'Spor ve Sanat Fakültesi', '4-spor-ve-sanat-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (237, 236, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '236-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (238, 237, 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical Education', 'Beden Eğitimi Bölümü', '237-beden-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (239, 238, 'Денешынықтыру және спорт', 'Физическая культура и спорт', 'Physical Education and Sports', 'Beden Eğitimi ve Spor Öğretmenliği', '238-beden-egitimi-ve-spor-ogretmenligi', 0, 0, '6B01405');
INSERT INTO `tb_birim_agaci_copy4` VALUES (240, 238, 'Дене шынықтыру және бастапқы әскери дайындық', 'Физическая культура и начальная военная подготовка', 'Physical Education and Initial Military Training', 'Beden Eğitimi ve Temel Askeri Hazırlık Öğretmenliği ', '238-beden-egitimi-ve-temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01485');
INSERT INTO `tb_birim_agaci_copy4` VALUES (241, 238, 'Бастапқы әскери дайындық', 'Начальная военная подготовка', 'Basic Military Training', 'Temel Askeri Hazırlık Öğretmenliği ', '238-temel-askeri-hazirlik-ogretmenligi', 0, 0, '6B01404');
INSERT INTO `tb_birim_agaci_copy4` VALUES (242, 237, 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine Arts', 'Güzel Sanatlar Bölümü', '237-guzel-sanatlar-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (243, 242, 'Сән өнері', 'Декоративное искусство', 'Decorative Art', 'Dekoratif Sanatı', '242-dekoratif-sanati', 0, 0, '6B02125');
INSERT INTO `tb_birim_agaci_copy4` VALUES (244, 242, 'Сәндік-қолданбалы өнері', 'Декоративно-прикладное искусство', 'Decorative and Applied Art', 'Dekoratif Sanatlar', '242-dekoratif-sanatlar', 0, 0, '6B02184');
INSERT INTO `tb_birim_agaci_copy4` VALUES (245, 242, 'Кәсіптік оқыту', 'Профессиональное обучение', 'Professional Training', 'Mesleki Eğitim Öğretmenliği ', '242-mesleki-egitim-ogretmenligi', 0, 0, '6B01407');
INSERT INTO `tb_birim_agaci_copy4` VALUES (246, 242, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher Training in Art Work and Technical Drawing', 'Resim Öğretmenliği ', '242-resim-ogretmenligi', 0, 0, '6B01408');
INSERT INTO `tb_birim_agaci_copy4` VALUES (247, 242, 'Көркем еңбек және графикалық жобалау ', 'Художественный труд и графическое проектирование ', 'Artistic Work and Graphic Design', 'Sanatsal Çalışma ve Grafik Çizim Öğretmenliği ', '242-sanatsal-calisma-ve-grafik-cizim-ogretmenligi', 0, 0, '6B01478');
INSERT INTO `tb_birim_agaci_copy4` VALUES (248, 242, 'Дизайн', 'Дизайн', 'Design', 'Tasarım', '242-tasarim', 0, 0, '6B02126');
INSERT INTO `tb_birim_agaci_copy4` VALUES (249, 237, 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Performing Arts', 'Sahne Sanatları Bölümü', '237-sahne-sanatlari-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (250, 249, 'Дәстүрлі музыка өнері (Халық әні)', 'Традиционное музыкальное искусство(Народное пение)', 'Traditional Music Art', 'Geleneksel Müzik Sanatı', '249-geleneksel-muzik-sanati', 0, 0, '6B02122');
INSERT INTO `tb_birim_agaci_copy4` VALUES (251, 249, 'Хореография', 'Хореография', 'Choreography', 'Koreografi', '249-koreografi', 0, 0, '6B02124');
INSERT INTO `tb_birim_agaci_copy4` VALUES (252, 249, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', '249-muzik-ogretmenligi', 0, 0, '6B01406');
INSERT INTO `tb_birim_agaci_copy4` VALUES (253, 249, 'Актерлік өнер', 'Актерское искусство', 'Acting Art', 'Oyunculuk Sanatı', '249-oyunculuk-sanati', 0, 0, '6B02123');
INSERT INTO `tb_birim_agaci_copy4` VALUES (254, 249, 'Эстрада өнері', 'Искусство эстрады', 'Pop Art ', 'Pop Müzik Sanatı ', '249-pop-muzik-sanati', 0, 0, '6B02165');
INSERT INTO `tb_birim_agaci_copy4` VALUES (255, 249, 'Вокалдық өнер', 'Вокальное искусство', 'Vocal Art', 'Şan Sanatı ', '249-san-sanati', 0, 0, '6B02121');
INSERT INTO `tb_birim_agaci_copy4` VALUES (256, 236, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '236-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (257, 256, 'Дене мәдениеті кафедрасы', 'Кафедра физической культуры', 'Department of Physical education', 'Beden Eğitimi Bölümü', '256-beden-egitimi-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (258, 257, 'Дене шынықтыру және спорт', 'Физическая культура и спорт', 'Physical Culture and Sport', 'Beden Eğitimi ve Spor Öğretmenliği', '257-beden-egitimi-ve-spor-ogretmenligi', 0, 0, '7M01404');
INSERT INTO `tb_birim_agaci_copy4` VALUES (259, 256, 'Бейнелеу өнері кафедрасы', 'Кафедра изобразительного искусство', 'Department of Fine arts', 'Güzel Sanatlar Bölümü', '256-guzel-sanatlar-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (260, 259, 'Бейнелеу өнері және сызу', 'Изобразительное искусство и черчение', 'Teacher training in Art work and technical drawing', 'Resim Öğretmenliği ', '259-resim-ogretmenligi', 0, 0, '7M01405');
INSERT INTO `tb_birim_agaci_copy4` VALUES (261, 256, 'Орындаушылық өнер кафедрасы', 'Кафедра исполнительского искусства', 'Department of Executive search', 'Sahne Sanatları Bölümü', '256-sahne-sanatlari-bolumu', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (262, 261, 'Музыкалық білім', 'Музыкальное образование', 'Music Education', 'Müzik Öğretmenliği ', '261-muzik-ogretmenligi', 0, 0, '7M01434');
INSERT INTO `tb_birim_agaci_copy4` VALUES (263, 4, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp Fakültesi', '4-tip-fakultesi', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (264, 263, 'Бакалавриат', 'Бакалавриат', 'Undergraduate', 'Lisans', '263-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (265, 264, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '264-tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (266, 265, 'Жалпы медицина', 'Общая медицина', 'General Medicine', 'Genel Tıp', '265-genel-tip', 0, 0, '6B10155');
INSERT INTO `tb_birim_agaci_copy4` VALUES (267, 265, 'Мейіргер ісі', 'Сестринское дело', 'Nursing', 'Hemşirelik', '265-hemsirelik', 0, 0, '6B10173');
INSERT INTO `tb_birim_agaci_copy4` VALUES (268, 265, 'Медицина (ВМ086)', 'Медицина (ВМ086)', 'Medicine', 'Tıp', '265-tip', 0, 0, '6B10188');
INSERT INTO `tb_birim_agaci_copy4` VALUES (269, 263, 'Магистратура', 'Магистратура', 'Master', 'Yüksek Lisans', '263-yuksek-lisans', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (270, 269, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '269-tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (271, 270, 'Қоғамдық денсаулық сақтау ', 'Общественное здравоохранение ', 'Public Health', 'Halk Sağlığı', '270-halk-sagligi', 0, 0, '7M10144');
INSERT INTO `tb_birim_agaci_copy4` VALUES (272, 270, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', '270-tip', 0, 0, '7M10131');
INSERT INTO `tb_birim_agaci_copy4` VALUES (273, 263, 'Докторантура', 'Докторантура', 'PhD', 'Doktora', '263-doktora', 1, 1, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (274, 273, 'Медицина факультеті', 'Факультет медицины ', 'Faculty of Medical', 'Tıp', '273-tip', 1, 0, '');
INSERT INTO `tb_birim_agaci_copy4` VALUES (275, 274, 'Қоғамдық денсаулық сақтау', 'Общественное здравоохранение', 'Public Health', 'Halk sağlığı', '274-halk-sagligi', 0, 0, '8D10111');
INSERT INTO `tb_birim_agaci_copy4` VALUES (276, 274, 'Медицина', 'Медицина ', 'Medicine', 'Tıp', '274-tip', 0, 0, '8D10110');

-- ----------------------------
-- Table structure for tb_birim_sayfa_icerikleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_sayfa_icerikleri`;
CREATE TABLE `tb_birim_sayfa_icerikleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int NULL DEFAULT NULL,
  `sayfa_id` int UNSIGNED NULL DEFAULT NULL,
  `baslik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `icerik` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `baslik_kz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `baslik_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `baslik_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `icerik_kz` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `icerik_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `icerik_ru` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `aktif` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_sayfa_icerikleri
-- ----------------------------
INSERT INTO `tb_birim_sayfa_icerikleri` VALUES (1, 9, 8, 'Hakkımızda', '<figure class=\"image image_resized\"><img src=\"/hr/admin/ckeditor_files/files/muhendislik.jpg\"></figure><p style=\"text-align:justify;\"><span style=\"background-color:rgb(255,255,255);color:rgb(24,28,50);font-family:Poppins, Helvetica, sans-serif;font-size:14.95px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Mütevelli Heyetimizin kararıyla Ekim-2004 tarihinde “Bilişim Teknolojileri ve Mühendislik Fakültesi” olarak kurulan Fakültemizin ismi Üniversitemiz Senatosunun kararıyla 2014-2015 Eğitim-Öğretim döneminden başlayarak “Mühendislik Fakültesi” olarak değiştirildi. Fakültemiz, Lisans ve lisansüstü seviyede, çağdaş, kapsamlı ve güçlü mühendislik eğitimi vermek, nitelikli, özgün ve yenilikçi araştırmalar yaparak bilimsel ve teknolojik gelişmeye katkı sağlamak, sanayi ve paydaş kurum/kuruluşlar ile yakın işbirliği kurarak ulusal/uluslararası kalkınmaya katkı sağlamak misyonu ile eğitim hayatına devam etmektedir.</span></span></p>', 'sdfsdf', 'About Us', 'sdfsdf', 'fewrwerdfgdfg', '<p>About Us</p>', 'werwertert4356456', NULL);
INSERT INTO `tb_birim_sayfa_icerikleri` VALUES (2, 216, 20, 'Tanıtım', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfa_icerikleri` VALUES (3, 216, 19, 'Dökümanlar ve Formlar', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfa_icerikleri` VALUES (4, 216, 121, 'dvczxcv', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_birim_sayfalari
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_sayfalari`;
CREATE TABLE `tb_birim_sayfalari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int UNSIGNED NULL DEFAULT NULL,
  `ust_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  `link` tinyint NULL DEFAULT 0,
  `link_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `harici` tinyint NULL DEFAULT 0,
  `aktif` tinyint NULL DEFAULT 1,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_sayfalari
-- ----------------------------
INSERT INTO `tb_birim_sayfalari` VALUES (7, 216, 0, 'Fakülte', 'fakulte', 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (8, 216, 7, 'Hakkımızda', 'hakkimizda', 0, 1, 0, '', 0, 1, 'a', 'b', 'c');
INSERT INTO `tb_birim_sayfalari` VALUES (9, 216, 7, 'Tarihçe', 'tarihce', 0, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (12, 216, 7, 'Dekanın Mesajı', 'dekaninmesaji', 0, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (16, 216, 7, 'Misyon ve Vizyon', 'misyon-ve-vizyon', 0, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (17, 216, 7, 'Değerlerimiz', 'degerlerimiz', 0, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (18, 216, 7, 'Öğrenme Çıktıları', 'ogrenme-ciktilari', 0, 6, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (19, 216, 7, 'Dökümanlar ve Formlar', 'dokumanlar-ve-formlar', 0, 7, 0, '', 0, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (20, 216, 7, 'Tanıtım', 'tanitim', 0, 8, 0, '', 0, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (21, 216, 0, 'Yönetim', 'yonetim', 1, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (22, 216, 21, 'Fakülte Yönetimi', 'fakulte-yonetimi', 0, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (23, 216, 21, 'Fakülte Kurulları', 'fakulte-kurullari', 0, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (24, 216, 21, 'Organizasyon Şeması', 'organizasyon-semasi', 0, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (25, 216, 21, 'Öğrenci Temsilcileri', 'ogrenci-temsilcileri', 0, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (26, 216, 0, 'Bölümler', 'bolumler', 1, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (27, 216, 0, 'Öğrenci', 'ogrenci', 1, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (28, 216, 27, 'Eğitim ve Öğretim', 'egitim-ve-ogretim', 0, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (29, 216, 27, 'Önemli Bilgiler', 'onemli-bilgiler', 0, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (30, 216, 27, 'Belge Sağlama', 'belge-saglama', 0, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (31, 216, 27, 'Kariyer Gelişimi', 'kariyer-gelisimi', 0, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (32, 216, 27, 'Staj', 'staj', 0, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (33, 216, 27, 'Öğrenci İşleri Daire Başkanlığı', 'ogrenci-isleri-daire-baskanligi', 0, 6, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (34, 216, 27, 'Aday Öğrenci', 'aday-ogrenci', 0, 7, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (35, 216, 0, 'İletişim', 'iletisim', 0, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari` VALUES (40, 1, 0, 'Üniversitemiz', 'universitemiz', 1, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (41, 1, 40, 'Hakkımızda', 'hakkimizda', 1, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (43, 1, 41, 'Başkandan Mesaj', 'baskandan-mesaj', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (45, 1, 41, 'Ahmet Yesevi Kimdir', 'ahmet-yesevi-kimdir', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (46, 1, 41, 'Vizyonumuz', 'vizyonumuz', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (47, 1, 41, 'Misyonumuz', 'misyonumuz', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (48, 1, 41, 'Hakkımızda', 'hakkimizda', 0, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (49, 1, 41, 'Temel Değerlerimiz', 'temel-degerlerimiz', 0, 6, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (50, 1, 41, 'Tarihçe', 'tarihce', 0, 7, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (51, 1, 41, 'Logolar', 'logolar', 0, 8, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (53, 1, 40, 'Yönetim', 'yonetim', 1, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (54, 1, 53, 'Mütevelli Heyeti Başkanı', 'mutevelli-heyeti-baskani', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (55, 1, 53, 'Rektör', 'rektor', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (56, 1, 53, 'Rektör Vekili', 'rektor-vekili', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (57, 1, 53, 'Eski Başkanlarımız', 'eski-baskanlarimiz', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (58, 1, 40, 'Mevzuat', 'mevzuat', 1, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (59, 1, 58, 'Tüzük', 'tuzuk', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (60, 1, 58, 'Kişisel Verilerin Korunması', 'kisisel-verilerin-korunmasi', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (61, 1, 58, 'Kurum İçi Web', 'kurum-ici-web', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (62, 1, 40, 'Yayınlar', 'yayinlar', 1, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (63, 1, 62, 'Kitap', 'kitap', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (64, 1, 62, 'Dergi', 'dergi', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (65, 1, 62, 'Rapor', 'rapor', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (66, 1, 62, 'Bildiri', 'bildiri', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (67, 1, 62, 'Video & Müzik', 'video-muzik', 0, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (69, 1, 0, 'Öğrenci', 'ogrenci', 1, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (70, 1, 69, 'Aday Öğrenci', 'aday-ogrenci', 1, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (71, 1, 70, 'Tanıtım', 'tanitim', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (72, 1, 70, 'T.C. Vatandaşları', 't-c-vatandaslari', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (73, 1, 70, 'K.C. Vatandaşları', 'k-c-vatandaslari', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (74, 1, 70, 'Diğer Ülke Vatandaşları', 'diger-ulke-vatandaslari', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (75, 1, 70, 'Kayıt ve Kabul İşlemleri', 'kayit-ve-kabul-islemleri', 0, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (76, 1, 70, 'Diploma Denkliği', 'diploma-denkligi', 0, 6, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (77, 1, 70, 'Taban ve Tavan Puanlar', 'taban-ve-tavan-puanlar', 0, 7, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (78, 1, 70, 'Hazırlık Sınıfı', 'hazirlik-sinifi', 0, 8, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (79, 1, 69, 'Kayıt', 'kayit', 1, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (80, 1, 79, 'Ders Kaydı', 'ders-kaydi', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (81, 1, 79, 'Öğrenim Ücretleri', 'ogrenim-ucretleri', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (82, 1, 69, 'Akademik İşler Daire Başkanlığı', 'akademik-isler-daire-baskanligi', 1, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (83, 1, 82, 'Eğitim Faaliyetleri Bölümü', 'egitim-faaliyetleri-bolumu', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (84, 1, 82, 'Öğrenci İşleri Birimi (Kayıt Ofisi)', 'ogrenci-isleri-birimi-kayit-ofisi', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (85, 1, 82, 'Lisansüstü Eğitim Bölümü', 'lisansustu-egitim-bolumu', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (86, 1, 82, 'Metodoloji Çalışmaları Organizasyon Bölümü', 'metodoloji-calismalari-organizasyon-bolumu', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (87, 1, 69, 'Değişim Programları', 'degisim-programlari', 1, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (88, 1, 87, 'Akademik Değişim Birimi', 'akademik-degisim-birimi', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (89, 1, 87, 'Mevlana Değişim Programı', 'mevlana-degisim-programi', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (90, 1, 87, 'Orhun Değişim Programı', 'orhun-degisim-programi', 0, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (91, 1, 87, 'İç Akademi Değişim Programı', 'ic-akademi-degisim-programi', 0, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (92, 1, 87, 'K.C. Eğitim ve Yükseköğretim Bakanlığı Değişim Programı', 'k-c-egitim-ve-yuksekogretim-bakanligi-degisim-programi', 0, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (93, 1, 0, 'İletişim', 'iletisim', 1, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (94, 1, 93, 'Birimler', 'birimler', 1, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (95, 1, 94, 'Mütevelli Heyeti Başkanlığı', 'mutevelli-heyeti-baskanligi', 0, 1, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (96, 1, 94, 'Rektörlük', 'rektorluk', 0, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (97, 1, 93, 'Kampüsler', 'kampusler', 1, 2, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (98, 1, 93, 'Sosyal Medya', 'sosyal-medya', 1, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (99, 1, 69, 'Kampüste Yaşam', 'kampuste-yasam', 1, 5, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (100, 1, 69, 'Uluslararası İlişkiler', 'uluslararasi-iliskiler', 1, 6, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (115, 1, 0, 'Akademik', 'akademik', 1, 3, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (116, 1, 0, 'İdari', 'idari', 1, 4, NULL, NULL, NULL, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (122, 218, 0, 'Programlar', 'programlar', 1, 3, 0, NULL, 0, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (123, 218, 0, 'Bölüm', 'bolum', 1, 1, 0, NULL, 0, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (124, 218, 0, 'Akademik', 'akademik', 1, 2, 0, NULL, 0, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (126, 218, 0, 'Öğrenci', 'ogrenci', 1, 4, 0, NULL, 0, 1, '', '', '');
INSERT INTO `tb_birim_sayfalari` VALUES (127, 218, 0, 'İletişim', 'iletisim', 0, 5, 0, NULL, 0, 1, '', '', '');

-- ----------------------------
-- Table structure for tb_birim_sayfalari_2
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_sayfalari_2`;
CREATE TABLE `tb_birim_sayfalari_2`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kisa_ad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  `grup` tinyint NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_sayfalari_2
-- ----------------------------
INSERT INTO `tb_birim_sayfalari_2` VALUES (1, 0, 'Akademik Birimler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (2, 0, 'İdari Birimler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (3, 1, 'Fakülteler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (4, 1, 'Enstitüler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (5, 1, 'Merkezler', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (7, 1, 'Meslek Yüksekokulları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (8, 3, 'Hazırlık Okulu', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (9, 3, 'Mühendislik Fakültesi', 'muhendislik-fakultesi', 1, 0, 'deneme', 'Faculty of Engineering', 'Rusça Mühendislikkk');
INSERT INTO `tb_birim_sayfalari_2` VALUES (10, 3, 'Fen Bilimleri Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (11, 3, 'Filoloji Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (12, 3, 'İnsan ve Toplum Bilimleri Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (13, 3, 'İlahiyat Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (14, 3, 'Spor ve Sanat Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (15, 3, 'Sosyal Bilimler Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (16, 3, 'Diş Hekimliği Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (17, 3, 'Tıp Fakültesi', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (18, 3, 'Lisansüstü Tıp Eğitimi Fakültesi (Çimkent)', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (19, 4, 'Türkoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (20, 4, 'Ekoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (21, 4, 'Avrasya Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (22, 4, 'Arkeoloji Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (23, 4, 'Tıbbi Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (24, 4, 'Fen Bilimleri Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (25, 4, 'Yesevi Araştırma Enstitüsü', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (27, 8, 'Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (29, 27, 'Türk Dili Bölümü', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (30, 27, 'Kazak ve Rus Dili Bölümü	', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (31, 27, 'İngiliz Dili Bölümü', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (32, 9, 'Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (33, 9, 'Yüksek Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (34, 9, 'Doktora Programları', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (37, 32, 'Bilgisayar Mühendisliği', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (38, 7, 'Ahmet Yesevi Meslek Yüksekokulu', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (39, 2, 'Bilgi İşlem Daire Baişkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (40, 2, 'Öğreci İşleri Daire Başkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (41, 2, 'Personel İşleri Daire Başkanlığı', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (42, 2, 'Satınalma Müdürlüğü', NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_birim_sayfalari_2` VALUES (43, 8, 'Yüksek Lisans Programları', NULL, 1, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_birim_yetkileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_birim_yetkileri`;
CREATE TABLE `tb_birim_yetkileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `personel_id` int NULL DEFAULT NULL,
  `birim_idler` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_birim_yetkileri
-- ----------------------------
INSERT INTO `tb_birim_yetkileri` VALUES (1, 4, '11,31,83,192,193,84,194,195,196,197,85,198,200,32,86,201,87,202,203,204,88,205,206,33,89,207,90');
INSERT INTO `tb_birim_yetkileri` VALUES (2, 3, '10,28,75,77');

-- ----------------------------
-- Table structure for tb_bolumler
-- ----------------------------
DROP TABLE IF EXISTS `tb_bolumler`;
CREATE TABLE `tb_bolumler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_bolumler
-- ----------------------------
INSERT INTO `tb_bolumler` VALUES (1, 1, 1, 'Cerrahi Tıp Bilimleri Bölümü', 1);
INSERT INTO `tb_bolumler` VALUES (2, 1, 1, 'Dahili Tıp Bilimleri Bölümü', 1);
INSERT INTO `tb_bolumler` VALUES (9, 1, 1, 'Temel T?p', 0);

-- ----------------------------
-- Table structure for tb_ceviriler
-- ----------------------------
DROP TABLE IF EXISTS `tb_ceviriler`;
CREATE TABLE `tb_ceviriler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `turu` tinyint NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 421 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ceviriler
-- ----------------------------
INSERT INTO `tb_ceviriler` VALUES (251, 2, 'AYU İnsan Kaynakları', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (252, 2, 'MENÜ', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (253, 2, 'Anasayfa', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (254, 2, 'Panel Çevirileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (255, 2, 'Web Çevirileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (256, 2, 'Görevler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (257, 2, 'Birim Yetkileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (258, 2, 'Birim Ağacı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (259, 2, 'Birim Sayfaları', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (260, 2, 'Duyurular', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (261, 2, 'Manşetler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (262, 2, 'Etkinlikler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (263, 2, 'Genel Ayarlar', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (264, 2, 'Personeller', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (265, 2, 'Öğrenim Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (266, 2, 'Sabit Tanımlar', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (267, 2, 'Görev Kategorileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (268, 2, 'Sistem Kullanıcıları', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (269, 2, 'Sistem İşlemleri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (270, 2, 'Yetkiler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (271, 2, 'Modul Yetkileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (272, 2, 'Dikkat!', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (273, 2, 'Bu kaydı silmek istediğinize emin misiniz?', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (274, 2, 'Hayır', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (275, 2, 'Evet', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (276, 2, 'Birimler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (277, 2, 'Görev Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (278, 2, 'Lütfen Birim Seçiniz', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (279, 2, 'Personel', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (280, 2, 'Görev', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (281, 2, 'Düzenle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (282, 2, 'Sil', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (283, 2, 'Seçiniz', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (284, 2, 'Kaydet', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (285, 2, 'Lütfen Dikkat', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (286, 2, 'In No', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (287, 2, 'Adı Soyadı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (288, 2, 'Yetkili Olduğu Birimler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (289, 2, 'Profil', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (290, 2, 'Personel Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (291, 2, 'Birim', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (292, 2, 'Birim Ekle / Düzenle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (293, 2, 'Dil', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (294, 2, 'Üst Birim', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (295, 2, 'Birim Adı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (296, 2, 'Alt birimleri olacak.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (297, 2, 'asdasdasdasd', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (298, 2, 'Sadece gruplama için kullanılacak.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (299, 2, 'Eğer bu bir birim değil, sadece gruplama yapmak için kullanılacaksa işaretleyiniz.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (300, 2, 'Bu Kaydı silmeniz durumunda kategori Altında bulunan diğer kategoriler silinecektir.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (301, 2, 'İptal', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (302, 2, 'Yeni Birim Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (303, 2, 'Bu birimin alt birimleri olacaksa işaretlenmelidir.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (304, 2, 'Birim Düzenle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (305, 2, 'Güncelle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (306, 2, 'Duyuru Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (307, 2, 'Başlık', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (308, 2, 'Foto', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (309, 2, 'Eklediğiniz görsel 555 x 320 boyutlarında olmalıdır.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (310, 2, 'Tarih', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (311, 2, 'İçerik', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (312, 2, 'Manşet Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (313, 2, 'Etkinlik Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (314, 2, 'Genel Ayarlar Düzenle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (315, 2, 'Logo', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (316, 2, 'Footer Logo', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (317, 2, 'Footer Sağ Alt Logo', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (318, 2, 'Footer Sağ Alt Logo Link', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (319, 2, 'Map', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (320, 2, 'Adres', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (321, 2, 'Tel', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (322, 2, 'Email', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (323, 2, 'Facebook', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (324, 2, 'Twitter', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (325, 2, 'Instagram', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (326, 2, 'Linkedin', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (327, 2, 'Youtube', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (328, 2, 'Slogan', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (329, 2, 'Anasayfa Başlık', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (330, 2, 'Anasayfa İçerik', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (331, 2, 'Sayaç 1', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (332, 2, 'Sayaç 1 Metin', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (333, 2, 'Sayaç 2', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (334, 2, 'Sayaç 2 Metin', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (335, 2, 'Sayaç 3', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (336, 2, 'Sayaç 3 Metin', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (337, 2, 'Sayaç 4', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (338, 2, 'Sayaç 4 Metin', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (339, 2, 'Buton 1', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (340, 2, 'Buton 1 Url', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (341, 2, 'Buton 2', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (342, 2, 'Buton 2 Url', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (343, 2, 'Yeni Sayfa Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (344, 2, 'Üst Sayfa', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (345, 2, 'Adı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (346, 2, 'Kategori Mi?', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (347, 2, 'Sayfa Düzenle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (348, 2, 'Sayfalar', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (349, 2, 'Sayfa Ekle', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (350, 2, 'Sayfa Ayarları', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (351, 2, 'Aktif', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (352, 2, 'İşaretlenmezse Sayfa Yayınlanmaz', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (353, 2, 'Harici Sayfa', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (354, 2, 'Menüde görünmeyecek sayfalar için işaretlenmelidir.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (355, 2, 'Link', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (356, 2, 'Bu alana Link eklenirse menü bu linke yönlendirilecektir.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (357, 2, 'Sayfa İçeriği', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (358, 2, 'Fotoğraf değiştirmek için fotoğrafa tıklayınız', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (359, 2, 'Personel Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (360, 2, 'Personel Niteliği', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (361, 2, 'Personel Türü', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (362, 2, 'Kişisel Bilgiler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (363, 2, 'Uyruk', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (364, 2, 'In Numarası', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (365, 2, 'Vatandaşlık No', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (366, 2, 'Pasaport No', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (367, 2, 'Ünvan', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (368, 2, 'Soyadı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (369, 2, 'Cinsiyet', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (370, 2, 'Kadın', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (371, 2, 'Erkek', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (372, 2, 'Doğum Tarihi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (373, 2, 'Medeni Durumu', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (374, 2, 'Bekar', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (375, 2, 'Evli', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (376, 2, 'Kan Grubu', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (377, 2, 'Araç Plaka', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (378, 2, 'Engel Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (379, 2, 'Engel Durumu', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (380, 2, 'Yok', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (381, 2, 'Var', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (382, 2, 'Engel Türü', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (383, 2, 'Eğitim Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (384, 2, 'Eğitim Düzeyi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (385, 2, 'İletişim Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (386, 2, 'GSM 1', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (387, 2, 'GSM 2', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (388, 2, 'İş Telefonu', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (389, 2, 'Ev Adresi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (390, 2, 'İş Adresi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (391, 2, 'Sözleşme Bilgileri', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (392, 2, 'İşe Başlama Tarihi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (393, 2, 'Sözleşme Başlama Tarihi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (394, 2, 'Sözleşme Bitiş Tarihi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (395, 2, 'Şifre Değiştir', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (396, 2, 'Şifre', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (397, 1, 'Duyurular', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (398, 1, 'Anasayfa', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (399, 1, 'Bizi takip et', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (400, 1, 'AYU Portal', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (401, 1, 'Öğrenci', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (402, 1, 'Daha Fazla', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (403, 1, 'Son Duyurular', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (404, 1, 'Tüm Duyurular', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (405, 1, 'Bölüm', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (406, 1, 'İşe Yerleşme Oranı', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (407, 1, 'Öğretim Üyesi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (408, 1, 'Güncel Etkinlikler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (409, 1, 'Etkinlikler', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (410, 1, 'Yer', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (411, 1, 'Etkinliği Gör', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (412, 1, 'Bizi ara', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (413, 1, 'Email', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (414, 1, 'Adres', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (415, 1, 'Türk dünyasının parlayan yıldızı.', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (416, 1, 'Hızlı Bağlantılar', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (417, 1, 'Lokasyon', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (418, 1, 'Ahmet Yesevi Üniversitesi', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (419, 1, 'Gizlilik Politikası', NULL, NULL, NULL);
INSERT INTO `tb_ceviriler` VALUES (420, 1, 'Paylaş', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_ders_kategorileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_kategorileri`;
CREATE TABLE `tb_ders_kategorileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_kategorileri
-- ----------------------------
INSERT INTO `tb_ders_kategorileri` VALUES (1, 1, 'Zorunlu Ders', 1);
INSERT INTO `tb_ders_kategorileri` VALUES (2, 1, 'Seçmeli Ders', 1);
INSERT INTO `tb_ders_kategorileri` VALUES (3, 1, 'Alttan Ders', 0);

-- ----------------------------
-- Table structure for tb_ders_yili_donemleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_yili_donemleri`;
CREATE TABLE `tb_ders_yili_donemleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int NULL DEFAULT NULL,
  `ders_yili_id` int NULL DEFAULT NULL,
  `donem_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_yili_donemleri
-- ----------------------------
INSERT INTO `tb_ders_yili_donemleri` VALUES (1, 1, 1, 1);
INSERT INTO `tb_ders_yili_donemleri` VALUES (2, 1, 1, 2);
INSERT INTO `tb_ders_yili_donemleri` VALUES (3, 1, 1, 3);
INSERT INTO `tb_ders_yili_donemleri` VALUES (4, 1, 1, 4);
INSERT INTO `tb_ders_yili_donemleri` VALUES (5, 1, 1, 5);
INSERT INTO `tb_ders_yili_donemleri` VALUES (11, 1, 1, 6);
INSERT INTO `tb_ders_yili_donemleri` VALUES (12, 1, 3, 1);
INSERT INTO `tb_ders_yili_donemleri` VALUES (13, 1, 3, 2);

-- ----------------------------
-- Table structure for tb_ders_yillari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ders_yillari`;
CREATE TABLE `tb_ders_yillari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `baslangic_tarihi` date NULL DEFAULT NULL,
  `bitis_tarihi` date NULL DEFAULT NULL,
  `ilk_goruntulenecek` tinyint NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ders_yillari
-- ----------------------------
INSERT INTO `tb_ders_yillari` VALUES (1, 1, '2022 - 2023 Ders Yılı', '2022-09-19', '2023-06-19', 1, 1);
INSERT INTO `tb_ders_yillari` VALUES (3, 1, '2023 - 2024 Ders Yılı', '2023-09-17', '2024-06-20', 0, 1);

-- ----------------------------
-- Table structure for tb_dersler
-- ----------------------------
DROP TABLE IF EXISTS `tb_dersler`;
CREATE TABLE `tb_dersler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int NULL DEFAULT NULL,
  `anabilim_dali_id` int NULL DEFAULT NULL,
  `ders_kategori_id` int NULL DEFAULT NULL,
  `ders_kodu` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_dersler
-- ----------------------------
INSERT INTO `tb_dersler` VALUES (1, 1, 13, 1, 'TFANT101', 'Anatomi / Anatomy', 1);
INSERT INTO `tb_dersler` VALUES (2, 1, 14, 1, 'TFBFZ102', 'Biyofizik / Biophysics', 1);
INSERT INTO `tb_dersler` VALUES (3, 1, 15, 1, 'TFBIS103', 'Biyoistatistik / Biostatistics', 1);
INSERT INTO `tb_dersler` VALUES (4, 1, 16, 1, 'TFBIK104', 'Tıbbi Biyokimya / Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (5, 1, 44, 1, 'TFDAB105', 'Davranış Bilimleri / Behavioral Sciences', 1);
INSERT INTO `tb_dersler` VALUES (6, 1, 17, 1, 'TFFZY106', 'Fizyoloji / Physiology', 1);
INSERT INTO `tb_dersler` VALUES (7, 1, 33, 1, 'TFHSA107', 'Halk Sağlığı / Public Health', 1);
INSERT INTO `tb_dersler` VALUES (8, 1, 18, 1, 'TFHIE108', 'Histoloji-Embriyoloji / Histology and Embryology', 1);
INSERT INTO `tb_dersler` VALUES (9, 1, 19, 1, 'TFMIB109', 'Tıbbi Mikrobiyoloji / Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (10, 1, 21, 1, 'TFTIB110', 'Tıbbi Biyoloji / Medical Biology', 1);
INSERT INTO `tb_dersler` VALUES (11, 1, 43, 1, 'TFTIG111', 'Tıbbi Genetik / Medical Genetics', 1);
INSERT INTO `tb_dersler` VALUES (12, 1, 44, 1, 'TFTIT111', 'Tıbbi Terminoloji / Medical Terminology', 1);
INSERT INTO `tb_dersler` VALUES (13, 1, 23, 1, 'TFTE112', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (14, 1, 24, 1, 'TFTTE113', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (15, 1, 44, 1, 'TFİLE114', 'İletişim Becerisi / CommunicationSkills', 1);
INSERT INTO `tb_dersler` VALUES (16, 1, 13, 1, 'TFANT201', 'Anatomi / Anatomy', 1);
INSERT INTO `tb_dersler` VALUES (17, 1, 14, 1, 'TFBFZ202', 'Biyofizik / Biophysics', 1);
INSERT INTO `tb_dersler` VALUES (18, 1, 16, 1, 'TFBIK204', 'Biyokimya / Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (19, 1, 30, 1, 'TFFAR205', 'Farmakoloji / Pharmacology', 1);
INSERT INTO `tb_dersler` VALUES (20, 1, 17, 1, 'TFFIZ206', 'Fizyoloji / Physiology', 1);
INSERT INTO `tb_dersler` VALUES (21, 1, 18, 1, 'TFHIE207', 'Histoloji-Embriyoloji / Histology and Embryology', 1);
INSERT INTO `tb_dersler` VALUES (23, 1, 19, 1, 'TFMIK208', 'Mikrobiyoloji / Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (24, 1, 22, 1, 'TFPRZ209', 'Parazitoloji / Parasitology', 1);
INSERT INTO `tb_dersler` VALUES (25, 1, 20, 1, 'TFPAT210', 'Patoloji / Pathology', 1);
INSERT INTO `tb_dersler` VALUES (26, 1, 21, 1, 'TFTIB211', 'Tıbbi Biyoloji / Medical Biology', 1);
INSERT INTO `tb_dersler` VALUES (27, 1, 23, 1, 'TFTEG213', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (28, 1, 24, 1, 'TFTTE214', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (29, 1, 43, 1, 'TFTIG2015', 'Tıbbi Genetik / Medical Genetics', 1);
INSERT INTO `tb_dersler` VALUES (30, 1, 25, 1, 'TFACT301', 'Acil Tıp / Emergency Medicine', 1);
INSERT INTO `tb_dersler` VALUES (31, 1, 26, 1, 'TFADT302', 'Adli Tıp / Forensic Medicine', 1);
INSERT INTO `tb_dersler` VALUES (32, 1, 27, 1, 'TFAIH303', 'Aile Hekimliği / Family Medicine', 1);
INSERT INTO `tb_dersler` VALUES (33, 1, 37, 1, 'TFBSC305', 'Beyin Cerrahisi / Neurosurgery', 1);
INSERT INTO `tb_dersler` VALUES (34, 1, 16, 1, 'TFBIK307', 'Tıbbi Biyokimya / Clinical Biochemistry', 1);
INSERT INTO `tb_dersler` VALUES (35, 1, 14, 1, 'TFBIFZ307', 'Biyofizik/Biophisic', 1);
INSERT INTO `tb_dersler` VALUES (36, 1, 2, 1, 'TFCCE308', 'Çocuk Cerrahisi / Pediatric Surgery', 1);
INSERT INTO `tb_dersler` VALUES (37, 1, 39, 1, 'TFCPS309', 'Çocuk Psikiyatrisi / Child and Adolescent Psychiatry', 1);
INSERT INTO `tb_dersler` VALUES (38, 1, 28, 1, 'TFPED310', 'Çocuk Sağlığı ve Hastalıkları / Pediatrics', 1);
INSERT INTO `tb_dersler` VALUES (39, 1, 29, 1, 'TFDER311', 'Dermatoloji / Dermatology', 1);
INSERT INTO `tb_dersler` VALUES (40, 1, 36, 1, 'TFENF312', 'Enfeksiyon Hastalıkları / Infectious Diseases', 1);
INSERT INTO `tb_dersler` VALUES (41, 1, 30, 1, 'TFFAR313', 'Farmakoloji / Pharmacology', 1);
INSERT INTO `tb_dersler` VALUES (42, 1, 31, 1, 'TFFTR314', 'Fizik Tedavi ve Rehabilitasyon / Physical Medicine and Rehabilitation', 1);
INSERT INTO `tb_dersler` VALUES (43, 1, 3, 1, 'TFGEC315', 'Genel Cerrahi / General Surgery', 1);
INSERT INTO `tb_dersler` VALUES (44, 1, 4, 1, 'TFGOC316', 'Göğüs Cerrahisi / Chest Surgery', 1);
INSERT INTO `tb_dersler` VALUES (45, 1, 32, 1, 'TFGOH317', 'Göğüs Hastalıkları / Chest Diseases', 1);
INSERT INTO `tb_dersler` VALUES (46, 1, 5, 1, 'TFGOZ318', 'Göz Hastalıkları / Ophthalmology', 1);
INSERT INTO `tb_dersler` VALUES (47, 1, 33, 1, 'TFHSA319', 'Halk Sağlığı / Public Health', 1);
INSERT INTO `tb_dersler` VALUES (48, 1, 34, 1, 'TFDAH320', 'İç Hastalıkları / Internal Medicine', 1);
INSERT INTO `tb_dersler` VALUES (49, 1, 6, 1, 'TFKHD321', 'Kadın Hastalıkları ve Doğum / Obstetrics and Gynecology', 1);
INSERT INTO `tb_dersler` VALUES (50, 1, 35, 1, 'TFKAR322', 'Kardiyoloji / Cardiology', 1);
INSERT INTO `tb_dersler` VALUES (51, 1, 7, 1, 'TFKDC323', 'Kalp Damar Cerrahisi / Cardiovascular Surgery', 1);
INSERT INTO `tb_dersler` VALUES (52, 1, 8, 1, 'TFKBB324', 'Kulak Burun Boğaz / Otorhinolaryngology', 1);
INSERT INTO `tb_dersler` VALUES (53, 1, 37, 1, 'TFNOR325', 'Nöroloji / Neurology', 1);
INSERT INTO `tb_dersler` VALUES (54, 1, 10, 1, 'TFORT338', 'Ortopedi ve Travmatoloji / Orthopedic and Traumatology', 1);
INSERT INTO `tb_dersler` VALUES (55, 1, 20, 1, 'TFPAT337', 'Patoloji / Pathology', 1);
INSERT INTO `tb_dersler` VALUES (56, 1, 11, 1, 'TFPRC328', 'Plastik Cerrahi / PlasticReconstructive and Aesthetic Surgery', 1);
INSERT INTO `tb_dersler` VALUES (57, 1, 39, 1, 'TFPSK329', 'Psikiyatri / Psychiatry', 1);
INSERT INTO `tb_dersler` VALUES (58, 1, 42, 1, 'TFSHK330', 'Spor Hekimliği / Sports Medicine', 1);
INSERT INTO `tb_dersler` VALUES (59, 1, 22, 1, 'TFPRZ332', 'Parazitoloji / Parasitology', 1);
INSERT INTO `tb_dersler` VALUES (60, 1, 19, 1, 'TFMIC333', 'Tıbbi Mikrobiyoloji / Medical Microbiology', 1);
INSERT INTO `tb_dersler` VALUES (61, 1, 23, 1, 'TFTEG336', 'Tıp Eğitimi ve Bilişimi / Medical Education', 1);
INSERT INTO `tb_dersler` VALUES (62, 1, 24, 1, 'TFTTE333', 'Tıp Tarihi ve Etik / Medical History and Ethics', 1);
INSERT INTO `tb_dersler` VALUES (63, 1, 12, 1, 'TFURO334', 'Üroloji / Urology', 1);
INSERT INTO `tb_dersler` VALUES (64, 1, 44, 1, 'TFİSG336', 'İş Sağlığı ve Güvenliği', 1);
INSERT INTO `tb_dersler` VALUES (65, 1, 43, 1, 'TFTIG336', 'Tıbbi Genetik / Medical Genetic', 1);
INSERT INTO `tb_dersler` VALUES (66, 1, 38, 1, 'TFNUT336', 'Nükleer Tıp / Nuclear Medicine', 1);

-- ----------------------------
-- Table structure for tb_diller
-- ----------------------------
DROP TABLE IF EXISTS `tb_diller`;
CREATE TABLE `tb_diller`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kisa_ad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_diller
-- ----------------------------
INSERT INTO `tb_diller` VALUES (1, 'Türkçe', 'tr', NULL);
INSERT INTO `tb_diller` VALUES (2, 'қазақ', 'kz', NULL);
INSERT INTO `tb_diller` VALUES (3, 'English', 'en', NULL);
INSERT INTO `tb_diller` VALUES (4, 'Россия', 'ru', NULL);

-- ----------------------------
-- Table structure for tb_donem_dersleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_dersleri`;
CREATE TABLE `tb_donem_dersleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int UNSIGNED NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `teorik_ders_saati` int NULL DEFAULT NULL,
  `uygulama_ders_saati` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_dersleri
-- ----------------------------
INSERT INTO `tb_donem_dersleri` VALUES (1, 1, 1, 72, 20);
INSERT INTO `tb_donem_dersleri` VALUES (2, 1, 2, 26, 0);
INSERT INTO `tb_donem_dersleri` VALUES (3, 1, 3, 47, 0);
INSERT INTO `tb_donem_dersleri` VALUES (4, 1, 4, 84, 10);
INSERT INTO `tb_donem_dersleri` VALUES (5, 1, 5, 11, 0);
INSERT INTO `tb_donem_dersleri` VALUES (6, 1, 6, 37, 1);
INSERT INTO `tb_donem_dersleri` VALUES (7, 1, 7, 12, 0);
INSERT INTO `tb_donem_dersleri` VALUES (8, 1, 8, 52, 17);
INSERT INTO `tb_donem_dersleri` VALUES (9, 1, 9, 9, 2);
INSERT INTO `tb_donem_dersleri` VALUES (10, 1, 10, 64, 10);
INSERT INTO `tb_donem_dersleri` VALUES (11, 1, 11, 7, 0);
INSERT INTO `tb_donem_dersleri` VALUES (13, 1, 13, 4, 0);
INSERT INTO `tb_donem_dersleri` VALUES (22, 1, 14, 16, 0);
INSERT INTO `tb_donem_dersleri` VALUES (24, 1, 15, 8, 0);

-- ----------------------------
-- Table structure for tb_donem_gorevlileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_gorevlileri`;
CREATE TABLE `tb_donem_gorevlileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `gorev_kategori_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_gorevlileri
-- ----------------------------
INSERT INTO `tb_donem_gorevlileri` VALUES (17, 1, 1, 1);
INSERT INTO `tb_donem_gorevlileri` VALUES (18, 1, 2, 3);

-- ----------------------------
-- Table structure for tb_donem_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_ogrencileri`;
CREATE TABLE `tb_donem_ogrencileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_ogrencileri
-- ----------------------------
INSERT INTO `tb_donem_ogrencileri` VALUES (7, 4, NULL, 1);
INSERT INTO `tb_donem_ogrencileri` VALUES (8, 4, NULL, 2);
INSERT INTO `tb_donem_ogrencileri` VALUES (9, 4, NULL, 3);
INSERT INTO `tb_donem_ogrencileri` VALUES (10, 4, NULL, 4);
INSERT INTO `tb_donem_ogrencileri` VALUES (11, 4, NULL, 5);
INSERT INTO `tb_donem_ogrencileri` VALUES (12, 4, NULL, 6);
INSERT INTO `tb_donem_ogrencileri` VALUES (13, 4, NULL, 7);
INSERT INTO `tb_donem_ogrencileri` VALUES (14, 4, NULL, 8);
INSERT INTO `tb_donem_ogrencileri` VALUES (15, 4, NULL, 9);
INSERT INTO `tb_donem_ogrencileri` VALUES (16, 4, NULL, 10);
INSERT INTO `tb_donem_ogrencileri` VALUES (17, 4, NULL, 11);
INSERT INTO `tb_donem_ogrencileri` VALUES (18, 4, NULL, 12);
INSERT INTO `tb_donem_ogrencileri` VALUES (19, 4, NULL, 13);
INSERT INTO `tb_donem_ogrencileri` VALUES (20, 4, NULL, 14);
INSERT INTO `tb_donem_ogrencileri` VALUES (21, 4, NULL, 15);
INSERT INTO `tb_donem_ogrencileri` VALUES (22, 4, NULL, 16);
INSERT INTO `tb_donem_ogrencileri` VALUES (23, 4, NULL, 17);
INSERT INTO `tb_donem_ogrencileri` VALUES (24, 4, NULL, 18);
INSERT INTO `tb_donem_ogrencileri` VALUES (25, 4, NULL, 19);
INSERT INTO `tb_donem_ogrencileri` VALUES (26, 4, NULL, 20);
INSERT INTO `tb_donem_ogrencileri` VALUES (27, 4, NULL, 21);
INSERT INTO `tb_donem_ogrencileri` VALUES (28, 4, NULL, 22);
INSERT INTO `tb_donem_ogrencileri` VALUES (29, 4, NULL, 23);
INSERT INTO `tb_donem_ogrencileri` VALUES (30, 4, NULL, 24);
INSERT INTO `tb_donem_ogrencileri` VALUES (31, 4, NULL, 25);
INSERT INTO `tb_donem_ogrencileri` VALUES (32, 4, NULL, 26);
INSERT INTO `tb_donem_ogrencileri` VALUES (33, 4, NULL, 27);
INSERT INTO `tb_donem_ogrencileri` VALUES (34, 4, NULL, 28);
INSERT INTO `tb_donem_ogrencileri` VALUES (35, 4, NULL, 29);
INSERT INTO `tb_donem_ogrencileri` VALUES (36, 4, NULL, 30);
INSERT INTO `tb_donem_ogrencileri` VALUES (37, 4, NULL, 31);
INSERT INTO `tb_donem_ogrencileri` VALUES (38, 4, NULL, 32);
INSERT INTO `tb_donem_ogrencileri` VALUES (39, 4, NULL, 33);
INSERT INTO `tb_donem_ogrencileri` VALUES (40, 4, NULL, 34);
INSERT INTO `tb_donem_ogrencileri` VALUES (41, 4, NULL, 35);
INSERT INTO `tb_donem_ogrencileri` VALUES (42, 4, NULL, 36);
INSERT INTO `tb_donem_ogrencileri` VALUES (43, 4, NULL, 37);
INSERT INTO `tb_donem_ogrencileri` VALUES (44, 4, NULL, 38);
INSERT INTO `tb_donem_ogrencileri` VALUES (45, 4, NULL, 39);
INSERT INTO `tb_donem_ogrencileri` VALUES (46, 4, NULL, 40);
INSERT INTO `tb_donem_ogrencileri` VALUES (47, 4, NULL, 41);
INSERT INTO `tb_donem_ogrencileri` VALUES (48, 4, NULL, 42);
INSERT INTO `tb_donem_ogrencileri` VALUES (49, 4, NULL, 43);
INSERT INTO `tb_donem_ogrencileri` VALUES (50, 4, NULL, 44);
INSERT INTO `tb_donem_ogrencileri` VALUES (51, 4, NULL, 45);
INSERT INTO `tb_donem_ogrencileri` VALUES (52, 4, NULL, 46);
INSERT INTO `tb_donem_ogrencileri` VALUES (53, 4, NULL, 47);
INSERT INTO `tb_donem_ogrencileri` VALUES (54, 4, NULL, 48);
INSERT INTO `tb_donem_ogrencileri` VALUES (55, 4, NULL, 49);
INSERT INTO `tb_donem_ogrencileri` VALUES (56, 4, NULL, 50);
INSERT INTO `tb_donem_ogrencileri` VALUES (57, 4, NULL, 51);
INSERT INTO `tb_donem_ogrencileri` VALUES (58, 4, NULL, 52);
INSERT INTO `tb_donem_ogrencileri` VALUES (59, 4, NULL, 53);
INSERT INTO `tb_donem_ogrencileri` VALUES (60, 4, NULL, 54);
INSERT INTO `tb_donem_ogrencileri` VALUES (61, 4, NULL, 55);
INSERT INTO `tb_donem_ogrencileri` VALUES (62, 4, NULL, 56);
INSERT INTO `tb_donem_ogrencileri` VALUES (63, 4, NULL, 57);
INSERT INTO `tb_donem_ogrencileri` VALUES (64, 4, NULL, 58);
INSERT INTO `tb_donem_ogrencileri` VALUES (65, 4, NULL, 59);
INSERT INTO `tb_donem_ogrencileri` VALUES (66, 4, NULL, 60);
INSERT INTO `tb_donem_ogrencileri` VALUES (67, 4, NULL, 61);
INSERT INTO `tb_donem_ogrencileri` VALUES (68, 4, NULL, 62);
INSERT INTO `tb_donem_ogrencileri` VALUES (69, 4, NULL, 63);
INSERT INTO `tb_donem_ogrencileri` VALUES (70, 4, NULL, 64);
INSERT INTO `tb_donem_ogrencileri` VALUES (71, 4, NULL, 65);
INSERT INTO `tb_donem_ogrencileri` VALUES (72, 4, NULL, 66);
INSERT INTO `tb_donem_ogrencileri` VALUES (73, 4, NULL, 67);
INSERT INTO `tb_donem_ogrencileri` VALUES (74, 4, NULL, 68);
INSERT INTO `tb_donem_ogrencileri` VALUES (75, 4, NULL, 69);
INSERT INTO `tb_donem_ogrencileri` VALUES (76, 4, NULL, 70);
INSERT INTO `tb_donem_ogrencileri` VALUES (77, 4, NULL, 71);
INSERT INTO `tb_donem_ogrencileri` VALUES (78, 4, NULL, 72);
INSERT INTO `tb_donem_ogrencileri` VALUES (79, 4, NULL, 73);
INSERT INTO `tb_donem_ogrencileri` VALUES (80, 4, NULL, 74);
INSERT INTO `tb_donem_ogrencileri` VALUES (81, 4, NULL, 75);
INSERT INTO `tb_donem_ogrencileri` VALUES (82, 4, NULL, 76);
INSERT INTO `tb_donem_ogrencileri` VALUES (83, 4, NULL, 77);
INSERT INTO `tb_donem_ogrencileri` VALUES (84, 4, NULL, 78);
INSERT INTO `tb_donem_ogrencileri` VALUES (85, 4, NULL, 79);
INSERT INTO `tb_donem_ogrencileri` VALUES (86, 4, NULL, 80);
INSERT INTO `tb_donem_ogrencileri` VALUES (87, 4, NULL, 81);
INSERT INTO `tb_donem_ogrencileri` VALUES (88, 4, NULL, 82);
INSERT INTO `tb_donem_ogrencileri` VALUES (89, 4, NULL, 83);
INSERT INTO `tb_donem_ogrencileri` VALUES (90, 4, NULL, 84);
INSERT INTO `tb_donem_ogrencileri` VALUES (91, 4, NULL, 85);
INSERT INTO `tb_donem_ogrencileri` VALUES (92, 4, NULL, 86);
INSERT INTO `tb_donem_ogrencileri` VALUES (93, 4, NULL, 87);
INSERT INTO `tb_donem_ogrencileri` VALUES (94, 4, NULL, 88);
INSERT INTO `tb_donem_ogrencileri` VALUES (95, 4, NULL, 89);
INSERT INTO `tb_donem_ogrencileri` VALUES (96, 4, NULL, 90);
INSERT INTO `tb_donem_ogrencileri` VALUES (97, 4, NULL, 91);
INSERT INTO `tb_donem_ogrencileri` VALUES (98, 4, NULL, 92);
INSERT INTO `tb_donem_ogrencileri` VALUES (99, 4, NULL, 93);
INSERT INTO `tb_donem_ogrencileri` VALUES (100, 4, NULL, 94);
INSERT INTO `tb_donem_ogrencileri` VALUES (101, 4, NULL, 95);
INSERT INTO `tb_donem_ogrencileri` VALUES (102, 4, NULL, 96);
INSERT INTO `tb_donem_ogrencileri` VALUES (103, 4, NULL, 97);
INSERT INTO `tb_donem_ogrencileri` VALUES (104, 4, NULL, 98);
INSERT INTO `tb_donem_ogrencileri` VALUES (105, 4, NULL, 99);
INSERT INTO `tb_donem_ogrencileri` VALUES (106, 4, NULL, 100);
INSERT INTO `tb_donem_ogrencileri` VALUES (107, 4, NULL, 101);
INSERT INTO `tb_donem_ogrencileri` VALUES (108, 4, NULL, 102);
INSERT INTO `tb_donem_ogrencileri` VALUES (109, 4, NULL, 103);
INSERT INTO `tb_donem_ogrencileri` VALUES (110, 4, NULL, 104);
INSERT INTO `tb_donem_ogrencileri` VALUES (111, 4, NULL, 105);
INSERT INTO `tb_donem_ogrencileri` VALUES (112, 4, NULL, 106);
INSERT INTO `tb_donem_ogrencileri` VALUES (113, 4, NULL, 107);
INSERT INTO `tb_donem_ogrencileri` VALUES (114, 4, NULL, 108);
INSERT INTO `tb_donem_ogrencileri` VALUES (115, 4, NULL, 109);
INSERT INTO `tb_donem_ogrencileri` VALUES (116, 4, NULL, 110);
INSERT INTO `tb_donem_ogrencileri` VALUES (117, 4, NULL, 111);
INSERT INTO `tb_donem_ogrencileri` VALUES (118, 4, NULL, 112);
INSERT INTO `tb_donem_ogrencileri` VALUES (119, 4, NULL, 113);
INSERT INTO `tb_donem_ogrencileri` VALUES (120, 4, NULL, 114);
INSERT INTO `tb_donem_ogrencileri` VALUES (121, 4, NULL, 115);
INSERT INTO `tb_donem_ogrencileri` VALUES (122, 4, NULL, 116);
INSERT INTO `tb_donem_ogrencileri` VALUES (123, 4, NULL, 117);
INSERT INTO `tb_donem_ogrencileri` VALUES (124, 4, NULL, 118);
INSERT INTO `tb_donem_ogrencileri` VALUES (125, 4, NULL, 119);
INSERT INTO `tb_donem_ogrencileri` VALUES (126, 4, NULL, 120);
INSERT INTO `tb_donem_ogrencileri` VALUES (127, 4, NULL, 121);
INSERT INTO `tb_donem_ogrencileri` VALUES (128, 4, NULL, 122);
INSERT INTO `tb_donem_ogrencileri` VALUES (129, 4, NULL, 123);
INSERT INTO `tb_donem_ogrencileri` VALUES (130, 4, NULL, 124);
INSERT INTO `tb_donem_ogrencileri` VALUES (131, 4, NULL, 125);
INSERT INTO `tb_donem_ogrencileri` VALUES (132, 4, NULL, 126);
INSERT INTO `tb_donem_ogrencileri` VALUES (133, 4, NULL, 127);
INSERT INTO `tb_donem_ogrencileri` VALUES (134, 4, NULL, 128);
INSERT INTO `tb_donem_ogrencileri` VALUES (135, 4, NULL, 129);
INSERT INTO `tb_donem_ogrencileri` VALUES (136, 4, NULL, 130);
INSERT INTO `tb_donem_ogrencileri` VALUES (156, 1, NULL, 131);

-- ----------------------------
-- Table structure for tb_donem_subeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_donem_subeleri`;
CREATE TABLE `tb_donem_subeleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donem_subeleri
-- ----------------------------

-- ----------------------------
-- Table structure for tb_donemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_donemler`;
CREATE TABLE `tb_donemler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_donemler
-- ----------------------------
INSERT INTO `tb_donemler` VALUES (1, 1, 1, 'Mühendislik Fakültesi', 1);
INSERT INTO `tb_donemler` VALUES (2, 1, 1, 'Fen Bilimleri Fakültesi', 1);
INSERT INTO `tb_donemler` VALUES (3, 1, 1, 'Filoloji Fakültesi', 1);
INSERT INTO `tb_donemler` VALUES (4, 1, 1, 'İlahiyat Fakültesi', 1);
INSERT INTO `tb_donemler` VALUES (5, 1, 1, 'Diş Hekimliği Fakültesi', 1);
INSERT INTO `tb_donemler` VALUES (6, 1, 1, 'Tıp Fakültesi', 1);

-- ----------------------------
-- Table structure for tb_duyurular
-- ----------------------------
DROP TABLE IF EXISTS `tb_duyurular`;
CREATE TABLE `tb_duyurular`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int UNSIGNED NULL DEFAULT NULL,
  `tarih` datetime NULL DEFAULT NULL,
  `baslik` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `icerik` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  `baslik_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslik_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslik_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `icerik_kz` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `icerik_en` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `icerik_ru` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_duyurular
-- ----------------------------
INSERT INTO `tb_duyurular` VALUES (12, 216, '2015-04-17 00:00:00', 'Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">T.C. Cumhurbaşkanı Sayın Recep Tayyip Erdoğan’ın Hoca Ahmet Yesevi Uluslararası Türk-Kazak Üniversitesi Tarafından Fahri Profesörlük Tevdii Töreni’nde Yaptıkları Konuşma</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">17.04.2015</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp;</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Sayın Cumhurbaşkanı,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Sayın Rektör,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Değerli Öğretim Üyeleri ve Öğrenciler</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Kıymetli Hanımefendiler, Beyefendiler,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Sizleri sevgiyle, saygıyla selamlıyorum. Cumhurbaşkanı olarak Kazakistan’a yaptığım bu ilk ziyaret vesilesiyle, Hoca Ahmet Yesevi Üniversitesi’nde bulunmaktan memnuniyet duyuyorum. &nbsp;Şahsıma layık görülen fahri profesörlük unvanı için, üniversite yönetimine ve tüm dostlarımıza teşekkür ediyorum. &nbsp;Üniversitemizi, Türkiye ile Kazakistan arasındaki işbirliğinin önemli sembollerinden biri olarak görüyorum.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Dilimizin ve kültürümüzün gelişmesine, zenginleşmesine çok önemli katkılarda bulunan büyük fikir adamı ve gönül eri Hoca Ahmet Yesevi’nin manevi feyzinin, ziyaretimizi daha da anlamlı kıldığına inanıyorum. &nbsp;Üniversiteye ismini veren Ahmet Yesevi, gerekten de Türkistan’dan Anadolu’ya ve Balkanlara kadar uzanan geniş bir coğrafyanın manevi kandillerinden biridir.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Ahmet Yesevi Hazretleri, Arslan Baba’dan ve Yusuf Hemedani’den devraldığı ihlas ve irfan bayrağını, Horasan Erenleri aracılığıyla yedi iklim dört kıtaya taşımıştır. Bu üniversitenin, bir eğitim kurumu olmanın ötesinde, Hoca Ahmet Yesevi okulunun günümüzdeki temsilcisi olarak da faaliyet gösterdiğine, göstermesi gerektiğine inanıyorum.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Üniversitemizin ilk ve en önemli öğretim üyesi olarak Hoca Ahmet Yesevi’yi kabul ediyorum. Öğrenci kardeşlerimden bu şuurla, bu anlayışla, bu misyonla eğitimlerini yürütmelerini, kendilerini yetiştirmelerini bekliyorum. Bu üniversite, hem taşıdığı isim, hem de bulunduğu coğrafya sebebiyle, herhangi bir yüksek eğitim kurumu olarak kalamaz, kalmamalıdır.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkistan, çağlar açıp çağlar kapatan gelişmelerin temellerinin atıldığı, tarihi bir ilim, irfan, kültür merkezidir. Tarihte “Türk Rönesansı” diye ifade edilen medeniyet hamlesinin harcı, işte burada, bu topraklarda karılmıştır. Bu harcın temelinde muhabbet vardır, saygı vardır, bilgi vardır, erdem vardır, hikmet vardır.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Hoca Ahmet Yesevi’nin bu donanımla Anadolu’ya, Balkanlara gönderdiği dervişler, sadece birer Eren değil, aynı zamanda birer Alp’ti. Bilgiyi ve mücadele ruhunu şahıslarında birleştiren bu Alperen’lerin izlerini, gittiğimiz her yerde görüyoruz. Kuzey Afrika’dan Ortadoğu’ya, Balkanlar’dan Avrupa’nın içlerine kadar her yerde, tekkelerini, türbelerini, camilerini, medreselerini ihya ettiğimiz bu Alperen geleneğinin ocağı, işte burasıdır, Türkistan’dır, Hoca Ahmet Yesevi’nin dergâhıdır.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Hoca Ahmet Yesevi Üniversitemiz de bu geleneğin günümüzdeki en önemli merkezi olmak durumundadır. Aksi halde üniversitemiz, isminin hakkını veremiyor demektir. Bu adı taşımak ne kadar ayrıcalıklı ise, bu misyonu yüklenmek de o derece fedakârlık ister.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Ben, üniversitemizin önümüzdeki dönemde, tüm coğrafyamıza yeni bir soluk, yeni bir nefes vererek, adına ve misyonuna yakışan bir gayret ortaya koyacağına yürekten inanıyorum. 1993 yılında ata yurdun kalbine dikilen bu fidan, sizlerin sayenizde bugün artık genç bir çınar haline geldi. Hoca Ahmet Yesevi meşalesini taşıma şerefine nail olmuş bilim insanları ve öğrenciler olarak, üniversitemizi uluslararası rekabet gücü yüksek bir kurum haline getirme konusundaki çabalarınızı takdir ediyorum. Bunun yanında Hoca Ahmet Yesevi Üniversitesi, Rektör’ünden öğrencisine kadar tüm mensuplarıyla, köklü geçmişimiz ile parlak geleceğimiz arasındaki köprü olma misyonunu da her faaliyetinde göstermelidir.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Değerli Arkadaşlar,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkiye; tarihi, coğrafi ve kültürel bakımdan Kazakistan’ın da içinde yer aldığı Orta Asya coğrafyasının doğal ve vazgeçilmez bir parçasıdır. Orta Asya, tarihin her döneminde Anadolu insanı için ayrı bir önem taşıdı. 1991 yılından itibaren, 70 yıllık parantezin kapanmasını takiben, bölgeyle yeniden ilişki tesis edilmesi, Türk dış politikasının en önemli önceliklerinden biri oldu. Türkiye, başta Kazakistan olmak üzere, Orta Asya’daki kardeş cumhuriyetlerin bağımsızlığını ilk tanıyan ve buralarda ilk Büyükelçilik açan ülkedir.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Dün değerli Cumhurbaşkanı Nazarbayev’le dertleşirken bağımsızlığımızı ilan ettiğimizde 2 saat sonra merhum Turgut Özal’ın Kazakistan’ın bağımsızlığını tanıdıklarını ilan etmişti dedi. İşte bu denli anlamlıdır bizim kardeşliğimiz. Orta Asya ülkeleri, bağımsızlıklarından bu yana geçen 20 yılı aşkın sürede siyasi, ekonomik, sosyo-kültürel alanlarda önemli ilerlemeler sağladı. 1990’lı yılların zorlu şartlarına rağmen, bağımsızlıklarını ve egemenliklerini korumayı başaran bu ülkeler için, bugün gelinen nokta çok önemlidir. 23-24 yıl önce bazıları bu ülkelerin bağımsızlıklarını sürdürebilecekleri konusunda şüphe içerisindeydi. Gerçekten de bu yıllar, Türkiye için olduğu gibi, Türk Cumhuriyetleri için de kolay geçmedi, sıkıntılıydı. Dünyaca ünlü yazarımız Cengiz Aytmatov’un ifadesiyle “asra bedel günler” yaşandı. Ancak, bu ülkelerin başarısızlıklarını bekleyenler hüsrana uğradılar. Kardeş Cumhuriyetlerin hepsi, devlet hayatı bakımından çok kısa sayılabilecek bir sürede kendi ayakları üzerinde durmayı başardı.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türk dünyası, Sovyetler Birliği’nin dağılmasından sonraki süreçte, bağımsızlık döneminin bu ilk sıkıntılı sınavlarını başarıyla verdi. Bu yıl, Kazakistan’ın bağımsızlığının ve Türkiye-Kazakistan ilişkilerinin 24’üncü yılını kutluyoruz. &nbsp;Bu sürede Kazakistan, değerli kardeşim, Cumhurbaşkanı Sayın Nazarbayev’in ehil yönetimi altında önemli başarılara imza attı. Sahip olduğu doğal kaynakları ve coğrafi konumunu etkin şekilde kullandı, ulaştırma ve enerji diplomasisi alanında görüşü aranan bir ülke haline geldi. Kazakistan’ın bundan sonra da çok daha büyük başarılara imza atacağına yürekten inanıyorum.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkiye’nin de bu yolda her zaman Kazakistan’ın ve kardeş Kazak halkının yanında olacağından şüpheniz olmasın. Geçen 24 yılda, iki kardeş ülke arasındaki ilişkilerde de büyük mesafeler kat edildi. Siyasi ilişkilerimiz, aramızdaki kardeşliğe yaraşır şekilde mükemmel bir seviyeye ulaştı. 2009 yılında imzaladığımız Stratejik Ortaklık Anlaşması ve 2012 yılında tesis ettiğimiz Yüksek Düzeyli Stratejik İşbirliği Konseyi, işte bu işbirliğin sembolleridir. Ekonomik, ticari ve kültürel alanlardaki işbirliğimiz her geçen gün daha da gelişiyor. Yükseköğrenim konusunda Kazakistanlı kardeşlerimizle çok müstesna bir işbirliği yürütüyoruz. 1992 yılından itibaren bu güne kadar, 3 bin 750 Kazak öğrenciye ülkemizde burs imkânı sunduk. “Türkiye Bursları” ile de her yıl 150 civarında öğrenciye lisans, yüksek lisans ve doktora seviyesinde burs veriyoruz.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">İkili ilişkilerimizin yanı sıra, Türk Konseyi başta olmak üzere, çok taraflı platformlardaki işbirliğimiz de mükemmel seviyededir. Büyük önem verdiğimiz Türk Konseyi’ni, Hoca Ahmet Yesevi Hazretleri’nin misyonunun önemli bir kilometre taşı olarak görüyoruz. Bizlere düşen görev, ortak kültürümüzden ve tarihimizden aldığımız bu mirası, gelecek nesillere, yani sizlere en güzel şekilde aktarmak ve onun daha ileriye götürülmesini teşvik etmektir. &nbsp;Sizlerin de aynı anlayışa, aynı bakışa açısına sahip olduğunuza inanıyorum.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Değerli Kardeşlerim,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Dünyanın her alanda hızlı değişimler geçirdiği bir dönemdeyiz. Ortak güvenliğimizi ve geleceğimizi ilgilendiren konular, her geçen gün daha karmaşık bir nitelik kazanıyor. Yaşanan değişimi anlayabilmek için, uluslararası dinamiklerin doğru tahlil edilmesi gerekiyor. &nbsp;İstikrar ve refahın tesisi bakımından, karşılıklı çıkara dayalı ekonomik bağımlılıktan, farklılıkları bir arada yaşatma kabiliyetine kadar, pek çok önemli konu önümüzdeki dönemde gündemimizi meşgul edecektir.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkiye, içinden geçilen işte bu değişim sürecinin farklı dinamiklerinin kesişme noktasında olan bir ülke. Bu, her geçen gün artan imkân ve kabiliyetlerimizle, dış politikamızın çok boyutluluğunu sağlayan ve gerekli kılan bir unsur olarak karşımıza çıkıyor.&nbsp; Bunun yanında, kendimizle birlikte kardeşlerimizin de siyasi, sosyal ve ekonomik gelişmesini sağlamak için her türlü çabayı gösterme sorumluluğuyla karşı karşıyayız.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Dış politikamıza hakim olan çok yönlü, dinamik, vizyoner ve insan odaklı yaklaşımda, Hoca Ahmet Yesevi’nin “insanın kendisiyle olduğu kadar çevresiyle de barışık olması gerektiği” prensibinin izlerini görebilirsiniz. &nbsp;Bu prensibin tüm dünya tarafından da uygulanması halinde, halen yaşanan bunca acı ve sıkıntının sona ermemesi mümkün mü?</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkiye olarak, tarihimizin ve coğrafyamızın bize yüklediği sorumlulukların farkındayız. Dünyada yaşanan değişimin insani hakları temelinde, hukukun üstünlüğü, barış, refahın ve güvenlik ekseninde gelişmesi için üzerimize düşeni yapıyoruz, yapmaya devam edeceğiz. Tarih bize, doğru adımların atılması ve fırsatların değerlendirilmesi halinde, bölgemizde büyük medeniyetlerin yükseldiğini, buna karşılık yapılacak yanlışların bedelinin de çok ağır olduğunu gösteriyor.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Bakınız bugün çevremizde, bizi ve kardeşlerimizi ilgilendiren birçok sorun yaşanıyor. Ukrayna’da Kırım Tatarlarının durumunu biliyorsunuz. Suriye’deki zulüm, hem insani bakımdan, hem siyasi bakımdan giderek kötüleşiyor, vicdanları giderek daha çok yaralıyor. Aynı şekilde Irak’ta mezhepçilik fitnesi, hala tüm ateşiyle yanıyor. &nbsp;DEAŞ denilen terör örgütü, sadece ve sadece Müslüman kanı dökerek, İslam dünyasını ve bölgeyi zehirlemeye devam ediyor. Libya’da yaşanan fiili bölünmüşlük hali, ülkenin ve oradaki kardeşlerimizin geleceği bakımından bizi endişelendiriyor. Mısır’da darbeyle işbaşına gelen yönetim, demokrasiye dönüşü reddettiği gibi, verdiği idam kararlarıyla, halkın yüreğinde de kapanmayacak yaralar açma yolunda ilerliyor. Son olarak Yemen’de başlayan iç çatışmalar, bölgede yeni bir kamplaşmanın fitilini ateşleme aşamasına geldi. &nbsp;Filistinlilerin haklarına saygı göstermeme konusunda adeta yarış içinde olan İsrailli politikacılar yüzünden, bölgedeki huzursuzluk giderek tırmanıyor. Afganistan hala huzuru yakalayabilmiş değil. &nbsp;Afrika ülkelerinin pek çoğunda da benzer sıkıntılar var. Myanmar’dan, Doğu Türkistan’dan gelen haberler bizleri endişelendirmeye devam ediyor.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Türkiye, işte tüm bu manzara içinde, barışın, huzurun, refahın, güvenin temel alındığı bir uluslararası sistemin inşası için çalışıyor, bu yöndeki gayretlere destek veriyor. Bu çabaların başarıya ulaşması için, uluslararası toplumda etkinliği olan tarafların bir araya gelmesi ve birlikte hareket etmesi şarttır. Bunun için, bir yandan bölgesel işbirliği platformları güçlendirilirken, diğer yandan da Birleşmiş Milletler başta olmak üzere, küresel yapıların çözüm odaklı bir anlayışla yeniden yapılandırılması gerekiyor.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Suriye’de 300 bin insanın ölümüne seyirci kalan bir Birleşmiş Milletler Güvenlik Konseyi, dünya üzerinde yaşayan milyarlarca insana nasıl güvenli bir gelecek vaat edebilir ki? Seçimle işbaşına gelmiş siyasetçilerin değil, askeri darbeyle ülke yönetimini gasp etmiş diktatörlerin arkasında duran bir uluslararası düzen, insanlara nasıl daha özgür bir gelecek vaat edebilir ki? Batıda sadece israf edilen, çöpe atılan yiyeceğin, Afrika’daki tüm açları doyurabilecek miktara ulaşabildiği bir sistem, insanları nasıl daha müreffeh bir hayat için motive edebilir ki?</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Biz, işte bu sürdürülemez uluslararası düzenin değişmesi için her platformda sesimizi yükseltiyor, itirazlarımızı dile getiriyoruz. Küresel vicdanı uyandırana kadar da bunları söylemeye devam edeceğiz.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Amacımız asla bu dengesizlik içinde bir rol kapmak değildir. Biz, tesisini arzu ettiğimiz adil ve gerçekçi yeni düzenin eşit taraflarından biri olmaya talibiz. Yani ‘Birleşmiş Milletler Güvenlik Konseyi’nin 5 daimi üyesi dünyanın kaderini belirleyemez, belirlememelidir’ diyoruz. Çünkü dünya 5’ten büyüktür. Öyleyse tüm dünyanın kaderini niçin bu 5 tane üyeden bir tanesinin kararı belirlesin? Bu adil bir dünya olmaz. Onun için el ele vermeye mecburuz, dayanışma halinde olmaya mecburuz.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Bakınız 2013 yılında Türkiye en çok uluslararası yardım yapan ülkeler sıralamasında üçüncü sırada yer aldı. Biz 12 yıl önce yılda 45 milyon dolar yardımda bulunuyorduk, ama geçen yıl –burası çok ilginç- şimdi 4,5 milyar dolar yardım eder hale geldik. Bu bizim insani ve vicdani sorumluluğumuzdur, bunu yapmaya mecburuz. Onun için bunları yapıyoruz ve yapacağız.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Değerli kardeşlerim,</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Bununla kalamayız. Her geçen gün daha kararlı bir şekilde bunu devam ettirmemiz lazım. Afrika ülkelerini dolaştığım zaman, o acı manzaraları gördüğüm zaman diyorum ki; bizim sorumluluğumuz daha büyük. Yani biz ekonomik büyüklüğümüzün çok çok üzerinde bir insani yardım içindeyiz. Amerika, İngiltere ve Türkiye, düşünebiliyor musunuz? Halbuki dünyada bizden çok çok güçlü ülkeler var. Bakınız şu anda Suriye ve Irak’tan Türkiye’ye sığınan sığınmacıların sayısı ne biliyor musunuz? 2 milyon. Bunun 1 milyon 700 bini Suriye’den, 300 bini Irak’tan ölümden kaçarak geldiler, Türkiye’ye sığındılar. Kapınızı kapayabilir misiniz? Ne dedik? ‘Buyurun’. Ve şimdi onları biz yediriyoruz, giydiriyoruz, sağlığına, eğitimine, her şeyine A’dan Z’ye biz bakıyoruz. Peki, size Birleşmiş Milletler’den yardım gelmedi mi? Geldi, ne kadar biliyor musunuz? 250 milyon dolar. Peki, biz şu ana kadar ne kadar harcama yaptık, onu da sizlere söyleyeyim;, 5,5 milyar dolar, fark bu. Ama biz bundan da şeref duyuyoruz, gurur duyuyoruz.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">İnşallah, Türk Konseyi başta olmak üzere Orta Asya’daki dostlarımızla birlikte oluşturduğumuz ve güçlendirme kararı aldığımız işbirliği platformuyla bu gücümüzü daha da artıracağız. Hoca Ahmet Yesevi’nin hikmetlerinden aldığımız ilham, güç ve cesaretle bu doğrultuda yolumuza devam edeceğiz.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Ben bu düşüncelerle üniversitemizin yönetimine ve öğrencilerine başarılar diliyorum. Şahsıma tevdi ettiğiniz fahri profesörlük için şükranlarımı ifade ediyorum. Üniversitemize, öğrencilerimize layık olmanın gayreti içerisinde olacağımı da burada ifade etmek istiyorum.</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(24, 28, 50);font-family:Poppins, Helvetica, sans-serif;font-size:15.6px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;margin-bottom:1rem;margin-top:0px;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Size saygılarımı ve sevgilerimi sunuyorum.</p>', '6503fa0a2eecb030e65da2b1c944090548d36b244b28d.jpg', 1, 'Deneme', NULL, NULL, '<p>sdfsdfsdf</p>', NULL, NULL);
INSERT INTO `tb_duyurular` VALUES (13, 216, '2023-09-04 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevelli Heyet Başkanı Prof. Dr. Muhittin Şimşek, T.C. Lefkoşa Büyükelçisi Prof. Dr. Metin Feyzioğlu’nu Ziyaret Etti', '<p>Deneme</p>', '64fe9d638abfdc0f971d8cd24364f2029fcb9ac7b71f5.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_duyurular` VALUES (14, 216, '2023-09-01 00:00:00', 'Ahmet Yesevi Üniversitesi', '<p>sdafsf</p>', '64fe9d825e953227f6afd3b7f89b96c4bb91f95d50f6d.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_duyurular` VALUES (15, 216, '2022-10-12 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevelli Heyet Başkanı Prof. Dr. Muhittin Şimşek, Üniversitemiz Senato Toplantısına Katıldı', '<p>asdfsdf</p>', '64fe9da504fa3f3b7e5d3eb074cde5b76e26bc0fb5776.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_duyurular` VALUES (28, 216, '2023-09-11 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevell, Heyet Başkanı Prof. Dr. Muhittin Şimşek, Hizmet İçi Eğitim Almak Üzere Ankara’ya Gelen Personellerle Bir Araya Geldi', '<p>sadasd</p>', '64fe9dc0d4cd9d0010a6f34908640a4a6da2389772a78.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_duyurular` VALUES (31, 216, '2023-09-28 00:00:00', 'Deneme Deneme', '<p>asdasdasd</p>', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_egitim_duzeyleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_egitim_duzeyleri`;
CREATE TABLE `tb_egitim_duzeyleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_egitim_duzeyleri
-- ----------------------------
INSERT INTO `tb_egitim_duzeyleri` VALUES (1, 'Ortaöğretim', 'a', 'b', 'c', 1);
INSERT INTO `tb_egitim_duzeyleri` VALUES (2, 'Lise', NULL, NULL, NULL, 2);
INSERT INTO `tb_egitim_duzeyleri` VALUES (3, 'Lisans', NULL, NULL, NULL, 3);
INSERT INTO `tb_egitim_duzeyleri` VALUES (4, 'Yükseklisans', NULL, NULL, NULL, 4);
INSERT INTO `tb_egitim_duzeyleri` VALUES (5, 'Doktora', NULL, NULL, NULL, 5);

-- ----------------------------
-- Table structure for tb_etkinlikler
-- ----------------------------
DROP TABLE IF EXISTS `tb_etkinlikler`;
CREATE TABLE `tb_etkinlikler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int UNSIGNED NULL DEFAULT NULL,
  `tarih` datetime NULL DEFAULT NULL,
  `baslik` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `icerik` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslik_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslik_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslik_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `icerik_kz` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `icerik_en` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `icerik_ru` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_etkinlikler
-- ----------------------------
INSERT INTO `tb_etkinlikler` VALUES (12, 216, '2015-04-17 00:00:00', 'Deneme deneme deneme', '', '6503fc3906c4c030e65da2b1c944090548d36b244b28d.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_etkinlikler` VALUES (13, 216, '2023-09-04 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevelli Heyet Başkanı Prof. Dr. Muhittin Şimşek, T.C. Lefkoşa Büyükelçisi Prof. Dr. Metin Feyzioğlu’nu Ziyaret Etti', '<p>Deneme</p>', '64fe9d638abfdc0f971d8cd24364f2029fcb9ac7b71f5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_etkinlikler` VALUES (14, 216, '2023-09-27 00:00:00', 'Ahmet Yesevi Üniversitesi\'nde 30 Ağustos Zafer Bayramı ve Kazakistan Cumhuriyeti Anayasa Günü Coşkuyla Kutlandı', '<p>sdafsf</p>', '64fe9d825e953227f6afd3b7f89b96c4bb91f95d50f6d.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_etkinlikler` VALUES (15, 216, '2022-10-12 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevelli Heyet Başkanı Prof. Dr. Muhittin Şimşek, Üniversitemiz Senato Toplantısına Katıldı', '<p>asdfsdf</p>', '64fe9da504fa3f3b7e5d3eb074cde5b76e26bc0fb5776.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `tb_etkinlikler` VALUES (28, 216, '2023-09-11 00:00:00', 'Ahmet Yesevi Üniversitesi Mütevell, Heyet Başkanı Prof. Dr. Muhittin Şimşek, Hizmet İçi Eğitim Almak Üzere Ankara’ya Gelen Personellerle Bir Araya Geldi', '<p>sadasd</p>', '64fe9dc0d4cd9d0010a6f34908640a4a6da2389772a78.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tb_fakulteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_fakulteler`;
CREATE TABLE `tb_fakulteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `ilk_goruntulenecek` tinyint NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_fakulteler
-- ----------------------------
INSERT INTO `tb_fakulteler` VALUES (1, 1, 'Tıp Fakültesi', 1, 1);
INSERT INTO `tb_fakulteler` VALUES (2, 1, 'Van Meslek', 0, 0);

-- ----------------------------
-- Table structure for tb_genel_ayarlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_genel_ayarlar`;
CREATE TABLE `tb_genel_ayarlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int UNSIGNED NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `footer_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `footer_sag_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `footer_sag_logo_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `adres` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `anasayfa_baslik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_icerik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `sayac1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slogan2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_url1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_url2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adres_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adres_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adres_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `anasayfa_baslik_kz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_baslik_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_baslik_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_icerik_kz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_icerik_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `anasayfa_icerik_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `slogan_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan2_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan2_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan2_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan3_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan3_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slogan3_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger1_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger1_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger1_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger2_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger2_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `buton_deger2_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac1_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac1_adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac1_adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac1_adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac2_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac2_adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac2_adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac2_adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac3_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac3_adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac3_adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac3_adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac4_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac4_adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac4_adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sayac4_adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_genel_ayarlar
-- ----------------------------
INSERT INTO `tb_genel_ayarlar` VALUES (2, 216, 'logo_65154c7fbb663ayu_logo.png', 'Hoca Ahmet Yesevi Uluslararası Türk-Kazak Üniversitesi', 'footer_logo_64feb065179dcayu_logo_beyaz.png', '', 'cbdgfd', '', 'Түркістанқаласы,Бекзат Саттарханов даңғылы, 29', '+7(725) 336-36-36', 'info@ayu.edu.kz', 'https://www.facebook.com/yassawi.university/', '', '', '', '', 'Hakkımızda', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(24,28,50);font-family:Poppins, Helvetica, sans-serif;font-size:14.95px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Mütevelli Heyetimizin kararıyla Ekim-2004 tarihinde “Bilişim Teknolojileri ve Mühendislik Fakültesi” olarak kurulan Fakültemizin ismi Üniversitemiz Senatosunun kararıyla 2014-2015 Eğitim-Öğretim döneminden başlayarak “Mühendislik Fakültesi” olarak değiştirildi. Fakültemiz, Lisans ve lisansüstü seviyede, çağdaş, kapsamlı ve güçlü mühendislik eğitimi vermek, nitelikli, özgün ve yenilikçi araştırmalar yaparak bilimsel ve teknolojik gelişmeye katkı sağlamak, sanayi ve paydaş kurum/kuruluşlar ile yakın işbirliği kurarak ulusal/uluslararası kalkınmaya katkı sağlamak misyonu ile eğitim hayatına devam etmektedir.</span></span></p>', '23', '1254', '95', '125', 'Slogan 2', 'Slogan 3', 'Buton 1', 'https://ayu.edu.kz', 'Buton 1', 'https://ayu.edu.kz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bölüm', NULL, NULL, NULL, 'Öğrenci', NULL, NULL, NULL, 'İşe Yerleşme Oranı', NULL, NULL, NULL, 'Öğretim Üyesi', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_gorev_kategorileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_gorev_kategorileri`;
CREATE TABLE `tb_gorev_kategorileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `oncelik_sirasi` tinyint NULL DEFAULT NULL COMMENT '1 Dekan 2 Dekan Yardımcısı 3 Sekreter gibi ağaç yapısını oluşturmak için kullanılacak.',
  `gorev_turu` tinyint NULL DEFAULT NULL COMMENT '1 Akademik, 2 İdari, 3 Web Sitesi Sorumlusu',
  `rol_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_gorev_kategorileri
-- ----------------------------
INSERT INTO `tb_gorev_kategorileri` VALUES (1, 'Dekan', '', '', '', NULL, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (2, 'Dekan Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (3, 'Bölüm Başkanı', NULL, NULL, NULL, 1, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (4, 'Bölüm Başkanı Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (11, 'Dekanlık Sekreteri', NULL, NULL, NULL, 3, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (12, 'Eğitimden Sorumlu Dekan Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (13, 'Bilim ve Terbiyeden Sorumlu Dekan Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (14, 'Bilimsel Araştırmalardan Sorumlu Dekan Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (15, 'Terbiye İşlerinden Sorumlu Dekan Yardımcısı', NULL, NULL, NULL, 2, 1, NULL);
INSERT INTO `tb_gorev_kategorileri` VALUES (16, 'Web Sitesi Sorumlusuuuu', NULL, NULL, NULL, NULL, 3, NULL);

-- ----------------------------
-- Table structure for tb_gorevler
-- ----------------------------
DROP TABLE IF EXISTS `tb_gorevler`;
CREATE TABLE `tb_gorevler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int NULL DEFAULT NULL,
  `gorev_kategori_id` int NULL DEFAULT NULL,
  `personel_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_gorevler
-- ----------------------------
INSERT INTO `tb_gorevler` VALUES (1, 11, 1, 4);
INSERT INTO `tb_gorevler` VALUES (3, 11, 12, 3);
INSERT INTO `tb_gorevler` VALUES (4, 11, 13, 4);
INSERT INTO `tb_gorevler` VALUES (6, 11, 11, 3);
INSERT INTO `tb_gorevler` VALUES (7, 11, 16, 3);
INSERT INTO `tb_gorevler` VALUES (9, 216, 1, 4);
INSERT INTO `tb_gorevler` VALUES (10, 216, 2, 3);

-- ----------------------------
-- Table structure for tb_kan_gruplari
-- ----------------------------
DROP TABLE IF EXISTS `tb_kan_gruplari`;
CREATE TABLE `tb_kan_gruplari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kan_gruplari
-- ----------------------------
INSERT INTO `tb_kan_gruplari` VALUES (1, '0 Rh (+)', 1);
INSERT INTO `tb_kan_gruplari` VALUES (2, '0 Rh (-)', 2);
INSERT INTO `tb_kan_gruplari` VALUES (3, 'A Rh (+)', 3);
INSERT INTO `tb_kan_gruplari` VALUES (4, 'A Rh (-)', 4);
INSERT INTO `tb_kan_gruplari` VALUES (5, 'B Rh (+)', 5);
INSERT INTO `tb_kan_gruplari` VALUES (6, 'B Rh (-)', 6);
INSERT INTO `tb_kan_gruplari` VALUES (7, 'AB Rh (+)', 7);
INSERT INTO `tb_kan_gruplari` VALUES (8, 'AB Rh (-)', 8);

-- ----------------------------
-- Table structure for tb_komite_dersleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_dersleri`;
CREATE TABLE `tb_komite_dersleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `donem_ders_id` int NULL DEFAULT NULL,
  `teorik_ders_saati` smallint NULL DEFAULT NULL,
  `uygulama_ders_saati` smallint NULL DEFAULT NULL,
  `soru_sayisi` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_dersleri
-- ----------------------------
INSERT INTO `tb_komite_dersleri` VALUES (1, 1, 22, 5, 3, 1);
INSERT INTO `tb_komite_dersleri` VALUES (2, 1, 24, 10, 5, 1);
INSERT INTO `tb_komite_dersleri` VALUES (3, 1, 13, 10, 5, 3);
INSERT INTO `tb_komite_dersleri` VALUES (4, 1, 1, 30, 20, 15);

-- ----------------------------
-- Table structure for tb_komite_dersleri_ogretim_uyeleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_dersleri_ogretim_uyeleri`;
CREATE TABLE `tb_komite_dersleri_ogretim_uyeleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_ders_id` int NULL DEFAULT NULL,
  `ogretim_uyesi_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_dersleri_ogretim_uyeleri
-- ----------------------------
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (5, 4, 1);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (9, 2, 1);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (10, 1, 1);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (11, 1, 21);
INSERT INTO `tb_komite_dersleri_ogretim_uyeleri` VALUES (12, 3, 21);

-- ----------------------------
-- Table structure for tb_komite_gorevlileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_gorevlileri`;
CREATE TABLE `tb_komite_gorevlileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `gorev_kategori_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_gorevlileri
-- ----------------------------
INSERT INTO `tb_komite_gorevlileri` VALUES (1, 1, 1, 25);
INSERT INTO `tb_komite_gorevlileri` VALUES (3, 1, 2, 15);
INSERT INTO `tb_komite_gorevlileri` VALUES (4, 1, 7, 6);
INSERT INTO `tb_komite_gorevlileri` VALUES (5, 1, 7, 9);
INSERT INTO `tb_komite_gorevlileri` VALUES (6, 1, 7, 8);

-- ----------------------------
-- Table structure for tb_komite_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_komite_ogrencileri`;
CREATE TABLE `tb_komite_ogrencileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `komite_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komite_ogrencileri
-- ----------------------------
INSERT INTO `tb_komite_ogrencileri` VALUES (2, 1, 3);
INSERT INTO `tb_komite_ogrencileri` VALUES (3, 1, 9);
INSERT INTO `tb_komite_ogrencileri` VALUES (4, 1, 4);
INSERT INTO `tb_komite_ogrencileri` VALUES (5, 1, 129);
INSERT INTO `tb_komite_ogrencileri` VALUES (6, 1, 130);
INSERT INTO `tb_komite_ogrencileri` VALUES (8, 1, 2);
INSERT INTO `tb_komite_ogrencileri` VALUES (9, 1, 1);
INSERT INTO `tb_komite_ogrencileri` VALUES (13, 20, 1);
INSERT INTO `tb_komite_ogrencileri` VALUES (17, 1, 131);

-- ----------------------------
-- Table structure for tb_komiteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_komiteler`;
CREATE TABLE `tb_komiteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `ders_kodu` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ders_kurulu_sira` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `baslangic_tarihi` date NULL DEFAULT NULL,
  `bitis_tarihi` date NULL DEFAULT NULL,
  `sinav_tarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_komiteler
-- ----------------------------
INSERT INTO `tb_komiteler` VALUES (1, 1, 'TFTGI1001', 'Tıbba Giriş', '1', '2022-09-19', '2022-11-04', '2022-11-04');
INSERT INTO `tb_komiteler` VALUES (2, 1, 'TFHTY1001', 'Hücrenin Temel Yapısı', '2', '2022-11-07', '2022-12-30', '2022-12-30');
INSERT INTO `tb_komiteler` VALUES (3, 1, 'TFHUG1001', 'Hücre ve Genetik - I', '3', '2023-01-02', '2023-02-03', '2023-02-03');
INSERT INTO `tb_komiteler` VALUES (4, 1, 'TFHUG1002', 'Hücre ve Genetik - II', '4', '2023-02-20', '2023-03-30', '2023-03-31');
INSERT INTO `tb_komiteler` VALUES (5, 1, 'TFDKI1001', 'Doku ve Kas İskelet Sistemi - I', '5', '2023-04-03', '2023-05-11', '2023-05-12');
INSERT INTO `tb_komiteler` VALUES (6, 1, 'TFDKI1002', 'Doku ve Kas İskelet Sistemi - II', '6', '2023-05-15', '2023-06-22', '2023-06-23');
INSERT INTO `tb_komiteler` VALUES (15, 2, 'TFDKS2003', 'Dolaşım, Kan, Lenf ve Solunum Sistemi', NULL, '2022-09-12', '2022-10-27', '2022-10-28');
INSERT INTO `tb_komiteler` VALUES (16, 2, 'TFSME2003', 'Sindirim, Metabolizma ve Endokrin Sistem', NULL, '2022-10-31', '2022-12-15', '2022-12-16');
INSERT INTO `tb_komiteler` VALUES (17, 2, 'TFUGS2003', 'Ürogenital Sistem', NULL, '2022-12-19', '2023-01-26', '2023-01-27');
INSERT INTO `tb_komiteler` VALUES (18, 2, 'TFMSS2004', 'Merkezi Sinir Sistemi', NULL, '2023-01-30', '2023-04-20', '2023-04-21');
INSERT INTO `tb_komiteler` VALUES (19, 2, 'TFMSS2004', 'Hastalıkların Temelleri', NULL, '2023-04-24', '2023-06-23', '2023-06-23');
INSERT INTO `tb_komiteler` VALUES (20, 3, 'TFDKİ3005', 'Deri ve Kas-İskelet sistemi Hastalıkları', NULL, '2022-09-05', '2022-10-07', '2022-10-07');
INSERT INTO `tb_komiteler` VALUES (21, 3, 'TFMSS3005', 'Merkezi Sinir Sistemi ve Duyu Hastalıkları', NULL, '2022-10-10', '2022-11-18', '2022-11-18');
INSERT INTO `tb_komiteler` VALUES (22, 3, 'TFDSS3005', 'Dolaşım ve Solunum Sistemi Hastalıkları', NULL, '2022-11-21', '2022-12-30', '2022-12-30');
INSERT INTO `tb_komiteler` VALUES (23, 3, 'TFSİS3006', 'Sindirim Sistemi Hastalıkları', NULL, '2023-01-02', '2023-02-03', '2023-02-03');
INSERT INTO `tb_komiteler` VALUES (24, 3, 'TFEMK3006', 'Endokrin, Metabolizma, Kan ve Lenf Sistemi Hastalıkları', NULL, '2023-02-20', '2023-03-24', '2023-03-24');
INSERT INTO `tb_komiteler` VALUES (25, 3, 'TFUGS3006', 'Ürogenital Sistem Hastalıkları ', NULL, '2023-03-27', '2023-05-12', '2023-05-12');
INSERT INTO `tb_komiteler` VALUES (26, 3, 'TFBBS3006', 'Birinci Basamak Sağlık Hizmetleri ve Kliniğe Giriş', NULL, '2023-05-15', '2023-06-23', '2023-06-23');

-- ----------------------------
-- Table structure for tb_modul
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul`;
CREATE TABLE `tb_modul`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `modul` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `klasor` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `simge` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `menude_goster` tinyint NULL DEFAULT 1,
  `ust_id` int NULL DEFAULT 0,
  `kategori` tinyint NULL DEFAULT 0,
  `sira` tinyint NULL DEFAULT 1,
  `harici_sayfa` tinyint NULL DEFAULT 0,
  `kategori_acik` tinyint NULL DEFAULT 0,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_modul
-- ----------------------------
INSERT INTO `tb_modul` VALUES (1, 'Anasayfa', 'anasayfa', 'anasayfa', 'fa fa-home', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (2, 'Sistem Kullanıcıları', 'sistemKullanicilari', 'sistemKullanicilari', 'fas fa-users-cog text-red', 1, 0, 0, 99, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (3, 'Yetkiler', 'yetkiler', 'yetkiler', 'far fa-circle text-green', 1, 68, 0, 7, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (32, 'Modul Yetkileri', 'modulYetkileri', 'modulYetkileri', 'far fa-circle text-yellow', 1, 68, 0, 8, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (68, 'Sistem İşlemleri', NULL, NULL, 'fas fa-sliders-h', 1, 0, 1, 100, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (90, 'Ön Tanım', NULL, NULL, 'fas fa-sitemap', 1, 0, 1, 12, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (121, 'Görev Kategorileri', 'gorevKategorileri', 'gorevKategorileri', 'far fa-circle text-blue', 1, 129, 0, 3, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (129, 'Sabit Tanımlar', NULL, NULL, 'fas fa-table', 1, 0, 1, 35, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (142, 'Anket İşlemleri', '', '', 'fas fa-edit text-green', 0, 0, 1, 42, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (143, 'Anketler', 'anketler', 'anketler', 'fas fa-question text-orange', 0, 142, 0, 2, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (144, 'Anket Şablonu', 'sablonlar', 'anketler', 'fas fa-copy text-warning', 0, 142, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (145, 'Anket Cevapla', 'anket', 'anketler', 'fas fa-edit', 0, 142, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (146, 'Birim Ağacı', 'birimAgaci', 'birimAgaci', 'fas fa-sitemap text-blue', 1, 0, 0, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (147, 'Personeller', 'personeller', 'personeller', 'fas fa-users text-info', 1, 0, 0, 6, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (148, 'Öğrenim Bilgileri', 'ogrenimBilgileri', 'ogrenimBilgileri', 'fas fa-book text-orange', 1, 0, 0, 6, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (150, 'Birim Sayfaları', 'birimSayfalari', 'birimSayfalari', 'fas fa-file-alt text-green', 1, 153, 0, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (151, 'Duyurular', 'duyurular', 'duyurular', 'fas fa-bullhorn text-yellow', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (152, 'Manşetler', 'slaytlar', 'slaytlar', 'fas fa-pager text-blue', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (153, 'Birim Sayfaları', NULL, NULL, 'fas fa-file-alt text-red', 1, 0, 1, 5, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (154, 'Genel Ayarlar', 'genelAyarlar', 'genelAyarlar', 'fas fa-cog', 1, 153, 0, 2, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (155, 'Etkinlikler', 'etkinlikler', 'etkinlikler', 'fas fa-calendar-alt text-blue', 1, 153, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (156, 'Panel Çevirileri', 'panelCevirileri', 'panelCevirileri', 'fas fa-language text-green', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (157, 'Web Çevirileri', 'webCevirileri', 'webCevirileri', 'fas fa-language text-orange', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (158, 'Görevler', 'gorevler', 'gorevler', 'fas fa-briefcase', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (159, 'Birim Yetkileri', 'birimYetkileri', 'birimYetkileri', 'fas fa-tasks', 1, 0, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (160, 'Ünvanlar', 'unvanlar', 'unvanlar', 'far fa-circle text-yellow', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (161, 'Eğitim Düzeyleri', 'egitimDuzeyleri', 'egitimDuzeyleri', 'far fa-circle text-green', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);
INSERT INTO `tb_modul` VALUES (162, 'Personel Nielikleri', 'personelNitelikleri', 'personelNitelikleri', 'far fa-circle text-red', 1, 129, 0, 1, 0, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_modul_yetki_islemler
-- ----------------------------
DROP TABLE IF EXISTS `tb_modul_yetki_islemler`;
CREATE TABLE `tb_modul_yetki_islemler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modul_id` int NULL DEFAULT NULL,
  `yetki_islem_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_modul_yetki_islemler
-- ----------------------------
INSERT INTO `tb_modul_yetki_islemler` VALUES (7, 3, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (8, 3, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (9, 3, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (10, 3, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (11, 3, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (12, 3, 15);
INSERT INTO `tb_modul_yetki_islemler` VALUES (13, 32, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (14, 32, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (15, 32, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (16, 32, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (17, 32, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (46, 53, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (47, 53, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (48, 53, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (49, 53, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (50, 53, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (51, 54, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (52, 54, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (53, 54, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (54, 54, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (55, 54, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (56, 55, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (57, 55, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (58, 55, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (59, 55, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (60, 55, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (61, 56, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (62, 56, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (63, 56, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (64, 56, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (65, 56, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (66, 57, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (67, 57, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (68, 57, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (69, 57, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (70, 57, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (71, 58, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (72, 58, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (73, 58, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (74, 58, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (75, 58, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (76, 59, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (77, 59, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (78, 59, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (79, 59, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (80, 59, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (81, 60, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (82, 60, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (83, 60, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (84, 60, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (85, 60, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (86, 61, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (87, 61, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (88, 61, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (89, 61, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (90, 61, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (91, 62, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (92, 62, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (93, 62, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (94, 62, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (95, 62, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (114, 1, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (115, 1, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (378, 70, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (379, 70, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (380, 70, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (381, 70, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (382, 70, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (383, 70, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (384, 2, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (385, 2, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (386, 2, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (387, 2, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (388, 2, 11);
INSERT INTO `tb_modul_yetki_islemler` VALUES (389, 2, 12);
INSERT INTO `tb_modul_yetki_islemler` VALUES (390, 2, 15);
INSERT INTO `tb_modul_yetki_islemler` VALUES (391, 49, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (392, 49, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (393, 49, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (394, 49, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (456, 63, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (457, 63, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (458, 63, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (459, 63, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (460, 63, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (461, 63, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (462, 63, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (463, 63, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (577, 65, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (578, 65, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (579, 65, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (580, 65, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (581, 65, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (582, 65, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (583, 65, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (584, 65, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (585, 66, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (586, 66, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (587, 66, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (588, 66, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (589, 66, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (590, 66, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (591, 66, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (592, 51, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (593, 51, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (594, 51, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (595, 51, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (596, 51, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (597, 51, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (598, 51, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (599, 51, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (600, 51, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (601, 51, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (602, 51, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (603, 51, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (604, 51, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (605, 51, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (606, 51, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (607, 51, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (608, 51, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (609, 51, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (610, 51, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (611, 52, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (612, 52, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (613, 52, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (614, 52, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (615, 52, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (616, 52, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (617, 52, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (618, 52, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (619, 48, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (620, 48, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (621, 48, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (622, 48, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (623, 48, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (624, 48, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (625, 48, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (626, 48, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (627, 48, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (628, 48, 28);
INSERT INTO `tb_modul_yetki_islemler` VALUES (629, 48, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (630, 48, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (631, 48, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (632, 48, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (633, 48, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (634, 48, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (635, 48, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (636, 48, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (637, 48, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (638, 48, 39);
INSERT INTO `tb_modul_yetki_islemler` VALUES (639, 48, 40);
INSERT INTO `tb_modul_yetki_islemler` VALUES (640, 48, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (641, 71, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (642, 71, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (643, 72, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (644, 72, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (647, 50, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (648, 50, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (649, 50, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (650, 50, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (651, 50, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (652, 50, 24);
INSERT INTO `tb_modul_yetki_islemler` VALUES (653, 50, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (654, 50, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (655, 50, 27);
INSERT INTO `tb_modul_yetki_islemler` VALUES (656, 50, 29);
INSERT INTO `tb_modul_yetki_islemler` VALUES (657, 50, 30);
INSERT INTO `tb_modul_yetki_islemler` VALUES (658, 50, 31);
INSERT INTO `tb_modul_yetki_islemler` VALUES (659, 50, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (660, 50, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (661, 50, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (662, 69, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (663, 69, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (664, 69, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (665, 69, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (666, 69, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (667, 69, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (668, 69, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (669, 69, 25);
INSERT INTO `tb_modul_yetki_islemler` VALUES (670, 69, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (671, 69, 33);
INSERT INTO `tb_modul_yetki_islemler` VALUES (672, 69, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (673, 69, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (674, 69, 38);
INSERT INTO `tb_modul_yetki_islemler` VALUES (675, 69, 39);
INSERT INTO `tb_modul_yetki_islemler` VALUES (676, 69, 40);
INSERT INTO `tb_modul_yetki_islemler` VALUES (681, 73, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (682, 73, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (683, 73, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (684, 73, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (685, 73, 26);
INSERT INTO `tb_modul_yetki_islemler` VALUES (686, 73, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (687, 73, 41);
INSERT INTO `tb_modul_yetki_islemler` VALUES (708, 77, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (709, 77, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (710, 77, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (711, 77, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (712, 77, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (713, 77, 34);
INSERT INTO `tb_modul_yetki_islemler` VALUES (714, 77, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (715, 74, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (716, 74, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (717, 74, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (718, 74, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (719, 74, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (720, 74, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (721, 74, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (722, 75, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (723, 75, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (724, 75, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (725, 75, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (726, 75, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (727, 75, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (728, 75, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (729, 75, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (730, 78, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (731, 78, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (732, 78, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (733, 78, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (734, 78, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (735, 78, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (736, 78, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (737, 78, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (738, 76, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (739, 76, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (740, 76, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (741, 76, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (742, 76, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (743, 76, 32);
INSERT INTO `tb_modul_yetki_islemler` VALUES (744, 76, 35);
INSERT INTO `tb_modul_yetki_islemler` VALUES (745, 76, 36);
INSERT INTO `tb_modul_yetki_islemler` VALUES (746, 80, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (747, 80, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (748, 80, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (749, 80, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (750, 80, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (755, 92, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (756, 92, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (757, 92, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (758, 92, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (759, 92, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (760, 91, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (761, 91, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (762, 91, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (763, 91, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (764, 91, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (765, 86, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (766, 86, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (767, 86, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (768, 86, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (769, 86, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (770, 87, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (771, 87, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (772, 87, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (773, 87, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (774, 87, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (775, 98, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (776, 98, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (777, 98, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (778, 98, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (779, 98, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (780, 98, 23);
INSERT INTO `tb_modul_yetki_islemler` VALUES (841, 139, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (842, 139, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (843, 139, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (844, 139, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (845, 139, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (846, 139, 47);
INSERT INTO `tb_modul_yetki_islemler` VALUES (847, 139, 48);
INSERT INTO `tb_modul_yetki_islemler` VALUES (848, 139, 50);
INSERT INTO `tb_modul_yetki_islemler` VALUES (849, 139, 51);
INSERT INTO `tb_modul_yetki_islemler` VALUES (850, 139, 52);
INSERT INTO `tb_modul_yetki_islemler` VALUES (851, 139, 53);
INSERT INTO `tb_modul_yetki_islemler` VALUES (852, 139, 54);
INSERT INTO `tb_modul_yetki_islemler` VALUES (853, 139, 55);
INSERT INTO `tb_modul_yetki_islemler` VALUES (854, 139, 56);
INSERT INTO `tb_modul_yetki_islemler` VALUES (855, 0, 54);
INSERT INTO `tb_modul_yetki_islemler` VALUES (856, 133, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (857, 133, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (858, 133, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (859, 133, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (860, 133, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (861, 133, 44);
INSERT INTO `tb_modul_yetki_islemler` VALUES (862, 133, 54);
INSERT INTO `tb_modul_yetki_islemler` VALUES (863, 137, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (864, 137, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (865, 137, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (866, 137, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (867, 137, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (868, 137, 47);
INSERT INTO `tb_modul_yetki_islemler` VALUES (869, 137, 48);
INSERT INTO `tb_modul_yetki_islemler` VALUES (870, 117, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (871, 117, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (872, 117, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (873, 117, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (874, 117, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (875, 141, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (876, 140, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (877, 145, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (878, 145, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (879, 147, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (880, 147, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (881, 147, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (882, 147, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (883, 147, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (884, 147, 6);
INSERT INTO `tb_modul_yetki_islemler` VALUES (885, 148, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (886, 148, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (887, 148, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (888, 148, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (889, 148, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (890, 149, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (891, 149, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (892, 149, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (893, 149, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (894, 149, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (895, 146, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (896, 146, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (897, 146, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (898, 146, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (899, 146, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (900, 144, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (901, 144, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (902, 144, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (903, 144, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (904, 144, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (905, 144, 49);
INSERT INTO `tb_modul_yetki_islemler` VALUES (906, 144, 53);
INSERT INTO `tb_modul_yetki_islemler` VALUES (907, 144, 54);
INSERT INTO `tb_modul_yetki_islemler` VALUES (908, 144, 55);
INSERT INTO `tb_modul_yetki_islemler` VALUES (909, 144, 56);
INSERT INTO `tb_modul_yetki_islemler` VALUES (910, 143, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (911, 143, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (912, 143, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (913, 143, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (914, 143, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (915, 143, 53);
INSERT INTO `tb_modul_yetki_islemler` VALUES (916, 143, 54);
INSERT INTO `tb_modul_yetki_islemler` VALUES (917, 143, 55);
INSERT INTO `tb_modul_yetki_islemler` VALUES (918, 143, 56);
INSERT INTO `tb_modul_yetki_islemler` VALUES (924, 157, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (925, 157, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (926, 157, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (927, 157, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (928, 156, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (929, 156, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (930, 156, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (931, 156, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (932, 156, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (958, 121, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (959, 121, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (960, 121, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (961, 121, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (962, 121, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (963, 151, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (964, 151, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (965, 151, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (966, 151, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (967, 151, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (968, 151, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (969, 152, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (970, 152, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (971, 152, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (972, 152, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (973, 152, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (974, 152, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (975, 154, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (976, 154, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (977, 154, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (978, 154, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (979, 154, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (980, 154, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (981, 155, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (982, 155, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (983, 155, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (984, 155, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (985, 155, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (986, 155, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (987, 158, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (988, 158, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (989, 158, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (990, 158, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (991, 158, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (992, 158, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (999, 150, 1);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1000, 150, 2);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1001, 150, 3);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1002, 150, 4);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1003, 150, 5);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1004, 150, 57);
INSERT INTO `tb_modul_yetki_islemler` VALUES (1005, 150, 58);

-- ----------------------------
-- Table structure for tb_mufredat
-- ----------------------------
DROP TABLE IF EXISTS `tb_mufredat`;
CREATE TABLE `tb_mufredat`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ust_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  `ogrenim_hedefi_mi` tinyint NULL DEFAULT NULL,
  `kategori` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mufredat
-- ----------------------------
INSERT INTO `tb_mufredat` VALUES (1, 0, 'Ders Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (2, 1, '1. Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (3, 2, '1. Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (4, 3, '1. Alt Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (5, 4, 'Öğrenim Hedefi 1', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (7, 4, 'Öğrenim Hedefi 2', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (8, 4, 'Öğrenim Hedefi 3', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (9, 4, 'Öğrenim Hedefi 4', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (10, 3, '2. Alt Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (11, 3, '3. Alt Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (12, 10, 'Öğrenim Hedefi 1', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (13, 10, 'Öğrenim Hedefi 2', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (14, 10, 'Öğrenim Hedefi 3', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (15, 10, 'Öğrenim Hedefi 4', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (16, 10, 'Öğrenim Hedefi 5', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (17, 11, 'Öğrenim Hedefi 1', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (18, 11, 'Öğrenim Hedefi 2', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (19, 11, 'Öğrenim Hedefi 3', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (21, 0, 'Ders Kategori', 1, 1, 2, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (22, 21, '1. Alt Kategori', 1, 1, 2, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (23, 22, '1 Alt Alt Kategori', 1, 1, 2, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (24, 23, '1. Alt Alt Alt Kategori', 1, 1, 2, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (25, 24, 'Öğrenim Hedefi', 1, 1, 2, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (26, 24, 'Öğrenim Hedefi', 1, 1, 2, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (27, 24, 'Öğrenim Hedefi', 1, 1, 2, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (28, 24, 'Öğrenim Hedefi', 1, 1, 2, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (29, 1, '2. Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (30, 0, '1. Ders Kategori', 1, 1, 14, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (31, 29, '1. Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (32, 31, '1. Alt Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (33, 31, '2. Alt Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (34, 31, '3. Alt Alt Alt kategori', 1, 1, 1, NULL, NULL, 0);
INSERT INTO `tb_mufredat` VALUES (35, 1, '3. Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (36, 2, '2. Alt Alt Kategori', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (37, 0, 'Kategori', 1, 1, 14, 21, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (38, 37, 'Alt Kategori', 1, 1, 14, 21, NULL, 1);
INSERT INTO `tb_mufredat` VALUES (39, 0, 'sdfsdf', 1, 1, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for tb_ogrenciler
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogrenciler`;
CREATE TABLE `tb_ogrenciler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `bolum_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `tc_kimlik_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ogrenci_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sinif` tinyint NULL DEFAULT NULL,
  `kayit_yili` year NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int UNSIGNED NULL DEFAULT 14,
  `super` tinyint NULL DEFAULT 0,
  `cep_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adres` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `kullanici_turu` varchar(25) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'ogrenci',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogrenciler
-- ----------------------------
INSERT INTO `tb_ogrenciler` VALUES (1, 1, 1, 1, 1, '', '17060001008', 'Şeyma Nur', 'ERÇİN', NULL, NULL, '2@gmail.com', '4297f44b13955235245b2497399d7a93', NULL, 14, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (2, 1, 1, 1, 1, '', '17060001009', 'Oğulcan', 'AKÇAY', NULL, NULL, '3@gmail.com', '4297f44b13955235245b2497399d7a93', NULL, 14, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (3, 1, 1, 1, 1, '', '17060001010', 'Azad', 'ZENGİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (4, 1, 1, 1, 1, '', '17060001011', 'Ferhat', 'BUCAĞA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (5, 1, 1, 1, 1, '', '17060001012', 'Ayşenur', 'ALMA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (6, 1, 1, 1, 1, '', '17060001013', 'Erkan', 'BAĞTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (7, 1, 1, 1, 1, '', '17060001014', 'Berçem Fatma', 'YILDIZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (8, 1, 1, 1, 1, '', '17060001015', 'Musa', 'İNCEER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (9, 1, 1, 1, 1, '', '17060001016', 'Fatma Betül', 'UĞURLU', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (10, 1, 1, 1, 1, '', '17060001017', 'Elif Sümeyya', 'AKSÖZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (11, 1, 1, 1, 1, '', '17060001018', 'Hasan', 'SÖNMEZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (12, 1, 1, 1, 1, '', '17060001019', 'Sözdar', 'CİHAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (13, 1, 1, 1, 1, '', '17060001020', 'Muhammed', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (14, 1, 1, 1, 1, '', '17060001022', 'Ömer', 'BEKİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (15, 1, 1, 1, 1, '', '17060001023', 'Onur', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (16, 1, 1, 1, 1, '', '17060001024', 'Neslihan', 'DİZMAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (17, 1, 1, 1, 1, '', '17060001025', 'Taha Miraç', 'GÜNEŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (18, 1, 1, 1, 1, '', '17060001026', 'Cevdet', 'ŞEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (19, 1, 1, 1, 1, '', '17060001027', 'Tekin', 'TÜRKER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (20, 1, 1, 1, 1, '', '17060001028', 'Meryem', 'ERŞEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (21, 1, 1, 1, 1, '', '17060001029', 'Dudu', 'ÇEKİCİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (22, 1, 1, 1, 1, '', '17060001031', 'Şehnaz', 'DOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (23, 1, 1, 1, 1, '', '17060001035', 'Mehmet', 'ALTUN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (24, 1, 1, 1, 1, '', '17060001036', 'Elif Berfin', 'KÖKLİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (25, 1, 1, 1, 1, '', '17060001037', 'Kadir', 'KALAÇ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (26, 1, 1, 1, 1, '', '17060001038', 'Yunus', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (27, 1, 1, 1, 1, '', '17060001039', 'Zelal', 'YAYLA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (28, 1, 1, 1, 1, '', '17060001040', 'Veysel Karani', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (29, 1, 1, 1, 1, '', '17060001041', 'Burhan', 'KIZILTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (30, 1, 1, 1, 1, '', '17060001043', 'İbrahim', 'ÇOBANOĞLU', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (31, 1, 1, 1, 1, '', '17060001047', 'Özcan', 'DAYAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (32, 1, 1, 1, 1, '', '17060001048', 'Vedat', 'KAVAK', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (33, 1, 1, 1, 1, '', '17060001051', 'Mert', 'KARTAL', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (34, 1, 1, 1, 1, '', '17060001053', 'Evin', 'BÖLER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (35, 1, 1, 1, 1, '', '17060001054', 'Beyza', 'TUR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (36, 1, 1, 1, 1, '', '17060001055', 'Mizgin', 'BOZKURT', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (37, 1, 1, 1, 1, '', '17060001057', 'Naz Neval', 'ERTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (38, 1, 1, 1, 1, '', '17060001058', 'Yasin', 'DENİZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (39, 1, 1, 1, 1, '', '17060001060', 'Ahmet', 'KOÇAK', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (40, 1, 1, 1, 1, '', '17060001062', 'Emine', 'KIZILDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (41, 1, 1, 1, 1, '', '17060001063', 'Arif', 'GÖKDERE', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (42, 1, 1, 1, 1, '', '17060001065', 'Hüseyin Harun', 'KADIRHAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (43, 1, 1, 1, 1, '', '17060001066', 'Diyar', 'VARIŞLI', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (44, 1, 1, 1, 1, '', '17060001067', 'Yüksel', 'METİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (45, 1, 1, 1, 1, '', '17060001069', 'Fatma', 'YUTAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (46, 1, 1, 1, 1, '', '17060001072', 'İbrahim Halil', 'ERZEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (47, 1, 1, 1, 1, '', '17060001073', 'Mehmet Barsim', 'BOĞATEKİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (48, 1, 1, 1, 1, '', '17060001074', 'Tuğba', 'ATLAM', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (49, 1, 1, 1, 1, '', '17060001075', 'Adem', 'KARAMAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (50, 1, 1, 1, 1, '', '17060001078', 'Bedirhan', 'ERDAL', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (51, 1, 1, 1, 1, '', '17060001079', 'Cihat', 'SEVİNÇ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (52, 1, 1, 1, 1, '', '17060001080', 'Nurşen', 'CENGİZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (53, 1, 1, 1, 1, '', '17060001081', 'Ahmet Alperen', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (54, 1, 1, 1, 1, '', '17060001082', 'Yasemin', 'TUNÇAY', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (55, 1, 1, 1, 1, '', '17060001087', 'İsmail', 'ERDOĞAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (56, 1, 1, 1, 1, '', '17060001088', 'Afşin', 'DUMAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (57, 1, 1, 1, 1, '', '17060001090', 'Cennet', 'ÖZTÜRK', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (58, 1, 1, 1, 1, '', '17060001091', 'Mesut', 'GÜLER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (59, 1, 1, 1, 1, '', '17060001093', 'Mustafa', 'GÜVEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (60, 1, 1, 1, 1, '', '17060001094', 'Veysel', 'GÜR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (61, 1, 1, 1, 1, '', '17060001095', 'Zafer', 'KATAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (62, 1, 1, 1, 1, '', '17060001096', 'Gamze', 'AĞCA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (63, 1, 1, 1, 1, '', '17060001098', 'Saliha Nihan', 'ÜRKMEZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (64, 1, 1, 1, 1, '', '17060001099', 'Eda', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (65, 1, 1, 1, 1, '', '17060001101', 'Murat', 'AKSOY', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (66, 1, 1, 1, 1, '', '17060001102', 'Pelin', 'UNUL', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (67, 1, 1, 1, 1, '', '17060001109', 'Ezgi', 'CESUR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (68, 1, 1, 1, 1, '', '17060001111', 'Batuhan', 'BAYKUŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (69, 1, 1, 1, 1, '', '17060001112', 'Serhat', 'UYGUR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (70, 1, 1, 1, 1, '', '17060001113', 'Muhammed', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (71, 1, 1, 1, 1, '', '17060001116', 'Nefise', 'AYDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (72, 1, 1, 1, 1, '', '17060001118', 'Fatmanur', 'MİRBEY', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (73, 1, 1, 1, 1, '', '17060001119', 'Gönül Aslı', 'CAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (74, 1, 1, 1, 1, '', '17060001120', 'Ömer Faruk', 'YUNAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (75, 1, 1, 1, 1, '', '17060001121', 'Zehra', 'HANBABA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (76, 1, 1, 1, 1, '', '17060001124', 'Ümmügülsüm', 'GÜRAY', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (77, 1, 1, 1, 1, '', '17060001125', 'Betül', 'AYÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (78, 1, 1, 1, 1, '', '17060001127', 'Çağdaş', 'DİLEKCİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (79, 1, 1, 1, 1, '', '17060001130', 'Arzu', 'DEMİRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (80, 1, 1, 1, 1, '', '17060001131', 'Sümeyye Nur', 'ÖNER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (81, 1, 1, 1, 1, '', '17060001134', 'Hasret', 'BULUT', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (82, 1, 1, 1, 1, '', '17060001135', 'Esra', 'DEĞER', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (83, 1, 1, 1, 1, '', '17060001137', 'Melike', 'KARA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (84, 1, 1, 1, 1, '', '17060001138', 'Mücahit', 'ÇALIŞKAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (85, 1, 1, 1, 1, '', '17060001139', 'Fehime', 'KURT', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (86, 1, 1, 1, 1, '', '17060001143', 'Ümran', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (87, 1, 1, 1, 1, '', '17060001144', 'Saruhan Fikri', 'AYDIN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (88, 1, 1, 1, 1, '', '17060001147', 'Nursena', 'KARABULUT', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (89, 1, 1, 1, 1, '', '17060001148', 'Gurbet', 'KARABAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (90, 1, 1, 1, 1, '', '17060001149', 'Melek', 'DEMİR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (91, 1, 1, 1, 1, '', '17060001150', 'Beyza', 'ÖZDEMİR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (92, 1, 1, 1, 1, '', '17060001129', 'Beyzanur', 'EYVAZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (93, 1, 1, 1, 1, '', '17060001151', 'Emine Şevval', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (94, 1, 1, 1, 1, '', '17060001153', 'Muhammed Hamza', 'YAZÇİÇEK', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (95, 1, 1, 1, 1, '', '17060001162', 'Ahmet Sait', 'AĞIRTAŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (96, 1, 1, 1, 1, '', '17060001165', 'Ahmed.M.Y.', 'SAIDAM', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (97, 1, 1, 1, 1, '', '17060001171', 'Serkan', 'CEYLAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (98, 1, 1, 1, 1, '', '16060001006', 'Deniz', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (99, 1, 1, 1, 1, '', '16060001011', 'Şahin', 'YAŞAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (100, 1, 1, 1, 1, '', '16060001021', 'Mehmet Emin', 'ÇAKIR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (101, 1, 1, 1, 1, '', '16060001024', 'Rojin', 'KIZILAY', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (102, 1, 1, 1, 1, '', '16060001028', 'Melek', 'KAYA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (103, 1, 1, 1, 1, '', '16060001045', 'Baran', 'DAKMAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (104, 1, 1, 1, 1, '', '16060001060', 'Mehmet Ali', 'SEÇMEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (105, 1, 1, 1, 1, '', '16060001071', 'Berivan İdil', 'ABİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (106, 1, 1, 1, 1, '', '16060001088', 'Dilek', 'AFERİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (107, 1, 1, 1, 1, '', '16060001104', 'Ali', 'EROĞULLARI', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (108, 1, 1, 1, 1, '', '16060001129', 'Mevlüt Özgür', 'ACAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (109, 1, 1, 1, 1, '', '16060001151', 'Mohamad', 'ALHAMDO', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (110, 1, 1, 1, 1, '', '15060001133', 'Abdulsamet', 'BEŞKARDEŞ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (111, 1, 1, 1, 1, '', '14060001069', 'İbrahim', 'GÜLTEKİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (112, 1, 1, 1, 1, '', '14060001135', 'Nail', 'BEYAZIT', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (113, 1, 1, 1, 1, '', '19060001152', 'Elif', 'AVA', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (114, 1, 1, 1, 1, '', '19060001153', 'Barış', 'TUNÇ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (115, 1, 1, 1, 1, '', '19060001162', 'Neslihan', 'ARSLAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (116, 1, 1, 1, 1, '', '20060001152', 'Yasemin', 'ÖZMEN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (117, 1, 1, 1, 1, '', '20060001153', 'Abdullah Harun', 'YILMAZ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (118, 1, 1, 1, 1, '', '21060001170', 'Hakan', 'BAYRAM', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (119, 1, 1, 1, 1, '', '16060001061', 'Fulya', 'ŞAHİN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (120, 1, 1, 1, 1, '', '16060001080', 'Ramazan', 'YALMAÇ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (121, 1, 1, 1, 1, '', '15060001059', 'Dıjvar', 'DENLİ', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (122, 1, 1, 1, 1, '', '14060001130', 'Gülezgi', 'KAYAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (123, 1, 1, 1, 1, '', '13060001135', 'Muhammed', 'FATİH', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (124, 1, 1, 1, 1, '', '16060001121', 'Furkan Kağan', 'DALDABAN', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (125, 1, 1, 1, 1, '', '20060001007', 'Muhammed Enes', 'UÇAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (126, 1, 1, 1, 1, '', '20060001002', 'Dilara', 'AVCI', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (127, 1, 1, 1, 1, '', '16060001119', 'Ömer', 'KUTLU', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (128, 1, 1, 1, 1, '', '16060001013', 'Abdullah', 'SEVAL', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (129, 1, 1, 1, 1, '', '14060001140', 'M.Kasım', 'ÇAKILLIKOYAK', NULL, NULL, '1@gmail.com', '4297f44b13955235245b2497399d7a93', NULL, 14, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (130, 1, 1, 1, 1, '', '15060001168', 'Mehmet', 'YAZAR', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ogrenci', 1);
INSERT INTO `tb_ogrenciler` VALUES (131, 1, 1, 1, 1, '13337993570', '16060001081', 'Öğrenci', 'Profili', 11, 2021, 'resul.evis@gmail.com', '4297f44b13955235245b2497399d7a93', NULL, 14, 0, '5366373523', 'Seyrantepe Mah. Van', 'ogrenci', 1);

-- ----------------------------
-- Table structure for tb_ogretim_elemanlari
-- ----------------------------
DROP TABLE IF EXISTS `tb_ogretim_elemanlari`;
CREATE TABLE `tb_ogretim_elemanlari`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `fakulte_id` int NULL DEFAULT NULL,
  `anabilim_dali_id` int NULL DEFAULT NULL,
  `tc_kimlik_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `unvan_id` int NULL DEFAULT NULL,
  `adi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `cep_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int NULL DEFAULT 15,
  `super` tinyint NULL DEFAULT 0,
  `kullanici_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'ogretmen',
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ogretim_elemanlari
-- ----------------------------
INSERT INTO `tb_ogretim_elemanlari` VALUES (1, 1, 1, 1, NULL, 1, 'Naci', 'GENÇ', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (2, 1, 1, 1, NULL, 1, 'H. Eray', 'ÇELİK', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1);
INSERT INTO `tb_ogretim_elemanlari` VALUES (3, 1, 1, 1, NULL, 3, 'Serbest', 'ZİYANAK', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1);

-- ----------------------------
-- Table structure for tb_personel_nitelikleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_personel_nitelikleri`;
CREATE TABLE `tb_personel_nitelikleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_personel_nitelikleri
-- ----------------------------
INSERT INTO `tb_personel_nitelikleri` VALUES (1, 'Akademik Personel', NULL, 'a', 'b', 'c');
INSERT INTO `tb_personel_nitelikleri` VALUES (2, 'İdari Personel', NULL, NULL, NULL, NULL);
INSERT INTO `tb_personel_nitelikleri` VALUES (3, 'Diğer', NULL, NULL, NULL, NULL);
INSERT INTO `tb_personel_nitelikleri` VALUES (6, 'dfsdf', NULL, 'sdfsdf', 'sdfsdf', 'sdfsdf');

-- ----------------------------
-- Table structure for tb_personel_ogrenim_bilgileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_personel_ogrenim_bilgileri`;
CREATE TABLE `tb_personel_ogrenim_bilgileri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `personel_id` int NULL DEFAULT NULL,
  `egitim_duzeyi_id` int NULL DEFAULT NULL,
  `universite` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fakulte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bolum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mezuniyet_yili` year NULL DEFAULT NULL,
  `diploma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_personel_ogrenim_bilgileri
-- ----------------------------

-- ----------------------------
-- Table structure for tb_personel_turleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_personel_turleri`;
CREATE TABLE `tb_personel_turleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_personel_turleri
-- ----------------------------
INSERT INTO `tb_personel_turleri` VALUES (1, 'Sözleşmeli Personel', NULL, NULL, NULL, NULL);
INSERT INTO `tb_personel_turleri` VALUES (2, 'Kadrolu Personel', NULL, NULL, NULL, NULL);
INSERT INTO `tb_personel_turleri` VALUES (3, 'Kısmi Zamanlı Personel', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_personeller
-- ----------------------------
DROP TABLE IF EXISTS `tb_personeller`;
CREATE TABLE `tb_personeller`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `in_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `vatandaslik_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pasaport_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birim_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soyadi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uyruk_id` int NULL DEFAULT NULL,
  `cinsiyet` tinyint NULL DEFAULT NULL,
  `dogum_tarihi` datetime NULL DEFAULT NULL,
  `kan_grubu_id` int NULL DEFAULT NULL,
  `engel_durumu` tinyint NULL DEFAULT NULL,
  `engel_turu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `personel_turu_id` int NULL DEFAULT NULL COMMENT 'Sözleşmeli,kadrolu,kısmi zamanlı vs.',
  `personel_nitelik_id` int NULL DEFAULT NULL COMMENT 'Akademik-İdari',
  `egitim_duzeyi_id` int NULL DEFAULT NULL,
  `unvan_id` int NULL DEFAULT NULL,
  `ise_baslama_tarihi` datetime NULL DEFAULT NULL,
  `sozlesme_baslama_tarihi` datetime NULL DEFAULT NULL,
  `sozlesme_bitis_tarihi` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gsm1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gsm2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ev_adresi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_adresi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_telefonu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'resim_yok.png',
  `arac_plaka` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `medeni_durumu` tinyint NULL DEFAULT NULL,
  `kullanici_turu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'personel',
  `sifre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  `adi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soyadi_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soyadi_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `soyadi_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `engel_turu_kz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `engel_turu_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `engel_turu_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ev_adresi_kz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ev_adresi_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `ev_adresi_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_adresi_kz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_adresi_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_adresi_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `rol_id` int NULL DEFAULT 1,
  `super` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_personeller
-- ----------------------------
INSERT INTO `tb_personeller` VALUES (3, '45982964018', '456982964018', '456412222', 12, 'Serbest', 'Ziyanak', 223, 2, '1989-01-20 00:00:00', 1, 1, 'yok', 1, 1, 5, 4, '2023-08-28 00:00:00', '2023-09-18 00:00:00', '2024-09-18 00:00:00', 'serbest@ayu.edu.kz', '5444961144', '5444961144', 'Mağjan 4', 'Ayu kampüs', '5444961144', 'personel_3_65080a3d6b5e2.jpg', '21HB001', 2, 'personel', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Kazakça Serbest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO `tb_personeller` VALUES (4, '234234234', '', '', 222, 'Naci', 'Genç', 0, 0, NULL, 0, 0, '', 0, 0, 0, 1, NULL, NULL, NULL, 'nacigenc@ayu.edu.kz', '', '', '', '', '', 'personel_4_65080a325c394.jpg', '', 0, 'personel', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO `tb_personeller` VALUES (5, '45435', '', '', 220, 'dfghfdh', 'fghfgh', 0, NULL, NULL, 0, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, 'serbest.ziyanak@gmail.com', '', '', '', '', '', 'resim_yok.png', '', NULL, 'personel', 'd41d8cd98f00b204e9800998ecf8427e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO `tb_personeller` VALUES (6, '456456546', '', '', 221, 'vbnvbn', 'vbnvbn', 0, NULL, NULL, 0, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, 'serbest.ziyanak@gmail.com', '', '', '', '', '', 'resim_yok.png', '', NULL, 'personel', 'd41d8cd98f00b204e9800998ecf8427e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for tb_programlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_programlar`;
CREATE TABLE `tb_programlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `bolum_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `varsayilan` tinyint NULL DEFAULT 0,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_programlar
-- ----------------------------
INSERT INTO `tb_programlar` VALUES (1, 1, 1, 'Tıp Lisans', 1, 1);

-- ----------------------------
-- Table structure for tb_rol_yetkiler
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkiler`;
CREATE TABLE `tb_rol_yetkiler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `modul_id` int NULL DEFAULT NULL,
  `islem_turu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rol_yetkiler
-- ----------------------------
INSERT INTO `tb_rol_yetkiler` VALUES (1, 20, 133, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (2, 20, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (4, 20, 2, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (5, 20, 2, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (6, 20, 2, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (7, 20, 2, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (8, 20, 2, 11);
INSERT INTO `tb_rol_yetkiler` VALUES (9, 20, 32, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (10, 20, 32, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (11, 20, 32, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (12, 20, 32, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (13, 20, 32, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (24, 20, 3, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (25, 20, 3, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (26, 20, 3, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (27, 20, 3, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (28, 20, 3, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (58, 15, 139, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (59, 15, 139, 47);
INSERT INTO `tb_rol_yetkiler` VALUES (60, 15, 139, 50);
INSERT INTO `tb_rol_yetkiler` VALUES (61, 15, 139, 53);
INSERT INTO `tb_rol_yetkiler` VALUES (62, 15, 139, 54);
INSERT INTO `tb_rol_yetkiler` VALUES (63, 15, 139, 55);
INSERT INTO `tb_rol_yetkiler` VALUES (64, 15, 139, 56);
INSERT INTO `tb_rol_yetkiler` VALUES (71, 15, 133, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (72, 15, 133, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (73, 15, 133, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (74, 15, 133, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (75, 15, 133, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (76, 15, 133, 44);
INSERT INTO `tb_rol_yetkiler` VALUES (77, 15, 133, 54);
INSERT INTO `tb_rol_yetkiler` VALUES (78, 15, 137, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (79, 15, 137, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (80, 15, 137, 47);
INSERT INTO `tb_rol_yetkiler` VALUES (81, 15, 137, 48);
INSERT INTO `tb_rol_yetkiler` VALUES (82, 15, 117, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (83, 15, 117, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (84, 15, 117, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (85, 14, 141, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (86, 14, 140, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (87, 14, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (88, 14, 145, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (89, 14, 145, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (90, 21, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (91, 1, 1, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (92, 1, 147, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (93, 1, 147, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (94, 1, 147, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (112, 14, 147, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (113, 14, 147, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (114, 14, 147, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (115, 14, 147, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (116, 14, 151, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (117, 14, 151, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (118, 14, 151, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (119, 14, 151, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (120, 14, 151, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (121, 14, 151, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (122, 14, 152, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (123, 14, 152, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (124, 14, 152, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (125, 14, 152, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (126, 14, 152, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (127, 14, 152, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (128, 14, 154, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (129, 14, 154, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (130, 14, 154, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (131, 14, 154, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (132, 14, 154, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (133, 14, 154, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (134, 14, 155, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (135, 14, 155, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (136, 14, 155, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (137, 14, 155, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (138, 14, 155, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (139, 14, 155, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (140, 14, 156, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (141, 14, 156, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (142, 14, 156, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (143, 14, 156, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (144, 14, 156, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (145, 14, 157, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (146, 14, 157, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (147, 14, 157, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (148, 14, 157, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (149, 14, 150, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (150, 14, 150, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (151, 14, 150, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (152, 14, 150, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (153, 14, 150, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (154, 14, 150, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (155, 14, 150, 58);
INSERT INTO `tb_rol_yetkiler` VALUES (156, 15, 150, 1);
INSERT INTO `tb_rol_yetkiler` VALUES (157, 15, 150, 2);
INSERT INTO `tb_rol_yetkiler` VALUES (158, 15, 150, 3);
INSERT INTO `tb_rol_yetkiler` VALUES (159, 15, 150, 4);
INSERT INTO `tb_rol_yetkiler` VALUES (160, 15, 150, 5);
INSERT INTO `tb_rol_yetkiler` VALUES (161, 15, 150, 57);
INSERT INTO `tb_rol_yetkiler` VALUES (162, 15, 150, 58);

-- ----------------------------
-- Table structure for tb_rol_yetkili_firmalar
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkili_firmalar`;
CREATE TABLE `tb_rol_yetkili_firmalar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `firma_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tb_rol_yetkili_firmalar
-- ----------------------------
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (18, 2, 4);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (17, 2, 3);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (16, 2, 2);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (8, 8, 1);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (9, 8, 32);
INSERT INTO `tb_rol_yetkili_firmalar` VALUES (15, 2, 1);

-- ----------------------------
-- Table structure for tb_rol_yetkili_subeler
-- ----------------------------
DROP TABLE IF EXISTS `tb_rol_yetkili_subeler`;
CREATE TABLE `tb_rol_yetkili_subeler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NULL DEFAULT NULL,
  `sube_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tb_rol_yetkili_subeler
-- ----------------------------
INSERT INTO `tb_rol_yetkili_subeler` VALUES (11, 14, 2);
INSERT INTO `tb_rol_yetkili_subeler` VALUES (9, 14, 3);

-- ----------------------------
-- Table structure for tb_roller
-- ----------------------------
DROP TABLE IF EXISTS `tb_roller`;
CREATE TABLE `tb_roller`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `varsayilan` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_roller
-- ----------------------------
INSERT INTO `tb_roller` VALUES (1, 'Varsayılan', 1);
INSERT INTO `tb_roller` VALUES (14, 'Birim Sorumlusu', 1);
INSERT INTO `tb_roller` VALUES (15, 'Web Yönetimi', 1);

-- ----------------------------
-- Table structure for tb_sinav_bitirenler
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinav_bitirenler`;
CREATE TABLE `tb_sinav_bitirenler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sinav_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `iptal_eden_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinav_bitirenler
-- ----------------------------

-- ----------------------------
-- Table structure for tb_sinav_cevaplari
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinav_cevaplari`;
CREATE TABLE `tb_sinav_cevaplari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ogrenci_id` int NULL DEFAULT NULL,
  `sinav_id` int NULL DEFAULT NULL,
  `soru_id` int NULL DEFAULT NULL,
  `cevap_id` int NULL DEFAULT NULL,
  `cevap_metin` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `puan` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinav_cevaplari
-- ----------------------------
INSERT INTO `tb_sinav_cevaplari` VALUES (50, 2, 19, 10, 50, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (51, 2, 19, 14, 68, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (53, 2, 19, 9, 44, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (54, 2, 19, 6, 29, '', 10.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (55, 2, 19, 1, 5, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (56, 2, 19, 7, 34, '', 10.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (57, 2, 19, 3, 15, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (58, 2, 19, 2, 9, '', 10.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (59, 2, 19, 13, 64, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (60, 2, 19, 13, 63, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (61, 2, 19, 11, 52, '', 0.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (62, 2, 19, 8, 40, '', 15.00);
INSERT INTO `tb_sinav_cevaplari` VALUES (63, 2, 19, 12, 58, '', 20.00);

-- ----------------------------
-- Table structure for tb_sinav_ogrencileri
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinav_ogrencileri`;
CREATE TABLE `tb_sinav_ogrencileri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sinav_id` int NULL DEFAULT NULL,
  `ogrenci_id` int NULL DEFAULT NULL,
  `sinav_bitti_mi` tinyint UNSIGNED NULL DEFAULT 0,
  `okudum_anladim` tinyint NULL DEFAULT 0,
  `sinav_puani` int NULL DEFAULT NULL,
  `sinav_bitiren_ip_adresi` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sinavi_aktif_eden` int NULL DEFAULT NULL,
  `sinav_baslatma` timestamp NULL DEFAULT NULL,
  `son_gorulme` timestamp NULL DEFAULT NULL,
  `ek_sure` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinav_ogrencileri
-- ----------------------------
INSERT INTO `tb_sinav_ogrencileri` VALUES (125, 18, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (126, 18, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (127, 18, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (128, 18, 129, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (129, 18, 130, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (130, 18, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (131, 18, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (132, 18, 131, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (149, 19, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (150, 19, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (151, 19, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (152, 19, 129, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (153, 19, 130, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (154, 19, 2, 1, 0, NULL, '::1', NULL, NULL, '2023-02-13 15:51:40', 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (155, 19, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_sinav_ogrencileri` VALUES (156, 19, 131, 0, 0, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for tb_sinav_sorulari
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinav_sorulari`;
CREATE TABLE `tb_sinav_sorulari`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sinav_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  `soru_id` int NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `ekleyen` int NULL DEFAULT NULL,
  `puan` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinav_sorulari
-- ----------------------------
INSERT INTO `tb_sinav_sorulari` VALUES (29, 17, 1, 6, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (30, 17, 1, 7, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (31, 17, 1, 9, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (32, 17, 1, 11, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (33, 17, 1, 3, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (34, 17, 1, 10, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (35, 18, 1, 6, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (36, 18, 1, 7, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (37, 18, 1, 9, 1, 31, 11);
INSERT INTO `tb_sinav_sorulari` VALUES (38, 18, 1, 11, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (39, 18, 1, 10, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (40, 18, 1, 3, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (41, 18, 21, 13, 14, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (43, 19, 1, 11, 1, 31, 15);
INSERT INTO `tb_sinav_sorulari` VALUES (44, 19, 1, 10, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (45, 19, 1, 9, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (46, 19, 1, 6, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (47, 19, 1, 3, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (48, 19, 1, 12, 1, 31, 5);
INSERT INTO `tb_sinav_sorulari` VALUES (49, 19, 1, 2, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (50, 19, 1, 1, 1, 31, 10);
INSERT INTO `tb_sinav_sorulari` VALUES (51, 19, 1, 8, 1, 31, 5);
INSERT INTO `tb_sinav_sorulari` VALUES (52, 19, 21, 13, 14, 31, 5);
INSERT INTO `tb_sinav_sorulari` VALUES (53, 19, 1, 14, 14, 31, 5);
INSERT INTO `tb_sinav_sorulari` VALUES (54, 19, 1, 7, 1, 31, 0);
INSERT INTO `tb_sinav_sorulari` VALUES (55, 19, 1, 17, 1, 31, 5);
INSERT INTO `tb_sinav_sorulari` VALUES (56, 18, 1, 14, 14, 31, 0);

-- ----------------------------
-- Table structure for tb_sinavlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_sinavlar`;
CREATE TABLE `tb_sinavlar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `universite_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `donem_id` int NULL DEFAULT NULL,
  `komite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sinav_oncesi_aciklama` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sinav_sonrasi_aciklama` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sinav_suresi` int NULL DEFAULT NULL,
  `sinav_baslangic_tarihi` date NOT NULL,
  `sinav_baslangic_saati` time NULL DEFAULT NULL,
  `sinav_bitis_tarihi` date NULL DEFAULT NULL,
  `sinav_bitis_saati` time NULL DEFAULT NULL,
  `sinava_giris_tarihi` date NULL DEFAULT NULL,
  `sinava_giris_saati` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sorulari_karistir` tinyint NULL DEFAULT NULL,
  `secenekleri_karistir` tinyint NULL DEFAULT NULL,
  `ip_adresi` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `soru_sayisi` int NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  `sinav_sonuc_acikla` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sinavlar
-- ----------------------------
INSERT INTO `tb_sinavlar` VALUES (18, '1', 1, 1, 'Tıbba Giriş Sınav', '<p>Açıklama</p>', 'açıklama', '<p>Sınav Sonrası Açıklama</p>', 120, '2022-12-30', '09:00:00', '2022-12-30', '12:00:00', NULL, NULL, 1, 1, '192.168.1.30/40', 20, 1, 0);
INSERT INTO `tb_sinavlar` VALUES (19, '1', 1, 1, 'Tıbba Giriş Sınav', 'Açıklama Kısmı', 'Sınav Öncesi Açıklama Kısmı Güncellendi Artık burda yer alacak asdasdas', 'Sınav Sonrası Açıklama Kısmı', 120, '2023-01-23', '10:00:00', '2023-02-13', '16:00:00', NULL, '', 1, 1, '192.168.1.30/40', 12, 1, 0);

-- ----------------------------
-- Table structure for tb_sistem_kullanici
-- ----------------------------
DROP TABLE IF EXISTS `tb_sistem_kullanici`;
CREATE TABLE `tb_sistem_kullanici`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `soyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `telefon` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `rol_id` int NOT NULL DEFAULT 1,
  `super` tinyint NULL DEFAULT 0,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'resim_yok.jpg',
  `tc_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `dogum_tarihi` datetime NULL DEFAULT NULL,
  `universiteler` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '',
  `kullanici_turu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT 'admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sistem_kullanici
-- ----------------------------
INSERT INTO `tb_sistem_kullanici` VALUES (19, 'Serbest', 'ZİYANAK', 'serbest.ziyanak@gmail.com', '0(544) 496-1144', 'bc000ebca4a5687a014d9c9f94da86e8', 1, 1, '19.jpg', '45982964018', '1989-01-20 00:00:00', '1', 'admin');
INSERT INTO `tb_sistem_kullanici` VALUES (35, 'H. Eray', 'ÇELİK', 'heraycelik@gmail.com', '0(544) 496-1144', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 'resim_yok.jpg', '11111111111', '1970-01-01 00:00:00', '1', 'admin');

-- ----------------------------
-- Table structure for tb_sistem_kullanici_yetkili_birimler
-- ----------------------------
DROP TABLE IF EXISTS `tb_sistem_kullanici_yetkili_birimler`;
CREATE TABLE `tb_sistem_kullanici_yetkili_birimler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `birim_id` int NULL DEFAULT NULL,
  `kullanici_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sistem_kullanici_yetkili_birimler
-- ----------------------------
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (1, 1, 1);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (2, 2, 1);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (3, 1, 2);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (4, 1, 4);
INSERT INTO `tb_sistem_kullanici_yetkili_birimler` VALUES (5, 1, 7);

-- ----------------------------
-- Table structure for tb_slaytlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_slaytlar`;
CREATE TABLE `tb_slaytlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `birim_id` int UNSIGNED NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sira` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_slaytlar
-- ----------------------------
INSERT INTO `tb_slaytlar` VALUES (4, 216, '64fdfdd731776slide-1.jpg', NULL);
INSERT INTO `tb_slaytlar` VALUES (5, 216, '64fdfdde3dabaslide-2.jpg', NULL);
INSERT INTO `tb_slaytlar` VALUES (6, 216, '64fdfded4d896slide-3.jpg', NULL);
INSERT INTO `tb_slaytlar` VALUES (9, 216, '64fe23351c51cslide-1.jpg', NULL);

-- ----------------------------
-- Table structure for tb_soru_bankasi
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_bankasi`;
CREATE TABLE `tb_soru_bankasi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `soru` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `soru_turu_id` int NULL DEFAULT NULL,
  `soru_dosyasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `mufredat_id` int NULL DEFAULT NULL,
  `ders_yili_donem_id` int NULL DEFAULT NULL,
  `program_id` int NULL DEFAULT NULL,
  `ders_id` int NULL DEFAULT NULL,
  `ogretim_elemani_id` int NULL DEFAULT NULL,
  `zorluk_derecesi` tinyint NULL DEFAULT NULL,
  `puan` int NULL DEFAULT NULL,
  `etiket` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `editor` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_bankasi
-- ----------------------------
INSERT INTO `tb_soru_bankasi` VALUES (1, '<p>En hareketli sinovial eklem tipini işaretleyiniz.<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 10, 'sinovial eklem', 0);
INSERT INTO `tb_soru_bankasi` VALUES (2, '<p>Üst ekstremitenin orta hatta yaklaşması hareketine ne ad verilir?<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (3, '<p>Vertebra cisimleri ile kaburga başları arasındaki eklemlere ne ad verilir?<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (4, '<p>Art. radio-ulnaris proximalis’in eklem tipini işaretleyiniz.<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (5, '<p>Ayak tabanının dışa doğru döndürülmesine ne ad verilir?<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 5, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (6, '<p>.Hangi kas ağız açıklığı (yarığı) ile ilgili<b> <u>değildir?</u></b></p>', 1, '', 1, 1, 1, 1, 1, 2, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (7, '<p>Hangisi yüzeyel sırt kası <b><u>değildir?</u></b></p>', 1, '', 1, 1, 1, 1, 1, 2, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (8, '<p>M. pectoralis major’un insertio ve origo’ları ile ilgili <b><u>olmayan</u></b> şıkkı işaretleyiniz.<br></p>', 1, '', 1, 1, 1, 1, 1, 3, 15, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (9, '<p>Hangi kas, ön-kola ekstansiyon yaptırır?</p>', 1, '', 1, 1, 1, 1, 1, 1, 20, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (10, '<p>Hangisi ayağa dorsifleksiyon <b><u>yaptırmaz?</u></b></p>', 1, '', 1, 1, 1, 1, 1, 1, 10, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (11, '<p><b>(I)</b> Omur cisimleri ile kaburga başları arasında plan tipi eklem bulunur.</p><p><b>(II) </b>Bir omurun transvers çıkıntısı ile bir kaburganın tuberculum costae’si arasında plan tipi eklem bulunur.</p><p>Aşağıdakilerden hangisi doğrudur.</p>', 1, '', 1, 1, 1, 1, 1, 4, 15, '', 0);
INSERT INTO `tb_soru_bankasi` VALUES (12, '<p>Fibröz eklemler için doğru olan şıkkı işaretleyiniz.</p><p><b>(I) </b>Syndesmosis<br></p><p><b>(II) </b>Gomphosis</p><p><b>(IV)</b> Synchondrosis</p><p><b>(III)</b> Sutura<br></p>', 1, '', 1, 1, 1, 1, 1, 5, 20, 'Fibröz eklemler', 0);
INSERT INTO `tb_soru_bankasi` VALUES (13, '<p>Soru Bankası Deneme Amaçlı&nbsp;</p><p>Asağıdakilerden hangileri <b><u>doğrudur?</u></b></p>', 2, '', 38, 1, 1, 14, 21, 5, 10, 'ABCDE', 0);
INSERT INTO `tb_soru_bankasi` VALUES (14, '<p>ASDASDASD</p>', 2, '63637d9e7165c.jpg', 37, 1, 1, 14, 1, 5, 10, 'ABCD', 0);
INSERT INTO `tb_soru_bankasi` VALUES (15, '<p>Sorudur</p>', 1, '636cd0e45ab13.jpg', 1, 1, 1, 1, 21, 1, 10, 'etiketsorusu', 0);
INSERT INTO `tb_soru_bankasi` VALUES (17, '<p>Klasik soru türdür öğrenci metin girişi yapacaktır. BUndan dolayı metin alanı öğrenci için açılacaktır</p>', 3, '63c64aec56dc0.jpg', 1, 1, 1, 1, 1, 5, 30, 'açık uclu klasik soru', 0);

-- ----------------------------
-- Table structure for tb_soru_secenekleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_secenekleri`;
CREATE TABLE `tb_soru_secenekleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `soru_id` int NULL DEFAULT NULL,
  `secenek` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `dogru_secenek` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_secenekleri
-- ----------------------------
INSERT INTO `tb_soru_secenekleri` VALUES (1, 1, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (2, 1, 'b', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (3, 1, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (4, 1, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (5, 1, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (6, 2, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (7, 2, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (8, 2, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (9, 2, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (10, 2, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (11, 3, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (12, 3, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (13, 3, 'c', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (14, 3, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (15, 3, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (16, 4, 'a', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (17, 4, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (18, 4, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (19, 4, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (20, 4, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (21, 5, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (22, 5, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (23, 5, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (24, 5, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (25, 5, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (26, 6, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (27, 6, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (28, 6, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (29, 6, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (30, 6, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (31, 7, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (32, 7, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (33, 7, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (34, 7, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (35, 7, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (36, 8, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (37, 8, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (38, 8, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (39, 8, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (40, 8, 'e', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (41, 9, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (42, 9, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (43, 9, 'c', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (44, 9, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (45, 9, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (46, 10, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (47, 10, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (48, 10, 'c', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (49, 10, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (50, 10, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (51, 11, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (52, 11, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (53, 11, 'c', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (54, 11, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (55, 11, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (56, 12, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (57, 12, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (58, 12, 'c', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (59, 12, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (60, 12, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (61, 13, 'f', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (62, 13, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (63, 13, 'b', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (64, 13, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (65, 13, 'd', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (66, 13, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (67, 14, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (68, 14, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (69, 14, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (70, 14, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (71, 14, 'e', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (72, 15, 'a', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (73, 15, 'b', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (74, 15, 'c', NULL);
INSERT INTO `tb_soru_secenekleri` VALUES (75, 15, 'd', 1);
INSERT INTO `tb_soru_secenekleri` VALUES (76, 15, 'e', NULL);

-- ----------------------------
-- Table structure for tb_soru_turleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_soru_turleri`;
CREATE TABLE `tb_soru_turleri`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `universite_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `coklu_secenek` tinyint NULL DEFAULT 0,
  `metin` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_soru_turleri
-- ----------------------------
INSERT INTO `tb_soru_turleri` VALUES (1, 1, 'Çoktan Tek Seçmeli', 0, 0);
INSERT INTO `tb_soru_turleri` VALUES (2, 1, 'Çoktan Çok Seçmeli', 1, 0);
INSERT INTO `tb_soru_turleri` VALUES (3, 1, 'Açık Uçlu', 0, 1);

-- ----------------------------
-- Table structure for tb_universiteler
-- ----------------------------
DROP TABLE IF EXISTS `tb_universiteler`;
CREATE TABLE `tb_universiteler`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `aktif` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_universiteler
-- ----------------------------
INSERT INTO `tb_universiteler` VALUES (1, 'Ahmet Yesevi Üniversitesi', 1);
INSERT INTO `tb_universiteler` VALUES (2, 'İstanbul Teknik Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (3, 'Hacattepe Üniversitesi', 0);
INSERT INTO `tb_universiteler` VALUES (4, 'Yıldız Teknik Üniversitesi', 0);

-- ----------------------------
-- Table structure for tb_unvanlar
-- ----------------------------
DROP TABLE IF EXISTS `tb_unvanlar`;
CREATE TABLE `tb_unvanlar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `personel_nitelik_id` int NULL DEFAULT NULL,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `sira` int NULL DEFAULT NULL,
  `adi_kz` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `adi_ru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_unvanlar
-- ----------------------------
INSERT INTO `tb_unvanlar` VALUES (1, 1, 'Prof. Dr.', 1, '', '', '');
INSERT INTO `tb_unvanlar` VALUES (2, 1, 'Doc. Dr.', 2, NULL, NULL, NULL);
INSERT INTO `tb_unvanlar` VALUES (3, 1, 'Dr. Öğr. Üyesi', 3, NULL, NULL, NULL);
INSERT INTO `tb_unvanlar` VALUES (4, 1, 'Öğr. Gör. Dr.', 4, NULL, NULL, NULL);
INSERT INTO `tb_unvanlar` VALUES (5, 1, 'Arş. Gör. Dr.', 5, NULL, NULL, NULL);
INSERT INTO `tb_unvanlar` VALUES (6, 1, 'Öğr. Gör.', 6, NULL, NULL, NULL);
INSERT INTO `tb_unvanlar` VALUES (7, 1, 'Arş. Gör.', 7, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_uyruklar
-- ----------------------------
DROP TABLE IF EXISTS `tb_uyruklar`;
CREATE TABLE `tb_uyruklar`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kisa_ad` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tel_kodu` int NULL DEFAULT NULL,
  `sira` int NULL DEFAULT 9999,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 247 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_uyruklar
-- ----------------------------
INSERT INTO `tb_uyruklar` VALUES (1, 'AF', 'Afghanistan', 93, 9999);
INSERT INTO `tb_uyruklar` VALUES (2, 'AL', 'Albania', 355, 9999);
INSERT INTO `tb_uyruklar` VALUES (3, 'DZ', 'Algeria', 213, 9999);
INSERT INTO `tb_uyruklar` VALUES (4, 'AS', 'American Samoa', 1684, 9999);
INSERT INTO `tb_uyruklar` VALUES (5, 'AD', 'Andorra', 376, 9999);
INSERT INTO `tb_uyruklar` VALUES (6, 'AO', 'Angola', 244, 9999);
INSERT INTO `tb_uyruklar` VALUES (7, 'AI', 'Anguilla', 1264, 9999);
INSERT INTO `tb_uyruklar` VALUES (8, 'AQ', 'Antarctica', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (9, 'AG', 'Antigua And Barbuda', 1268, 9999);
INSERT INTO `tb_uyruklar` VALUES (10, 'AR', 'Argentina', 54, 9999);
INSERT INTO `tb_uyruklar` VALUES (11, 'AM', 'Armenia', 374, 9999);
INSERT INTO `tb_uyruklar` VALUES (12, 'AW', 'Aruba', 297, 9999);
INSERT INTO `tb_uyruklar` VALUES (13, 'AU', 'Australia', 61, 9999);
INSERT INTO `tb_uyruklar` VALUES (14, 'AT', 'Austria', 43, 9999);
INSERT INTO `tb_uyruklar` VALUES (15, 'AZ', 'Azerbaijan', 994, 9999);
INSERT INTO `tb_uyruklar` VALUES (16, 'BS', 'Bahamas The', 1242, 9999);
INSERT INTO `tb_uyruklar` VALUES (17, 'BH', 'Bahrain', 973, 9999);
INSERT INTO `tb_uyruklar` VALUES (18, 'BD', 'Bangladesh', 880, 9999);
INSERT INTO `tb_uyruklar` VALUES (19, 'BB', 'Barbados', 1246, 9999);
INSERT INTO `tb_uyruklar` VALUES (20, 'BY', 'Belarus', 375, 9999);
INSERT INTO `tb_uyruklar` VALUES (21, 'BE', 'Belgium', 32, 9999);
INSERT INTO `tb_uyruklar` VALUES (22, 'BZ', 'Belize', 501, 9999);
INSERT INTO `tb_uyruklar` VALUES (23, 'BJ', 'Benin', 229, 9999);
INSERT INTO `tb_uyruklar` VALUES (24, 'BM', 'Bermuda', 1441, 9999);
INSERT INTO `tb_uyruklar` VALUES (25, 'BT', 'Bhutan', 975, 9999);
INSERT INTO `tb_uyruklar` VALUES (26, 'BO', 'Bolivia', 591, 9999);
INSERT INTO `tb_uyruklar` VALUES (27, 'BA', 'Bosnia and Herzegovina', 387, 9999);
INSERT INTO `tb_uyruklar` VALUES (28, 'BW', 'Botswana', 267, 9999);
INSERT INTO `tb_uyruklar` VALUES (29, 'BV', 'Bouvet Island', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (30, 'BR', 'Brazil', 55, 9999);
INSERT INTO `tb_uyruklar` VALUES (31, 'IO', 'British Indian Ocean Territory', 246, 9999);
INSERT INTO `tb_uyruklar` VALUES (32, 'BN', 'Brunei', 673, 9999);
INSERT INTO `tb_uyruklar` VALUES (33, 'BG', 'Bulgaria', 359, 9999);
INSERT INTO `tb_uyruklar` VALUES (34, 'BF', 'Burkina Faso', 226, 9999);
INSERT INTO `tb_uyruklar` VALUES (35, 'BI', 'Burundi', 257, 9999);
INSERT INTO `tb_uyruklar` VALUES (36, 'KH', 'Cambodia', 855, 9999);
INSERT INTO `tb_uyruklar` VALUES (37, 'CM', 'Cameroon', 237, 9999);
INSERT INTO `tb_uyruklar` VALUES (38, 'CA', 'Canada', 1, 9999);
INSERT INTO `tb_uyruklar` VALUES (39, 'CV', 'Cape Verde', 238, 9999);
INSERT INTO `tb_uyruklar` VALUES (40, 'KY', 'Cayman Islands', 1345, 9999);
INSERT INTO `tb_uyruklar` VALUES (41, 'CF', 'Central African Republic', 236, 9999);
INSERT INTO `tb_uyruklar` VALUES (42, 'TD', 'Chad', 235, 9999);
INSERT INTO `tb_uyruklar` VALUES (43, 'CL', 'Chile', 56, 9999);
INSERT INTO `tb_uyruklar` VALUES (44, 'CN', 'China', 86, 9999);
INSERT INTO `tb_uyruklar` VALUES (45, 'CX', 'Christmas Island', 61, 9999);
INSERT INTO `tb_uyruklar` VALUES (46, 'CC', 'Cocos (Keeling) Islands', 672, 9999);
INSERT INTO `tb_uyruklar` VALUES (47, 'CO', 'Colombia', 57, 9999);
INSERT INTO `tb_uyruklar` VALUES (48, 'KM', 'Comoros', 269, 9999);
INSERT INTO `tb_uyruklar` VALUES (49, 'CG', 'Republic Of The Congo', 242, 9999);
INSERT INTO `tb_uyruklar` VALUES (50, 'CD', 'Democratic Republic Of The Congo', 242, 9999);
INSERT INTO `tb_uyruklar` VALUES (51, 'CK', 'Cook Islands', 682, 9999);
INSERT INTO `tb_uyruklar` VALUES (52, 'CR', 'Costa Rica', 506, 9999);
INSERT INTO `tb_uyruklar` VALUES (53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 9999);
INSERT INTO `tb_uyruklar` VALUES (54, 'HR', 'Croatia (Hrvatska)', 385, 9999);
INSERT INTO `tb_uyruklar` VALUES (55, 'CU', 'Cuba', 53, 9999);
INSERT INTO `tb_uyruklar` VALUES (56, 'CY', 'Cyprus', 357, 9999);
INSERT INTO `tb_uyruklar` VALUES (57, 'CZ', 'Czech Republic', 420, 9999);
INSERT INTO `tb_uyruklar` VALUES (58, 'DK', 'Denmark', 45, 9999);
INSERT INTO `tb_uyruklar` VALUES (59, 'DJ', 'Djibouti', 253, 9999);
INSERT INTO `tb_uyruklar` VALUES (60, 'DM', 'Dominica', 1767, 9999);
INSERT INTO `tb_uyruklar` VALUES (61, 'DO', 'Dominican Republic', 1809, 9999);
INSERT INTO `tb_uyruklar` VALUES (62, 'TP', 'East Timor', 670, 9999);
INSERT INTO `tb_uyruklar` VALUES (63, 'EC', 'Ecuador', 593, 9999);
INSERT INTO `tb_uyruklar` VALUES (64, 'EG', 'Egypt', 20, 9999);
INSERT INTO `tb_uyruklar` VALUES (65, 'SV', 'El Salvador', 503, 9999);
INSERT INTO `tb_uyruklar` VALUES (66, 'GQ', 'Equatorial Guinea', 240, 9999);
INSERT INTO `tb_uyruklar` VALUES (67, 'ER', 'Eritrea', 291, 9999);
INSERT INTO `tb_uyruklar` VALUES (68, 'EE', 'Estonia', 372, 9999);
INSERT INTO `tb_uyruklar` VALUES (69, 'ET', 'Ethiopia', 251, 9999);
INSERT INTO `tb_uyruklar` VALUES (70, 'XA', 'External Territories of Australia', 61, 9999);
INSERT INTO `tb_uyruklar` VALUES (71, 'FK', 'Falkland Islands', 500, 9999);
INSERT INTO `tb_uyruklar` VALUES (72, 'FO', 'Faroe Islands', 298, 9999);
INSERT INTO `tb_uyruklar` VALUES (73, 'FJ', 'Fiji Islands', 679, 9999);
INSERT INTO `tb_uyruklar` VALUES (74, 'FI', 'Finland', 358, 9999);
INSERT INTO `tb_uyruklar` VALUES (75, 'FR', 'France', 33, 9999);
INSERT INTO `tb_uyruklar` VALUES (76, 'GF', 'French Guiana', 594, 9999);
INSERT INTO `tb_uyruklar` VALUES (77, 'PF', 'French Polynesia', 689, 9999);
INSERT INTO `tb_uyruklar` VALUES (78, 'TF', 'French Southern Territories', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (79, 'GA', 'Gabon', 241, 9999);
INSERT INTO `tb_uyruklar` VALUES (80, 'GM', 'Gambia The', 220, 9999);
INSERT INTO `tb_uyruklar` VALUES (81, 'GE', 'Georgia', 995, 9999);
INSERT INTO `tb_uyruklar` VALUES (82, 'DE', 'Germany', 49, 9999);
INSERT INTO `tb_uyruklar` VALUES (83, 'GH', 'Ghana', 233, 9999);
INSERT INTO `tb_uyruklar` VALUES (84, 'GI', 'Gibraltar', 350, 9999);
INSERT INTO `tb_uyruklar` VALUES (85, 'GR', 'Greece', 30, 9999);
INSERT INTO `tb_uyruklar` VALUES (86, 'GL', 'Greenland', 299, 9999);
INSERT INTO `tb_uyruklar` VALUES (87, 'GD', 'Grenada', 1473, 9999);
INSERT INTO `tb_uyruklar` VALUES (88, 'GP', 'Guadeloupe', 590, 9999);
INSERT INTO `tb_uyruklar` VALUES (89, 'GU', 'Guam', 1671, 9999);
INSERT INTO `tb_uyruklar` VALUES (90, 'GT', 'Guatemala', 502, 9999);
INSERT INTO `tb_uyruklar` VALUES (91, 'XU', 'Guernsey and Alderney', 44, 9999);
INSERT INTO `tb_uyruklar` VALUES (92, 'GN', 'Guinea', 224, 9999);
INSERT INTO `tb_uyruklar` VALUES (93, 'GW', 'Guinea-Bissau', 245, 9999);
INSERT INTO `tb_uyruklar` VALUES (94, 'GY', 'Guyana', 592, 9999);
INSERT INTO `tb_uyruklar` VALUES (95, 'HT', 'Haiti', 509, 9999);
INSERT INTO `tb_uyruklar` VALUES (96, 'HM', 'Heard and McDonald Islands', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (97, 'HN', 'Honduras', 504, 9999);
INSERT INTO `tb_uyruklar` VALUES (98, 'HK', 'Hong Kong S.A.R.', 852, 9999);
INSERT INTO `tb_uyruklar` VALUES (99, 'HU', 'Hungary', 36, 9999);
INSERT INTO `tb_uyruklar` VALUES (100, 'IS', 'Iceland', 354, 9999);
INSERT INTO `tb_uyruklar` VALUES (101, 'IN', 'India', 91, 9999);
INSERT INTO `tb_uyruklar` VALUES (102, 'ID', 'Indonesia', 62, 9999);
INSERT INTO `tb_uyruklar` VALUES (103, 'IR', 'Iran', 98, 9999);
INSERT INTO `tb_uyruklar` VALUES (104, 'IQ', 'Iraq', 964, 9999);
INSERT INTO `tb_uyruklar` VALUES (105, 'IE', 'Ireland', 353, 9999);
INSERT INTO `tb_uyruklar` VALUES (106, 'IL', 'Israel', 972, 9999);
INSERT INTO `tb_uyruklar` VALUES (107, 'IT', 'Italy', 39, 9999);
INSERT INTO `tb_uyruklar` VALUES (108, 'JM', 'Jamaica', 1876, 9999);
INSERT INTO `tb_uyruklar` VALUES (109, 'JP', 'Japan', 81, 9999);
INSERT INTO `tb_uyruklar` VALUES (110, 'XJ', 'Jersey', 44, 9999);
INSERT INTO `tb_uyruklar` VALUES (111, 'JO', 'Jordan', 962, 9999);
INSERT INTO `tb_uyruklar` VALUES (112, 'KZ', 'Kazakhstan', 7, 2);
INSERT INTO `tb_uyruklar` VALUES (113, 'KE', 'Kenya', 254, 9999);
INSERT INTO `tb_uyruklar` VALUES (114, 'KI', 'Kiribati', 686, 9999);
INSERT INTO `tb_uyruklar` VALUES (115, 'KP', 'Korea North', 850, 9999);
INSERT INTO `tb_uyruklar` VALUES (116, 'KR', 'Korea South', 82, 9999);
INSERT INTO `tb_uyruklar` VALUES (117, 'KW', 'Kuwait', 965, 9999);
INSERT INTO `tb_uyruklar` VALUES (118, 'KG', 'Kyrgyzstan', 996, 9999);
INSERT INTO `tb_uyruklar` VALUES (119, 'LA', 'Laos', 856, 9999);
INSERT INTO `tb_uyruklar` VALUES (120, 'LV', 'Latvia', 371, 9999);
INSERT INTO `tb_uyruklar` VALUES (121, 'LB', 'Lebanon', 961, 9999);
INSERT INTO `tb_uyruklar` VALUES (122, 'LS', 'Lesotho', 266, 9999);
INSERT INTO `tb_uyruklar` VALUES (123, 'LR', 'Liberia', 231, 9999);
INSERT INTO `tb_uyruklar` VALUES (124, 'LY', 'Libya', 218, 9999);
INSERT INTO `tb_uyruklar` VALUES (125, 'LI', 'Liechtenstein', 423, 9999);
INSERT INTO `tb_uyruklar` VALUES (126, 'LT', 'Lithuania', 370, 9999);
INSERT INTO `tb_uyruklar` VALUES (127, 'LU', 'Luxembourg', 352, 9999);
INSERT INTO `tb_uyruklar` VALUES (128, 'MO', 'Macau S.A.R.', 853, 9999);
INSERT INTO `tb_uyruklar` VALUES (129, 'MK', 'Macedonia', 389, 9999);
INSERT INTO `tb_uyruklar` VALUES (130, 'MG', 'Madagascar', 261, 9999);
INSERT INTO `tb_uyruklar` VALUES (131, 'MW', 'Malawi', 265, 9999);
INSERT INTO `tb_uyruklar` VALUES (132, 'MY', 'Malaysia', 60, 9999);
INSERT INTO `tb_uyruklar` VALUES (133, 'MV', 'Maldives', 960, 9999);
INSERT INTO `tb_uyruklar` VALUES (134, 'ML', 'Mali', 223, 9999);
INSERT INTO `tb_uyruklar` VALUES (135, 'MT', 'Malta', 356, 9999);
INSERT INTO `tb_uyruklar` VALUES (136, 'XM', 'Man (Isle of)', 44, 9999);
INSERT INTO `tb_uyruklar` VALUES (137, 'MH', 'Marshall Islands', 692, 9999);
INSERT INTO `tb_uyruklar` VALUES (138, 'MQ', 'Martinique', 596, 9999);
INSERT INTO `tb_uyruklar` VALUES (139, 'MR', 'Mauritania', 222, 9999);
INSERT INTO `tb_uyruklar` VALUES (140, 'MU', 'Mauritius', 230, 9999);
INSERT INTO `tb_uyruklar` VALUES (141, 'YT', 'Mayotte', 269, 9999);
INSERT INTO `tb_uyruklar` VALUES (142, 'MX', 'Mexico', 52, 9999);
INSERT INTO `tb_uyruklar` VALUES (143, 'FM', 'Micronesia', 691, 9999);
INSERT INTO `tb_uyruklar` VALUES (144, 'MD', 'Moldova', 373, 9999);
INSERT INTO `tb_uyruklar` VALUES (145, 'MC', 'Monaco', 377, 9999);
INSERT INTO `tb_uyruklar` VALUES (146, 'MN', 'Mongolia', 976, 9999);
INSERT INTO `tb_uyruklar` VALUES (147, 'MS', 'Montserrat', 1664, 9999);
INSERT INTO `tb_uyruklar` VALUES (148, 'MA', 'Morocco', 212, 9999);
INSERT INTO `tb_uyruklar` VALUES (149, 'MZ', 'Mozambique', 258, 9999);
INSERT INTO `tb_uyruklar` VALUES (150, 'MM', 'Myanmar', 95, 9999);
INSERT INTO `tb_uyruklar` VALUES (151, 'NA', 'Namibia', 264, 9999);
INSERT INTO `tb_uyruklar` VALUES (152, 'NR', 'Nauru', 674, 9999);
INSERT INTO `tb_uyruklar` VALUES (153, 'NP', 'Nepal', 977, 9999);
INSERT INTO `tb_uyruklar` VALUES (154, 'AN', 'Netherlands Antilles', 599, 9999);
INSERT INTO `tb_uyruklar` VALUES (155, 'NL', 'Netherlands The', 31, 9999);
INSERT INTO `tb_uyruklar` VALUES (156, 'NC', 'New Caledonia', 687, 9999);
INSERT INTO `tb_uyruklar` VALUES (157, 'NZ', 'New Zealand', 64, 9999);
INSERT INTO `tb_uyruklar` VALUES (158, 'NI', 'Nicaragua', 505, 9999);
INSERT INTO `tb_uyruklar` VALUES (159, 'NE', 'Niger', 227, 9999);
INSERT INTO `tb_uyruklar` VALUES (160, 'NG', 'Nigeria', 234, 9999);
INSERT INTO `tb_uyruklar` VALUES (161, 'NU', 'Niue', 683, 9999);
INSERT INTO `tb_uyruklar` VALUES (162, 'NF', 'Norfolk Island', 672, 9999);
INSERT INTO `tb_uyruklar` VALUES (163, 'MP', 'Northern Mariana Islands', 1670, 9999);
INSERT INTO `tb_uyruklar` VALUES (164, 'NO', 'Norway', 47, 9999);
INSERT INTO `tb_uyruklar` VALUES (165, 'OM', 'Oman', 968, 9999);
INSERT INTO `tb_uyruklar` VALUES (166, 'PK', 'Pakistan', 92, 9999);
INSERT INTO `tb_uyruklar` VALUES (167, 'PW', 'Palau', 680, 9999);
INSERT INTO `tb_uyruklar` VALUES (168, 'PS', 'Palestinian Territory Occupied', 970, 9999);
INSERT INTO `tb_uyruklar` VALUES (169, 'PA', 'Panama', 507, 9999);
INSERT INTO `tb_uyruklar` VALUES (170, 'PG', 'Papua new Guinea', 675, 9999);
INSERT INTO `tb_uyruklar` VALUES (171, 'PY', 'Paraguay', 595, 9999);
INSERT INTO `tb_uyruklar` VALUES (172, 'PE', 'Peru', 51, 9999);
INSERT INTO `tb_uyruklar` VALUES (173, 'PH', 'Philippines', 63, 9999);
INSERT INTO `tb_uyruklar` VALUES (174, 'PN', 'Pitcairn Island', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (175, 'PL', 'Poland', 48, 9999);
INSERT INTO `tb_uyruklar` VALUES (176, 'PT', 'Portugal', 351, 9999);
INSERT INTO `tb_uyruklar` VALUES (177, 'PR', 'Puerto Rico', 1787, 9999);
INSERT INTO `tb_uyruklar` VALUES (178, 'QA', 'Qatar', 974, 9999);
INSERT INTO `tb_uyruklar` VALUES (179, 'RE', 'Reunion', 262, 9999);
INSERT INTO `tb_uyruklar` VALUES (180, 'RO', 'Romania', 40, 9999);
INSERT INTO `tb_uyruklar` VALUES (181, 'RU', 'Russia', 70, 9999);
INSERT INTO `tb_uyruklar` VALUES (182, 'RW', 'Rwanda', 250, 9999);
INSERT INTO `tb_uyruklar` VALUES (183, 'SH', 'Saint Helena', 290, 9999);
INSERT INTO `tb_uyruklar` VALUES (184, 'KN', 'Saint Kitts And Nevis', 1869, 9999);
INSERT INTO `tb_uyruklar` VALUES (185, 'LC', 'Saint Lucia', 1758, 9999);
INSERT INTO `tb_uyruklar` VALUES (186, 'PM', 'Saint Pierre and Miquelon', 508, 9999);
INSERT INTO `tb_uyruklar` VALUES (187, 'VC', 'Saint Vincent And The Grenadines', 1784, 9999);
INSERT INTO `tb_uyruklar` VALUES (188, 'WS', 'Samoa', 684, 9999);
INSERT INTO `tb_uyruklar` VALUES (189, 'SM', 'San Marino', 378, 9999);
INSERT INTO `tb_uyruklar` VALUES (190, 'ST', 'Sao Tome and Principe', 239, 9999);
INSERT INTO `tb_uyruklar` VALUES (191, 'SA', 'Saudi Arabia', 966, 9999);
INSERT INTO `tb_uyruklar` VALUES (192, 'SN', 'Senegal', 221, 9999);
INSERT INTO `tb_uyruklar` VALUES (193, 'RS', 'Serbia', 381, 9999);
INSERT INTO `tb_uyruklar` VALUES (194, 'SC', 'Seychelles', 248, 9999);
INSERT INTO `tb_uyruklar` VALUES (195, 'SL', 'Sierra Leone', 232, 9999);
INSERT INTO `tb_uyruklar` VALUES (196, 'SG', 'Singapore', 65, 9999);
INSERT INTO `tb_uyruklar` VALUES (197, 'SK', 'Slovakia', 421, 9999);
INSERT INTO `tb_uyruklar` VALUES (198, 'SI', 'Slovenia', 386, 9999);
INSERT INTO `tb_uyruklar` VALUES (199, 'XG', 'Smaller Territories of the UK', 44, 9999);
INSERT INTO `tb_uyruklar` VALUES (200, 'SB', 'Solomon Islands', 677, 9999);
INSERT INTO `tb_uyruklar` VALUES (201, 'SO', 'Somalia', 252, 9999);
INSERT INTO `tb_uyruklar` VALUES (202, 'ZA', 'South Africa', 27, 9999);
INSERT INTO `tb_uyruklar` VALUES (203, 'GS', 'South Georgia', 0, 9999);
INSERT INTO `tb_uyruklar` VALUES (204, 'SS', 'South Sudan', 211, 9999);
INSERT INTO `tb_uyruklar` VALUES (205, 'ES', 'Spain', 34, 9999);
INSERT INTO `tb_uyruklar` VALUES (206, 'LK', 'Sri Lanka', 94, 9999);
INSERT INTO `tb_uyruklar` VALUES (207, 'SD', 'Sudan', 249, 9999);
INSERT INTO `tb_uyruklar` VALUES (208, 'SR', 'Suriname', 597, 9999);
INSERT INTO `tb_uyruklar` VALUES (209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 9999);
INSERT INTO `tb_uyruklar` VALUES (210, 'SZ', 'Swaziland', 268, 9999);
INSERT INTO `tb_uyruklar` VALUES (211, 'SE', 'Sweden', 46, 9999);
INSERT INTO `tb_uyruklar` VALUES (212, 'CH', 'Switzerland', 41, 9999);
INSERT INTO `tb_uyruklar` VALUES (213, 'SY', 'Syria', 963, 9999);
INSERT INTO `tb_uyruklar` VALUES (214, 'TW', 'Taiwan', 886, 9999);
INSERT INTO `tb_uyruklar` VALUES (215, 'TJ', 'Tajikistan', 992, 9999);
INSERT INTO `tb_uyruklar` VALUES (216, 'TZ', 'Tanzania', 255, 9999);
INSERT INTO `tb_uyruklar` VALUES (217, 'TH', 'Thailand', 66, 9999);
INSERT INTO `tb_uyruklar` VALUES (218, 'TG', 'Togo', 228, 9999);
INSERT INTO `tb_uyruklar` VALUES (219, 'TK', 'Tokelau', 690, 9999);
INSERT INTO `tb_uyruklar` VALUES (220, 'TO', 'Tonga', 676, 9999);
INSERT INTO `tb_uyruklar` VALUES (221, 'TT', 'Trinidad And Tobago', 1868, 9999);
INSERT INTO `tb_uyruklar` VALUES (222, 'TN', 'Tunisia', 216, 9999);
INSERT INTO `tb_uyruklar` VALUES (223, 'TR', 'Turkey', 90, 1);
INSERT INTO `tb_uyruklar` VALUES (224, 'TM', 'Turkmenistan', 7370, 9999);
INSERT INTO `tb_uyruklar` VALUES (225, 'TC', 'Turks And Caicos Islands', 1649, 9999);
INSERT INTO `tb_uyruklar` VALUES (226, 'TV', 'Tuvalu', 688, 9999);
INSERT INTO `tb_uyruklar` VALUES (227, 'UG', 'Uganda', 256, 9999);
INSERT INTO `tb_uyruklar` VALUES (228, 'UA', 'Ukraine', 380, 9999);
INSERT INTO `tb_uyruklar` VALUES (229, 'AE', 'United Arab Emirates', 971, 9999);
INSERT INTO `tb_uyruklar` VALUES (230, 'GB', 'United Kingdom', 44, 9999);
INSERT INTO `tb_uyruklar` VALUES (231, 'US', 'United States', 1, 9999);
INSERT INTO `tb_uyruklar` VALUES (232, 'UM', 'United States Minor Outlying Islands', 1, 9999);
INSERT INTO `tb_uyruklar` VALUES (233, 'UY', 'Uruguay', 598, 9999);
INSERT INTO `tb_uyruklar` VALUES (234, 'UZ', 'Uzbekistan', 998, 9999);
INSERT INTO `tb_uyruklar` VALUES (235, 'VU', 'Vanuatu', 678, 9999);
INSERT INTO `tb_uyruklar` VALUES (236, 'VA', 'Vatican City State (Holy See)', 39, 9999);
INSERT INTO `tb_uyruklar` VALUES (237, 'VE', 'Venezuela', 58, 9999);
INSERT INTO `tb_uyruklar` VALUES (238, 'VN', 'Vietnam', 84, 9999);
INSERT INTO `tb_uyruklar` VALUES (239, 'VG', 'Virgin Islands (British)', 1284, 9999);
INSERT INTO `tb_uyruklar` VALUES (240, 'VI', 'Virgin Islands (US)', 1340, 9999);
INSERT INTO `tb_uyruklar` VALUES (241, 'WF', 'Wallis And Futuna Islands', 681, 9999);
INSERT INTO `tb_uyruklar` VALUES (242, 'EH', 'Western Sahara', 212, 9999);
INSERT INTO `tb_uyruklar` VALUES (243, 'YE', 'Yemen', 967, 9999);
INSERT INTO `tb_uyruklar` VALUES (244, 'YU', 'Yugoslavia', 38, 9999);
INSERT INTO `tb_uyruklar` VALUES (245, 'ZM', 'Zambia', 260, 9999);
INSERT INTO `tb_uyruklar` VALUES (246, 'ZW', 'Zimbabwe', 263, 9999);

-- ----------------------------
-- Table structure for tb_yetki
-- ----------------------------
DROP TABLE IF EXISTS `tb_yetki`;
CREATE TABLE `tb_yetki`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kullanici_id` int NULL DEFAULT NULL,
  `modul_id` int NULL DEFAULT NULL,
  `yetki_islem_turu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yetki
-- ----------------------------

-- ----------------------------
-- Table structure for tb_yetki_islem_turleri
-- ----------------------------
DROP TABLE IF EXISTS `tb_yetki_islem_turleri`;
CREATE TABLE `tb_yetki_islem_turleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `gorunen_adi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_yetki_islem_turleri
-- ----------------------------
INSERT INTO `tb_yetki_islem_turleri` VALUES (1, 'goruntule', 'Görüntüle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (2, 'ekle', 'Ekle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (3, 'sil', 'Sil');
INSERT INTO `tb_yetki_islem_turleri` VALUES (4, 'duzenle', 'Düzenle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (5, 'kaydet', 'Kaydet');
INSERT INTO `tb_yetki_islem_turleri` VALUES (6, 'rapor', 'Rapor Al');
INSERT INTO `tb_yetki_islem_turleri` VALUES (10, 'super', 'Super Yetki Ataması');
INSERT INTO `tb_yetki_islem_turleri` VALUES (11, 'rol-degistir', 'Kullanıcı Rol Değiştir');
INSERT INTO `tb_yetki_islem_turleri` VALUES (44, 'kategori-ekle', 'Kategori Ekle');
INSERT INTO `tb_yetki_islem_turleri` VALUES (47, 'detaylar', 'Detaylar');
INSERT INTO `tb_yetki_islem_turleri` VALUES (57, 'birim_sec', 'Birim Seç');
INSERT INTO `tb_yetki_islem_turleri` VALUES (58, 'icerik_duzenle', 'İçerik Düzenle');

-- ----------------------------
-- View structure for view_giris_kontrol
-- ----------------------------
DROP VIEW IF EXISTS `view_giris_kontrol`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_giris_kontrol` AS SELECT
	`tb_sistem_kullanici`.`id` AS `id`,
	`tb_sistem_kullanici`.`adi` AS `adi`,
	`tb_sistem_kullanici`.`soyadi` AS `soyadi`,
	`tb_sistem_kullanici`.`email` AS `email`,
	`tb_sistem_kullanici`.`sifre` AS `sifre`,
	`tb_sistem_kullanici`.`resim` AS `resim`,
	`tb_sistem_kullanici`.`rol_id` AS `rol_id`,
	`tb_sistem_kullanici`.`super` AS `super`,
	`tb_sistem_kullanici`.`kullanici_turu` AS `kullanici_turu` 
FROM
	`tb_sistem_kullanici` UNION
SELECT
	`tb_personeller`.`id` AS `id`,
	`tb_personeller`.`adi` AS `adi`,
	`tb_personeller`.`soyadi` AS `soyadi`,
	`tb_personeller`.`email` AS `email`,
	`tb_personeller`.`sifre` AS `sifre`,
	`tb_personeller`.`foto` AS `resim`,
	`tb_personeller`.`rol_id` AS `rol_id`,
	`tb_personeller`.`super` AS `super`,
	`tb_personeller`.`kullanici_turu` AS `kullanici_turu` 
FROM
	`tb_personeller` ; ;

SET FOREIGN_KEY_CHECKS = 1;
