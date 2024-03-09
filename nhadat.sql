-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2024 lúc 08:27 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhadat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advises`
--

CREATE TABLE `advises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `describe` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(15000) COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(4) DEFAULT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `advises`
--

INSERT INTO `advises` (`id`, `link`, `tittle`, `describe`, `content`, `display`, `outstand`, `number`, `image`, `seo_id`) VALUES
(1, 'vay-tien-ngan-hang-mua-nha-de-ma-khong-de', 'VAY TIỀN NGÂN HÀNG MUA NHÀ, DỄ MÀ KHÔNG DỄ', 'Việc vay mua nhà/căn hộ chung cư là một điều bình thường tại các nước có thị trường bất động sản phát triển.\r\nTheo đó, chỉ cần chứng minh có thu nhập ổn định từ tiền lương/công việc là người mua nhà có thể tiếp cận các khoản vay với những thủ tục rõ ràng, minh bạch và thời hạn vay kéo dài từ 10 - 40 năm.', '<p><strong>VAY TIỀN NG&Acirc;N H&Agrave;NG MUA NH&Agrave;, DỄ M&Agrave; KH&Ocirc;NG DỄ</strong><br />\r\n&Aacute;p lực cho vay</p>\r\n\r\n<p>Việc vay mua nh&agrave;/căn hộ chung cư l&agrave; một điều b&igrave;nh thường tại c&aacute;c nước c&oacute; thị trường bất động sản ph&aacute;t triển.</p>\r\n\r\n<p>Theo đ&oacute;, chỉ cần chứng minh c&oacute; thu nhập ổn định từ tiền lương/c&ocirc;ng việc l&agrave; người mua nh&agrave; c&oacute; thể tiếp cận c&aacute;c khoản vay với những thủ tục r&otilde; r&agrave;ng, minh bạch v&agrave; thời hạn vay k&eacute;o d&agrave;i từ 10 - 40 năm.</p>\r\n\r\n<p>Ở Việt Nam, việc vay tiền ng&acirc;n h&agrave;ng để mua bất động sản cũng c&oacute; từ hơn 10 năm nay, nhưng ch&iacute;nh c&aacute;ch l&agrave;m qu&aacute; chắc của c&aacute;c ng&acirc;n h&agrave;ng khiến cho việc tiếp cận g&oacute;i vay n&agrave;y l&agrave; rất kh&oacute; khăn.</p>\r\n\r\n<p>Theo đ&oacute;, c&ocirc;ng thức chung muốn vay l&agrave; phải c&oacute; t&agrave;i sản thế chấp (sổ đỏ/giấy hồng nh&agrave;/đất; t&agrave;i sản c&oacute; gi&aacute; trị kh&aacute;c) v&agrave; cũng chỉ được định gi&aacute; tối đa bằng 70% gi&aacute; trị thực để t&iacute;nh to&aacute;n cho khoản vay với l&atilde;i suất kh&ocirc;ng hề thấp.</p>\r\n\r\n<p>Khi thị trường bất động sản trầm lắng, cộng với việc c&aacute;c k&ecirc;nh đầu tư v&agrave; huy động nguồn tiền nh&agrave;n rỗi trong d&acirc;n k&eacute;m hiệu quả (chứng kho&aacute;n, v&agrave;ng, ngoại tệ&hellip;), th&igrave; việc người d&acirc;n &ugrave;n &ugrave;n gửi tiền ng&acirc;n h&agrave;ng hưởng l&atilde;i suất đ&atilde; khiến cho nguồn vốn huy động của c&aacute;c ng&acirc;n h&agrave;ng trở n&ecirc;n dư thừa.</p>\r\n\r\n<p>Trong 1 - 2 năm trở lại đ&acirc;y, &aacute;p lực giải ng&acirc;n ng&agrave;y c&agrave;ng lớn cộng với sức &eacute;p từ lợi nhuận ngh&igrave;n tỷ của c&aacute;c cổ đ&ocirc;ng lớn khiến cho c&aacute;c ng&acirc;n h&agrave;ng phải t&igrave;m mọi c&aacute;ch để giải ng&acirc;n số tiền huy động từ trong d&acirc;n cư (vốn c&oacute; l&atilde;i suất thấp 5,5 - 6,5%/năm; thậm ch&iacute; thấp 3,5 - 4,5%/năm cho c&aacute;c khoản vay ngắn hạn 1 - 6 th&aacute;ng) th&ocirc;ng qua c&aacute;c g&oacute;i t&iacute;n dụng thương mại cho vay mua nh&agrave; với l&atilde;i suất cạnh tranh nhau s&iacute;t sao.</p>\r\n\r\n<p>Với g&oacute;i l&atilde;i suất ưu đ&atilde;i 30.000 tỷ đồng, thủ tục qu&aacute; kh&oacute; khăn cũng khiến nhiều người muốn vay b&oacute; tay v&agrave; tốc độ giải ng&acirc;n rất thấp.</p>\r\n\r\n<p>Mới đ&acirc;y, những người đ&atilde; tr&oacute;t huy động tiền để đặt cọc vay mua nh&agrave; ở x&atilde; hội theo g&oacute;i 30.000 tỷ đồng lại &ldquo;kh&oacute;c dở mếu dở&rdquo; v&igrave; c&aacute;c quy định m&acirc;u thuẫn nhau.</p>\r\n\r\n<p>Theo quy định của Bộ X&acirc;y dựng, chỉ người thu nhập thấp mới được vay g&oacute;i 30.000 tỷ v&agrave; thu nhập thấp được cho l&agrave; những người thuộc diện kh&ocirc;ng phải nộp thuế thu nhập c&aacute; nh&acirc;n (tức l&agrave; thu nhập dưới 9 triệu đồng/th&aacute;ng).</p>\r\n\r\n<p>Trong khi đ&oacute;, ng&acirc;n h&agrave;ng lại chỉ muốn cho những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tốt vay để đảm bảo an to&agrave;n nguồn vốn, tr&aacute;nh nợ xấu ph&aacute;t sinh v&agrave; nhiều ng&acirc;n h&agrave;ng y&ecirc;u cầu kh&aacute;ch vay g&oacute;i vốn n&agrave;y phải chứng minh thu nhập từ 9 triệu đồng/th&aacute;ng trở l&ecirc;n.</p>\r\n\r\n<p>V&igrave; &ldquo;vướng&rdquo; v&agrave;o 2 điều khoản &ldquo;đối nghịch&rdquo; nhau n&agrave;y m&agrave; một số người đ&atilde; &ldquo;lỡ&rdquo; đ&oacute;ng trước khoản tiền khoảng 20% gi&aacute; trị căn hộ cho chủ đầu tư, giờ &ldquo;dở kh&oacute;c dở mếu&rdquo; v&igrave; kh&ocirc;ng &ldquo;xin&rdquo; lại được tiền.</p>\r\n\r\n<p>C&acirc;u chuyện khoảng 900 kh&aacute;ch h&agrave;ng mua dự &aacute;n nh&agrave; ở x&atilde; hội HQC Plaza của C&ocirc;ng ty Địa ốc Ho&agrave;ng Qu&acirc;n đ&atilde; k&yacute; hợp đồng mua nh&agrave;, đ&oacute;ng tiền 20% nhưng kh&ocirc;ng vay được g&oacute;i 30.000 tỷ đồng, buộc phải vay từ chủ đầu tư theo h&igrave;nh thức trả chậm với l&atilde;i suất kh&aacute; cao l&agrave; điển h&igrave;nh cho sự tr&eacute;o ngoe n&agrave;y.&nbsp;</p>\r\n\r\n<p>V&agrave; n&oacute; cũng giải th&iacute;ch cho tốc độ giải ng&acirc;n g&oacute;i 30.000 tỷ đồng vẫn rất khi&ecirc;m tốn.&nbsp;</p>\r\n\r\n<p>Cẩn thận khi k&yacute; hợp đồng</p>\r\n\r\n<p>Trước t&igrave;nh h&igrave;nh bế tắc của g&oacute;i vốn 30.000 tỷ cộng với &aacute;p lực tăng trưởng t&iacute;n dụng, rất nhiều NHTM từng bước mở cửa cho vay mua, sửa chữa nh&agrave;.</p>\r\n\r\n<p>Trong khi đ&oacute;, việc nhiều dự &aacute;n nh&agrave; ở đ&atilde; v&agrave; đang từng bước h&igrave;nh th&agrave;nh cộng với sự ấm l&ecirc;n của thị trường, gi&aacute; trị thực v&agrave; tiến độ của c&aacute;c dự &aacute;n ho&agrave;n th&agrave;nh, c&aacute;c k&ecirc;nh đầu tư kh&aacute;c k&eacute;m hiệu quả (chứng kho&aacute;n, v&agrave;ng, ngoại tệ, đầu tư kinh doanh&hellip;), khiến cho người mua &ldquo;xuống tiền&rdquo; l&agrave; cơ hội để ng&acirc;n h&agrave;ng đẩy vốn t&iacute;n dụng cho mảng n&agrave;y.</p>\r\n\r\n<p>Để đẩy mạnh hoạt động n&agrave;y, nhiều NHTM c&oacute; ri&ecirc;ng đội ngũ nh&acirc;n vi&ecirc;n t&iacute;n dụng li&ecirc;n kết với c&aacute;c chủ đầu tư c&aacute;c dự &aacute;n bất động sản từ lớn đến b&eacute;, thậm ch&iacute; c&oacute; bộ phận thường trực tại c&aacute;c dự &aacute;n n&agrave;y để giới thiệu đến kh&aacute;ch h&agrave;ng c&aacute;c g&oacute;i vay ưu đ&atilde;i, với thời hạn vay từ ngắn hạn đến trung v&agrave; d&agrave;i hạn (10 - 20 năm).</p>\r\n\r\n<p>Để l&agrave;m được điều n&agrave;y, ngo&agrave;i việc lấy th&ocirc;ng tin hoặc mua th&ocirc;ng tin về kh&aacute;ch h&agrave;ng từ ch&iacute;nh chủ đầu tư c&aacute;c dự &aacute;n bất động sản để t&igrave;m hiểu nhu cầu vay; c&aacute;c ng&acirc;n h&agrave;ng cũng đẩy mạnh việc tiếp thị, quảng c&aacute;o qua c&aacute;c k&ecirc;nh truyền th&ocirc;ng (website, b&aacute;o, phiếu khảo s&aacute;t, l&agrave;m tờ rơi; gọi điện thoại, nhắn tin&hellip;) để tiếp cận bằng được kh&aacute;ch h&agrave;ng mua nh&agrave; nhằm đẩy mạnh việc giải ng&acirc;n khoản vay cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>C&aacute;c g&oacute;i ưu đ&atilde;i được quảng b&aacute; rất hấp dẫn. Tuy nhi&ecirc;n, lời khuy&ecirc;n đối những người c&oacute; nhu cầu mua nh&agrave; m&agrave; chưa đủ điều kiện t&agrave;i ch&iacute;nh l&agrave; việc tiếp cận c&aacute;c khoản vay n&agrave;y phải thực tỉnh t&aacute;o, đủ th&ocirc;ng tin cũng như c&oacute; nguồn tiền trả ổn định th&igrave; mới n&ecirc;n đặt b&uacute;t k&yacute; v&agrave;o hợp đồng vay (Bảng 1).</p>\r\n\r\n<p>Một thực tế m&agrave; nhiều người mua bất động sản (nh&agrave; đất, căn hộ chung cư) kh&ocirc;ng để &yacute; hoặc kh&ocirc;ng hỏi kỹ nh&acirc;n vi&ecirc;n tư vấn, đ&oacute; l&agrave; những hệ quả nếu như kh&ocirc;ng c&oacute; nguồn t&agrave;i ch&iacute;nh ổn định để thanh to&aacute;n theo lịch trả nợ đối với ng&acirc;n h&agrave;ng (thường điều n&agrave;y nằm trong ch&iacute;nh hợp đồng vay do ng&acirc;n h&agrave;ng soạn).</p>\r\n\r\n<p>Tr&ecirc;n thực tế, để đẩy nhanh việc giải ng&acirc;n khoản vay cho kh&aacute;ch, nhiều nh&acirc;n vi&ecirc;n t&iacute;n dụng đ&atilde; &ldquo;lờ&rdquo; đi th&ocirc;ng tin về hệ quả ph&aacute;p l&yacute; nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả khoản vay đ&uacute;ng hạn.</p>\r\n\r\n<p>Khi tư vấn, họ chỉ giải th&iacute;ch c&aacute;c ưu điểm về mức l&atilde;i suất theo năm (chẳng hạn, th&aacute;ng đầu, năm đầu, l&atilde;i suất thấp hơn ng&acirc;n h&agrave;ng kh&aacute;c); mức l&atilde;i suất ch&ecirc;nh lệch giữa đi vay - cho vay (ch&ecirc;nh 3 - 4%/năm) khi so s&aacute;nh để cho kh&aacute;ch h&agrave;ng thấy vay ở ng&acirc;n h&agrave;ng của m&igrave;nh l&agrave; ưu điểm hơn, thủ tục nhanh gọn hơn; l&atilde;i suất thấp hơn (tr&ecirc;n thực tế, nếu kh&aacute;ch h&agrave;ng t&igrave;m hiểu th&igrave; thấy c&aacute;c ng&acirc;n h&agrave;ng x&acirc;y dựng biểu l&atilde;i suất n&agrave;y gần như nhau để cạnh tranh).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&oacute; một hệ quả ph&aacute;p l&yacute; l&agrave; nếu kh&aacute;ch h&agrave;ng chỉ cần chậm thanh to&aacute;n theo tiến độ đ&atilde; cam kết, th&igrave; d&ugrave; c&oacute; gửi th&ocirc;ng b&aacute;o, m&agrave; ng&acirc;n h&agrave;ng h&agrave;ng kh&ocirc;ng đồng &yacute;, khoản vay của kh&aacute;ch h&agrave;ng sẽ được xếp v&agrave;o khoản nợ xấu v&agrave; ngay lập tức, ng&acirc;n h&agrave;ng sẽ phối hợp với c&aacute;c c&ocirc;ng ty xử l&yacute; nợ xấu của m&igrave;nh tiến h&agrave;nh xử l&yacute; ngay t&agrave;i sản của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Thế n&ecirc;n mới c&oacute; chuyện, vay tiền ng&acirc;n h&agrave;ng mua nh&agrave; hay đầu tư kinh doanh nhưng cuối c&ugrave;ng lại mất nh&agrave;; mất cả khoản tiền t&iacute;ch c&oacute;p của m&igrave;nh.</p>\r\n\r\n<p>Sự kiện &ldquo;xiết nợ&rdquo; của VPBank như vừa xảy ra ở căn hộ 1401 t&ograve;a nh&agrave; 17T2 phố Ho&agrave;ng Đạo Th&uacute;y (Cầu Giấy, H&agrave; Nội) hồi trung tuần th&aacute;ng 3/2015 vừa qua l&agrave; một trong nhiều vụ việc điển h&igrave;nh của việc xử l&yacute; khoản vay của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Theo đ&oacute;, khi vay nợ ng&acirc;n h&agrave;ng, kh&aacute;ch h&agrave;ng thế chấp t&agrave;i sản nhằm đảm bảo nghĩa vụ trả nợ v&agrave; ng&acirc;n h&agrave;ng c&oacute; quyền xử l&yacute; t&agrave;i sản bảo đảm n&agrave;y để thu hồi tiền cho vay khi kh&aacute;ch h&agrave;ng kh&ocirc;ng trả được nợ.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, cụ thể việc xử l&yacute; như thế n&agrave;o th&igrave; phải tu&acirc;n thủ quy định của ph&aacute;p luật, chứ kh&ocirc;ng thể đương nhi&ecirc;n đến nh&agrave; người ta, lắp kh&oacute;a, d&aacute;n ni&ecirc;m phong, đuổi chủ nh&agrave; ra ngo&agrave;i.</p>\r\n\r\n<p>Nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả được nợ, ng&acirc;n h&agrave;ng c&oacute; thể thương lượng, thỏa thuận với chủ hộ để giải quyết, b&aacute;n t&agrave;i sản đ&oacute; để thu hồi nợ.</p>\r\n\r\n<p>Nếu kh&ocirc;ng đạt được thỏa thuận, ng&acirc;n h&agrave;ng c&oacute; quyền khởi kiện đề nghị t&ograve;a &aacute;n buộc kh&aacute;ch h&agrave;ng phải trả nợ, nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả nợ, th&igrave; ng&acirc;n h&agrave;ng c&oacute; quyền ph&aacute;t mại t&agrave;i sản thế chấp.</p>\r\n\r\n<p>Từ vụ việc n&agrave;y, mỗi người đi vay cần r&uacute;t ra được b&agrave;i học đ&oacute; l&agrave; phải tham khảo, đọc kỹ hợp đồng vay; t&iacute;nh to&aacute;n kỹ c&aacute;c khả năng trả nợ th&igrave; mới n&ecirc;n đặt b&uacute;t k&yacute;.</p>\r\n\r\n<p>Bởi lẽ, th&ocirc;ng thường với c&aacute;c NHTM, th&igrave; nếu như sau 30 - 45 ng&agrave;y m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thực hiện nghĩa vụ thanh to&aacute;n theo lịch vay (hoặc đơn đề nghị gia hạn kh&ocirc;ng được chấp nhận) th&igrave; t&agrave;i sản thế chấp của kh&aacute;ch h&agrave;ng sẽ được xử l&yacute; ngay lập tức, hoặc ng&acirc;n h&agrave;ng sẽ phối hợp với chủ đầu tư xử l&yacute; ngay t&agrave;i sản của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Đương nhi&ecirc;n, c&aacute;c ng&acirc;n h&agrave;ng cũng cần tăng cường tập huấn nghiệp vụ, đạo đức nghề nghiệp cho nh&acirc;n vi&ecirc;n để họ cung cấp th&ocirc;ng tin đầy đủ cho kh&aacute;ch h&agrave;ng, chứ kh&ocirc;ng phải đặt &aacute;p lực giải ng&acirc;n khoản vay l&ecirc;n lương thưởng để nh&acirc;n vi&ecirc;n vi phạm quy tr&igrave;nh nghiệp vụ khi tư vấn cho kh&aacute;ch h&agrave;ng dẫn đến khoản nợ xấu v&agrave; phải xử l&yacute; khoản nợ xấu đ&oacute;.</p>\r\n\r\n<p>Đ&atilde; c&oacute; nhiều trường hợp, kh&aacute;ch h&agrave;ng vay tiền ng&acirc;n h&agrave;ng thế chấp t&agrave;i sản, để bảo đảm thanh to&aacute;n đ&uacute;ng hạn hoặc nộp tiền v&agrave;o để r&uacute;t giấy tờ ra (Giấy chứng nhận/hợp đồng mua b&aacute;n của t&agrave;i sản thế chấp) đ&atilde; đi vay &ldquo;t&iacute;n dụng đen&rdquo; b&ecirc;n ngo&agrave;i với l&atilde;i suất cao (0,3 - 0,5%/khoản vay/ng&agrave;y).</p>\r\n\r\n<p>Hệ quả l&agrave; &ldquo;l&atilde;i mẹ đẻ l&atilde;i con&rdquo; với t&iacute;n dụng đen cũng như trả l&atilde;i phạt của ng&acirc;n h&agrave;ng do thanh to&aacute;n trước hạn.</p>\r\n\r\n<p>Vĩ thanh</p>\r\n\r\n<p>Cổ đ&ocirc;ng của một NHTM cổ phần thuộc Top 10 (c&oacute; l&atilde;i khoảng 2.000 tỷ đồng năm 2014 nhưng kh&ocirc;ng chia cổ tức) kể với người viết b&agrave;i một c&acirc;u chuyện trớ tr&ecirc;u.</p>\r\n\r\n<p>Số l&agrave; để thực hiện khoản thanh to&aacute;n tiền mua căn hộ thuộc một dự &aacute;n ở H&agrave; Nội, kh&aacute;ch h&agrave;ng n&agrave;y đ&atilde; huy động vốn từ gia đ&igrave;nh, bạn b&egrave; v&agrave; chuyển tiền về t&agrave;i khoản của m&igrave;nh tại ch&iacute;nh NHTM cổ phần nơi &ocirc;ng l&agrave; một cổ đ&ocirc;ng.</p>\r\n\r\n<p>Từ H&agrave; Nội, kh&aacute;ch h&agrave;ng n&agrave;y thực hiện thanh to&aacute;n li&ecirc;n ng&acirc;n h&agrave;ng cho khoản tiền mua căn hộ l&agrave; khoảng 2,5 tỷ đồng.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, khoản ph&iacute; phải thanh to&aacute;n cho ng&acirc;n h&agrave;ng theo biểu ph&iacute; l&agrave; gần 2 triệu đồng, trong đ&oacute; c&oacute; 0,3% cho ph&iacute; nộp tiền v&agrave;o t&agrave;i khoản kh&aacute;c tỉnh; 0,3% ph&iacute; chuyển tiền li&ecirc;n ng&acirc;n h&agrave;ng; 0,12% ph&iacute; vừa nộp tiền v&agrave;o t&agrave;i khoản nhưng chuyển đi thanh to&aacute;n ngay trong ng&agrave;y (miễn ph&iacute; nếu để lại t&agrave;i khoản 2 ng&agrave;y?!).</p>\r\n\r\n<p>Trong khi khoảng c&aacute;ch từ nơi chuyển đến nơi nhận tiền chỉ l&agrave; 5 km v&agrave; nếu như kh&aacute;ch h&agrave;ng n&agrave;y nộp trực tiếp v&agrave;o t&agrave;i khoản của NHTM cổ phần kia th&igrave; được miễn ph&iacute; 100%.</p>\r\n\r\n<p>Chẳng tr&aacute;ch, d&acirc;n m&igrave;nh đi mua nh&agrave;, mua xe&hellip; cứ v&aacute;c h&agrave;ng bao tải tiền đi trả v&igrave; với họ, ph&iacute; dịch vụ phải trả cho ng&acirc;n h&agrave;ng kia để thu&ecirc; taxi đi cho rẻ?</p>', 1, 0, '1', 'timthumb-5209.jpg', 99),
(6, 'dich-vu-lam-so-o', 'DỊCH VỤ LÀM SỔ ĐỎ', 'Nhà đất  Minh Phát chuyên nhận làm sổ đỏ tại Bình Tân,Bình Chánh,Tân Phú...Đại diện chủ đất làm tất cả mọi thủ tục để được cấp sổ đỏ, sang tên giấy chứng nhận quyền sử dụng đất tại Bình Tân.... Bao gồm các thủ tục đo vẽ đất, ra phòng công chứng, kê khai thuế, làm bản vẻ cấp sổ đỏ…', '<h1>DỊCH VỤ L&Agrave;M SỔ ĐỎ</h1>\r\n\r\n<p><strong>DỊCH VỤ L&Agrave;M SỔ ĐỎ TẠI B&Igrave;NH T&Acirc;N NHANH NHẤT&nbsp;</strong></p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Nh&agrave; đất&nbsp; Minh Ph&aacute;t chuy&ecirc;n nhận l&agrave;m sổ đỏ tại B&igrave;nh T&acirc;n,B&igrave;nh Ch&aacute;nh,T&acirc;n Ph&uacute;...</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đại diện chủ đất l&agrave;m tất cả mọi thủ tục để được cấp sổ đỏ, sang t&ecirc;n giấy chứng nhận quyền sử dụng đất tại&nbsp;B&igrave;nh T&acirc;n.... Bao gồm c&aacute;c thủ tục đo vẽ đất, ra ph&ograve;ng c&ocirc;ng chứng, k&ecirc; khai thuế, l&agrave;m bản vẻ cấp sổ đỏ&hellip;</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Thời gian l&agrave;m sổ đỏ nhanh nhất tại B&igrave;nh T&acirc;n.</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Tất cả mọi thủ tục li&ecirc;n quan để được cấp sổ đỏ sẻ được c&ocirc;ng ty ch&uacute;ng t&ocirc;i thay mặt chủ đất l&agrave;m to&agrave;n bộ</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đến với dịch vụ l&agrave;m sổ đỏ tại&nbsp;B&igrave;nh T&acirc;n.&nbsp;của ch&uacute;ng t&ocirc;i đảm bảo qu&yacute; kh&aacute;ch sẻ tiết kệm được tối đa về thời gian, chi ph&iacute; dịch vụ rất cạnh tranh.</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chất lượng phục vụ uy t&iacute;n tận t&acirc;m với kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;C&ocirc;ng ty ch&uacute;ng t&ocirc;i chỉ nhận ph&iacute; dịch vụ l&agrave;m sổ đỏ khi đ&atilde; ho&agrave;n th&agrave;nh to&agrave;n bộ hồ sơ cho kh&aacute;ch h&agrave;ng.</p>', 0, NULL, '2', 'timthumb-7173.jpg', 180),
(7, 'gia-tinh-thue-chuyen-nhuong-at', 'GIÁ TÍNH THUẾ CHUYỂN NHƯỢNG ĐẤT', 'Theo Thông tư 02 ngày 11-1-2010 của Bộ Tài chính, cá nhân chuyển nhượng bất động sản đóng 25% tính trên thu nhập tính thuế khi giá chuyển nhượng ghi trên hợp đồng và kê khai trên tờ khai thuế không thấp hơn giá do UBND cấp tỉnh quy định', '<p><span style=\"font-size:18px\">Theo Th&ocirc;ng tư 02 ng&agrave;y 11-1-2010 của Bộ T&agrave;i ch&iacute;nh, c&aacute; nh&acirc;n chuyển nhượng bất động sản đ&oacute;ng 25% t&iacute;nh tr&ecirc;n thu nhập t&iacute;nh thuế khi gi&aacute; chuyển nhượng ghi tr&ecirc;n hợp đồng v&agrave; k&ecirc; khai tr&ecirc;n tờ khai thuế kh&ocirc;ng thấp hơn gi&aacute; do UBND cấp tỉnh quy định (đối với quyền sử dụng đất) hoặc kh&ocirc;ng thấp hơn gi&aacute; t&iacute;nh lệ ph&iacute; trước bạ do UBND cấp tỉnh quy định (đối với nh&agrave; v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng) tại thời điểm hợp đồng chuyển nhượng c&oacute; hiệu lực.<br />\r\nTrường hợp gi&aacute; chuyển nhượng ghi tr&ecirc;n hợp đồng v&agrave; k&ecirc; khai tr&ecirc;n tờ khai thuế thấp hơn gi&aacute; do UBND cấp tỉnh quy định hoặc thấp hơn gi&aacute; t&iacute;nh lệ ph&iacute; trước bạ do UBND cấp tỉnh quy định tại thời điểm hợp đồng chuyển nhượng c&oacute; hiệu lực th&igrave; &aacute;p dụng thuế suất 2% t&iacute;nh tr&ecirc;n gi&aacute; do UBND tỉnh quy định.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Trong việc nộp lệ ph&iacute; trước bạ, Th&ocirc;ng tư 68 ng&agrave;y 26-4-2010 của Bộ T&agrave;i ch&iacute;nh hướng dẫn: Gi&aacute; trị đất t&iacute;nh lệ ph&iacute; trước bạ l&agrave; gi&aacute; chuyển nhượng quyền sử dụng đất thực tế do người nộp thuế k&ecirc; khai. Trường hợp người nộp thuế k&ecirc; khai kh&ocirc;ng đ&uacute;ng gi&aacute; thực tế chuyển nhượng th&igrave; x&aacute;c định gi&aacute; đất căn cứ v&agrave;o gi&aacute; 1 m2 đất do UBND tỉnh quy định.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Như vậy, việc cơ quan thuế sẽ căn cứ gi&aacute; chuyển nhượng ghi tr&ecirc;n hợp đồng chuyển nhượng đất để thu thuế thu nhập c&aacute; nh&acirc;n v&agrave; lệ ph&iacute; trước bạ theo c&aacute;ch t&iacute;nh n&ecirc;u tr&ecirc;n</span></p>', 0, NULL, '1', 'timthumb-2539.jpg', 181),
(8, 'xin-phep-xay-dung', 'XIN PHÉP XÂY DỰNG', 'Chuyên làm giấy phép xây dựng tại Bình Tân, xin cấp phép xây dựng nhà tại Bình Chánh...., nhà phố, biệt thự, nhà trọ, nhà xưởng...', '<h1><span style=\"font-size:16px\">XIN PH&Eacute;P X&Acirc;Y DỰNG</span></h1>\r\n\r\n<p><span style=\"font-size:16px\">- Chuy&ecirc;n l&agrave;m giấy ph&eacute;p x&acirc;y dựng tại B&igrave;nh T&acirc;n, xin cấp ph&eacute;p x&acirc;y dựng nh&agrave; tại B&igrave;nh Ch&aacute;nh, nh&agrave; phố, biệt thự, nh&agrave; trọ, nh&agrave; xưởng...</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Bản vẻ xin cấp ph&eacute;p x&acirc;y dựng được ch&uacute;ng t&ocirc;i trao đổi v&agrave; thống nhất với kh&aacute;ch h&agrave;ng(&nbsp; dựa tr&ecirc;n diện t&iacute;ch đất, phong thủy của gia chủ...) sau đ&oacute; đội ngũ kiến tr&uacute;c sư của c&ocirc;ng ty sẽ thiết kế th&agrave;nh một bản vẻ ho&agrave;n chỉnh để đi l&agrave;m hồ sơ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&ndash; Dịch vụ l&agrave;m giấy ph&eacute;p của ch&uacute;ng t&ocirc;i nhanh gọn, tiết kiệm tối đa thời gian của kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Thời gian giải quyết hồ sơ nhanh trong v&ograve;ng 21 ng&agrave;y, chất lượng dịch vụ xin ph&eacute;p x&acirc;y dựng&nbsp; uy t&iacute;n, tận t&acirc;m, đảm bảo với kh&aacute;ch h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- C&ocirc;ng ty&nbsp; ch&uacute;ng t&ocirc;i chỉ lấy ph&iacute; dịch vụ khi đ&atilde; l&agrave;m xong hồ sơ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hồ sơ bao gồm:</span></p>\r\n\r\n<p><span style=\"font-size:16px\">1.&nbsp; Bản thiết kế sơ bộ được đ&oacute;ng dấu của c&ocirc;ng ty thiết kế v&agrave; chữ k&yacute; của kiến tr&uacute;c sư, kỹ sư x&acirc;y dựng trong c&ocirc;ng ty.<br />\r\n2. Giấy ph&eacute;p kinh doanh của c&ocirc;ng ty thiết kế<br />\r\n3. Chứng chỉ h&agrave;nh nghề kiến tr&uacute;c sư của người chủ tr&igrave; thiết kế<br />\r\n4. Đơn xin cấp ph&eacute;p x&acirc;y dựng<br />\r\n5. Bản sao quyền sử dụng đất (sổ đỏ)<br />\r\nChi ph&iacute; dịch vụ:</span></p>\r\n\r\n<p><span style=\"font-size:16px\">1.&nbsp; &nbsp; &nbsp;Nh&agrave; cấp 4, diện t&iacute;ch s&agrave;n dưới 250m2, gi&aacute; 4.500.00đ/bộ (Gi&aacute; dịch vụ đ&atilde; bao gồm bản vẽ thiết kế theo y&ecirc;u cầu của chủ nh&agrave;)<br />\r\n2.&nbsp; &nbsp; &nbsp;Nh&agrave; 1 trệt , 1 lầu, diện t&iacute;ch s&agrave;n dưới 250m2, gi&aacute; 5.000.00đ/bộ (Gi&aacute; dịch vụ đ&atilde; bao gồm bản vẽ thiết kế)<br />\r\n3.&nbsp; &nbsp; &nbsp;Nh&agrave; từ 1 trệt 2 lầu trở l&ecirc;n hoặc diện t&iacute;ch s&agrave;n x&acirc;y dựng lớn hơn 250m2 gi&aacute; thoả thuận theo từng hồ sơ cụ thể</span></p>', 0, NULL, '1', 'timthumb-5392.jpg', 182);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `tittle`, `link`, `display`) VALUES
(1, 'banner-4023.png', 'banner1rsh123qư123', 'ửgaerearhg123ưefrưef123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `tittle`, `link`, `image`, `content`, `create_at`, `update_at`, `created_at`, `updated_at`) VALUES
(1, '5 Laptop bán tốt dưới 20 triệu đồng', '5-laptop-ban-tot-duoi-20-trieu-dong', 'blog1.jpg', 'Laptop dưới 20 triệu đồng là phân khúc bán chạy tại Việt Nam nhờ cấu hình tốt, đa dạng cổng kết nối, phù hợp nhu cầu họp học trực tuyến.\n\nGhi nhận tại một số hệ thống bán lẻ cho thấy, máy tính xách tay bán chạy nhất là các dòng từ 12 triệu đến 20 triệu đồng, với mức tăng trưởng 50% so với năm ngoái. Trong đó, các phiên bản của Acer, Dell, Asus, HP, Lenovo được nhiều người quan tâm.\n\nAcer Aspire 3 A315 (12 triệu đồng)\n\nAcer Aspire 3 A315.\nAcer Aspire 3 A315.\n\nVới giá rẻ, màn hình lớn, Aspire 3 là lựa chọn tốt cho người có nhu cầu mua laptop thay thế máy để bàn. Do không còn ổ đĩa quang, cân nặng của sản phẩm chỉ 1,7 kg, nhẹ hơn mức trung bình trước đây khoảng 1,8-2 kg. Màn hình máy 15,6 inch độ phân giải chuẩn Full HD, tấm nền IPS cho góc nhìn rộng. Bàn phím có kích thước đầy đủ, thêm dãy phím số riêng biệt, hỗ trợ tốt cho người dùng văn phòng, nhập liệu.\n\nAspire 3 A315 phiên bản bán chạy nhất có cấu hình cơ bản với chip xử lý Core i3-1005G1, RAM 4 GB có thể nâng cấp do có hai khe cắm, ổ SSD 256 GB cho tốc độ khởi động, mở ứng dụng nhanh hơn hẳn so với ổ HDD truyền thống.\n\nDell Inspiron 15 N515 (19,5 triệu đồng)\n\nDell Inspiron 15 N515.\nDell Inspiron 15 N515.\n\nThuộc phân khúc tầm trung nhưng Inspiron 15 N515 có thiết kế viền màn hình mỏng, cân nặng 1,69 kg. Máy sử dụng tấm nền màn hình IPS 15,6 inch có lớp phủ chống lóa, độ phân giải chuẩn Full HD. Laptop trang bị hai cổng USB 3.2, một USB 2.0 nhưng không có USB-C.\n\nInspiron 15 N515 có cấu hình tốt so với tầm giá gồm chip AMD Ryzen 5 3500U, RAM 8 GB, ổ SSD 256 GB chuẩn PCIe NVMe M.2, chip đồ họa Radeon Vega 8, pin 42 Whr.\n\nAsus Vivobook X415E (16,4 triệu đồng)\n\nAsus Vivobook X415E.\nAsus Vivobook X415E.\n\nSo với các đối thủ cùng tầm, Vivobook X415E có dung lượng RAM ít hơn (4 GB) nhưng lại trội hơn về chip xử lý với Intel Core i5-1135G7 thế hệ 11 mới nhất và ổ SSD dung lượng 512 GB. Model của Asus cũng có lợi thế về cổng kết nối khi có USB-C chuẩn 3.2 mới thay vì chỉ cổng USB Type A truyền thống.\n\nMáy có màn hình 14 inch độ phân giải chuẩn Full HD, phủ lớp chống lóa tương tự model của Dell. X415E có trọng lượng 1,6 kg, nhẹ hơn so với các đối thủ dùng màn hình 15,6 inch.\n\nHP Pavilion 15-eg0505TU (18,9 triệu đồng)\n\nHP Pavilion 15-eg0505TU.\nHP Pavilion 15-eg0505TU.\n\nLaptop của HP có thế mạnh về hệ thống loa sử dụng công nghệ Bang & Olufsen cho chất âm nổi bật so với các đối thủ. Máy cũng dùng chip Core i5-1135G7 thế hệ 11 mới nhất, RAM 8 GB và bộ nhớ SSD lớn 512 GB.\n\nPavilion 15-eg0505TU tích hợp màn hình lớn 15,6 inch, độ phân giải chuẩn Full HD, tấm nền IPS, độ sáng cao 250 nit. Sản phẩm có thiết kế đẹp với khung kim loại, cổng USB-C mới, khe cắm thẻ nhớ microSD nhưng cân nặng hơi lớn so với các đối thủ là 1,75 kg.\n\nLenovo Ideapad 3 15ITL05 (19,1 triệu đồng)\n\nLenovo Ideapad 3 15ITL05.\nLenovo Ideapad 3 15ITL05.\n\nGiống sản phẩm của Dell và HP, Ideapad 3 15ITL05 sử dụng màn hình 15,6 inch độ phân giải Full HD, tấm nền IPS nhưng độ sáng nhỉnh hơn là 300 nit. Phiên bản bán tốt nhất có cấu hình với chip Intel i5-1135G7, RAM 8 GB và bộ nhớ trong 512 GB. Ngoài ra, dòng sản phẩm của Lenovo còn các tùy chọn khác như AMD Ryzen 3, Ryzen 5.\n\nIdeapad 3 15ITL05 nặng 1,7 kg, trang bị khe cắm thẻ nhớ SD, cổng USB-C mới nhất nhưng chỉ hỗ trợ truyền dữ liệu thay vì cả sạc như một số model đối thủ. Một ưu điểm khác của sản phẩm là bàn phím kích thước tiêu chuẩn, có phím số phụ riêng biệt và hệ thống đèn nền.\n\nTuấn Hưng \nGhi nhận tại một số hệ thống bán lẻ cho thấy, máy tính xách tay bán chạy nhất là các dòng từ 12 triệu đến 20 triệu ', '2023-12-13 03:48:24', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `content` varchar(5000) NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `consultations`
--

INSERT INTO `consultations` (`id`, `tittle`, `content`, `display`) VALUES
(1, 'test', '<p>Qu&yacute; kh&aacute;ch điền những th&ocirc;ng tin b&ecirc;n dưới chuy&ecirc;n vi&ecirc;n tư vấn từ c&ocirc;ng ty NH&Agrave; ĐẤT MINH PH&Aacute;T sẽ trực tiếp li&ecirc;n hệ với qu&yacute; kh&aacute;ch</p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `content`, `image`, `display`, `seo_id`) VALUES
(1, '<h2><a href=\"https://nhadatminhphat.com.vn/\"><span style=\"color:#f39c12\"><strong>NH&Agrave; ĐẤT MINH PH&Aacute;T</strong></span></a></h2>\r\n\r\n<h2>Địa Chỉ: 740/11 L&ecirc; Trọng Tấn, P.B&igrave;nh Hưng H&ograve;a, Q.B&igrave;nh T&acirc;n, TP.HCM</h2>\r\n\r\n<p>Hotline:&nbsp;<span style=\"color:#ff0000\"><strong>0935.613.986 - 0903.250.446</strong></span></p>\r\n\r\n<p>Email:&nbsp;<span style=\"color:#0066ff\">tranquangthu986@gmail.com</span></p>\r\n\r\n<h2>Website:&nbsp;<a href=\"https://nhadatminhphat.com.vn/\">nhadatminhphat.com.vn</a></h2>', 'default_image.jpg', 1, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_letters`
--

CREATE TABLE `contact_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirm` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact_letters`
--

INSERT INTO `contact_letters` (`id`, `name`, `phone`, `email`, `address`, `topic`, `content`, `note`, `confirm`) VALUES
(1, 'lê quốc thiện', '0363008204', 'quocthien0404@gmail.com', '276 thống nhất', '??nh gi?', '......', '......', NULL),
(2, 'l? qu?c thi?n', '0363008204', 'quocthien0404@gmail.com', '276 th?ng nh?t', '??nh gi?', '......', '......', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(20) NOT NULL,
  `describe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `criterias`
--

INSERT INTO `criterias` (`id`, `image`, `tittle`, `number`, `describe`, `display`) VALUES
(1, 'images.jpeg', 'QẺG', 1, 'QẺGE', 0),
(2, 'images (1).jpeg', 'ừ', 2, 'ưeg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_supports`
--

CREATE TABLE `customer_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `content` varchar(5000) NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer_supports`
--

INSERT INTO `customer_supports` (`id`, `tittle`, `content`, `display`) VALUES
(1, 'test', '<p style=\"text-align:center\"><img alt=\"\" src=\"https://nhadatminhphat.com.vn/upload/elfinder/ss.png\" /></p>\r\n\r\n<p style=\"text-align:center\">Email:&nbsp;<a href=\"mailto:%20tranquangthu986@gmail.com\">tranquangthu986@gmail.com</a></p>\r\n\r\n<p style=\"text-align:center\">Hotline:&nbsp;<a href=\"mailto:%200935613986\">0935613986</a></p>\r\n\r\n<p style=\"text-align:center\">Địa chỉ: 740/11 l&ecirc; trọng tấn, p.b&igrave;nh hưng h&ograve;a, q.b&igrave;nh t&acirc;n, tp.hồ ch&iacute; minh</p>\r\n\r\n<p style=\"text-align:center\">Follow us</p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_products`
--

CREATE TABLE `detail_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `describe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `new` tinyint(4) DEFAULT NULL,
  `selling` tinyint(4) DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acreage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schame` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level2_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level3_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level1_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_product_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_products`
--

INSERT INTO `detail_products` (`id`, `number`, `image`, `tittle`, `link`, `content`, `describe`, `outstand`, `discount`, `display`, `new`, `selling`, `product_code`, `price`, `address`, `size`, `acreage`, `contact`, `direction`, `location`, `schame`, `new_price`, `gallery_id`, `level2_product_id`, `seo_id`, `level3_product_id`, `level1_product_id`, `tag_product_id`) VALUES
(596, 1, 'img8111-9588390x320-8857.jpg', 'Bán Nhà Hẻm 5m 2 Sẹc Lê Đình Cẩn ,P .Tân Tạo ,Quận Bình Tân, Tp.Hcm', 'ban-nha-hem-5m-2-sec-le-inh-can-p-tan-tao-quan-binh-tan-tphcm', '<p>B&aacute;n nh&agrave; hẻm 5m 2 Sẹc L&ecirc; Đ&igrave;nh Cẩn ,P .T&acirc;n Tạo ,Quận B&igrave;nh T&acirc;n, Tp.Hcm</p>\r\n\r\n<p>Diện t&iacute;ch : 4 x14 m,hẻm xe hơi, gần Chợ L&ecirc; Đ&igrave;nh Cẩn v&agrave; Tỉnh Lộ 10</p>\r\n\r\n<p>Kết cấu : 1 trệt + 1 lầu đ&uacute;c</p>\r\n\r\n<p>Gi&aacute; b&aacute;n : 3,75 tỷ c&oacute; tl.</p>\r\n\r\n<p>Vui l&ograve;ng li&ecirc;n hệ: 0935 61 39 86.</p>', '<p>test</p>', 1, NULL, 1, 1, 0, 'srth', '60.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 192, NULL, 44, NULL),
(597, 2, 'default_image.jpg', 'test2', 'test2', '<p>test2</p>', '<p>test2</p>', NULL, NULL, 0, NULL, 0, 'srth', '60.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, 193, NULL, 44, NULL),
(598, 1, 'default_image.jpg', 'test3', 'test3', '<p>test3</p>', '<p>test3</p>', NULL, NULL, 0, NULL, NULL, 'mmm', '25.000', 'aghrtgha', '4x', 'mmm', 'ưeg', 'egae', 'ehgsrt', NULL, NULL, NULL, 67, 194, NULL, 45, NULL),
(599, 1, 'default_image.jpg', 'test4', 'test4', '<p>test4</p>', '<p>test4</p>', NULL, NULL, 0, NULL, NULL, 'srth', '67.000', 'Thienes Avenue', 'weR', 'rth', 'rth', 'rthwrtfg', 'code & code', NULL, NULL, NULL, 66, 195, NULL, 45, NULL),
(601, 1, 'default_image.jpg', 'test4', 'test4', '<p>mm</p>', '<p>mm</p>', NULL, NULL, 0, NULL, NULL, 'srth', '60.000', 'Thienes Avenue', '12', 'rth', 'rth', 'iiii', 'Ho Chi Minh City, Vietnam', NULL, NULL, NULL, 66, 197, NULL, 45, NULL),
(602, 1, 'default_image.jpg', 'test5', 'test5', '<p>mmm</p>', '<p>mmm</p>', NULL, NULL, 0, NULL, NULL, 'mm', '67.000', '86/33 Âu Cơ, Phường 9, Quận Tân Bình, TP HCM', 'iii', 'ul', 'uti', 'kyu', 'gergsd', NULL, NULL, NULL, 67, 198, NULL, 46, NULL),
(603, 1, 'default_image.jpg', 'test6', 'test6', '<p>kkk</p>', '<p>kkk</p>', NULL, NULL, 0, NULL, NULL, 'srth', '60.000', 'Thienes Avenue', '12', 'rth', '314', 'utl', 't54y34t346twfgegr', NULL, NULL, NULL, 67, 199, NULL, 45, NULL),
(604, 1, 'default_image.jpg', 'test7', 'test7', '<p>kkk</p>', '<p>kkkk</p>', NULL, NULL, 0, NULL, NULL, 'dty', 'dtyu', 'dtyu', 'tdy', 'dty', 'tdy', 'tdyu', 'tydu', NULL, NULL, NULL, 66, 200, NULL, 46, NULL),
(605, 1, 'default_image.jpg', 'test8', 'test8', '<p>jjj</p>', '<p>test8</p>', NULL, NULL, 0, NULL, NULL, 'rtur', 'sru', 'ru', 'ỳd', 'tyu', 'ru', NULL, NULL, NULL, NULL, NULL, 67, 201, NULL, 45, NULL),
(606, 1, 'default_image.jpg', 'test9', 'test9', '<p>sry</p>', '<p>sr</p>', NULL, NULL, 0, NULL, NULL, 'sryh', 'rsusr', 'rty', 'suy', 'sỷu', 'yuy', 'kjyu', 'kjyu', NULL, NULL, NULL, 66, 202, NULL, 44, NULL),
(607, 1, 'default_image.jpg', 'test10', 'test10', '<p>aerg</p>', '<p>earg</p>', NULL, NULL, 0, NULL, NULL, '123', 'aeg', 'eg', 'ẻg', 'ẻg', 'ẻg', 'eg', 'ẻ', NULL, NULL, NULL, 67, 203, NULL, 44, NULL),
(608, 1, 'default_image.jpg', 'test11', 'test11', '<p>ggg</p>', '<p>ggg</p>', NULL, NULL, 0, NULL, NULL, 'srth', '60.000', 'Thienes Avenue, Lê Quốc Thiện', 'ea', 'rth', 'rth', 'ẻg', 'ẻg', NULL, NULL, NULL, 67, 204, NULL, 45, NULL),
(609, 1, 'default_image.jpg', 'test12', 'test12', '<p>ửag</p>', '<p>test12</p>', NULL, NULL, 0, NULL, NULL, 'ẻg', 'ẻg', 'ẻ', 'rge', 'ẻ', 'ẻ', 'dag', 'edr', NULL, NULL, NULL, 66, 205, NULL, 45, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_quotations`
--

CREATE TABLE `detail_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wholesale_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guarantee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 1,
  `seo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level1_quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_quotations`
--

INSERT INTO `detail_quotations` (`id`, `link`, `tittle`, `link_product`, `unit_price`, `wholesale_price`, `guarantee`, `display`, `seo_id`, `level1_quotation_id`, `number`) VALUES
(1, 'lcd-22-vsp-v2204ht', 'LCD 22\'\' VSP V2204HT', 'lcd-22\'\'-vsp-v2204ht', '1.530.000đ', '1.530.000đ', '36 THÁNG', 1, 1, 3, 1),
(2, 'lcd-vsp-22inch-v2205h-full-vien-chinh-hang-75hz', 'LCD VSP 22inch V2205H Full Viền chính Hãng 75Hz', 'lcd-vsp-22inch-v2205h-full-vien-chinh-hang-75hz', '1.500.000đ', '1.500.000đ', '24 Tháng', 1, 2, 3, 2),
(3, 'lcd-22-vsp-2203h-chinh-hang', 'LCD 22\" VSP 2203h Chính Hãng', 'lcd-22-vsp-2203h-chinh-hang', '1.440.000đ', '1.440.000đ', '24 THÁNG', 1, 14, 3, 1),
(4, 'lcd-vsp-v2407s-full-vien-chinh-hang-75hz', 'LCD VSP V2407S Full Viền Chính Hãng 75Hz', 'lcs-vsp-v2407s-full-vien-chinh-hang-75hz', '1.800.000đ', '1.800.000đ', '24 Tháng', 1, 10, 3, 1),
(5, NULL, 'LCD VSP ESPORT GAMING FHD 24INCH - VG247S-165Hz', 'lcd-vsp-esport-gaming-fhd-24inch-vg247s-165hz', '2.440.000đ', '2.440.000đ', '24 THÁNG', 1, 3, 3, 5),
(6, 'lcd-24-vsp-ip2407sg-chinh-hang-100hz', 'LCD 24\'\' VSP IP2407SG Chính hãng 100Hz', 'lcd-24\"-vsp-ip2407sg-chinh-hang-100hz', '1.920.000đ', '1.920.000đ', '36 THÁNG', 1, 4, 3, 1),
(7, NULL, 'LCD 27\'\' VSP IP2706S Chính hãng IPS - VGA, HDMI, 1920x1080, 100Hz', 'lcd-27\"-vsp-ip2706s-chinh-hang-ips-vga-hdmi-1920x1080-100hz', '2.550.000đ', '2.550.000đ', '36 THÁNG', 1, 5, 3, 7),
(8, NULL, 'SSD VSP TECH 512G	', 'ssd-vsp-tech-512G', '610.000đ', '610.000đ	', '36 THÁNG\r\n', 1, 1, 4, 8),
(9, NULL, 'SSD VSP TECH 256G Hôp nhôm', 'ssd-vsp-tech-256g-hop-nhom', '370.000đ	', '370.000đ	', '36 THÁNG\r\n', 1, 7, 4, 9),
(10, NULL, 'SSD VSP TECH 256G Hộp nhựa', 'ssd-vsp-tech-256g-hop-nhua', '360.000đ', '360.000đ', '36 THÁNG', 1, 18, 4, 10),
(11, NULL, 'SSD 240G VSPTECH 860QVE	', 'ssd-240g-vsptech-860qve', '340.000đ', '340.000đ', '36 THÁNG\r\n', 1, 28, 4, 11),
(12, NULL, 'SSD VSP TECH 128G Hộp nhựa', 'ssd-vsp-tech-128g-hop-nhua', '240.000đ', '240.000đ', '36 THÁNG', 1, 1, 4, 12),
(13, NULL, 'SSD VSP TECH 128G Hộp nhôm	', 'ssd-csp-tech-128g-hop-nhom', '240.000đ	', '240.000đ	', '36 THÁNG\r\n', 1, 4, 4, 13),
(14, NULL, 'SSD OSCOO 256GB M.2 2280	', 'ssd-oscoo-256gb-m2-2280', '380.000đ	', '380.000đ	', '36 THÁNG\r\n', 1, 1, 4, 14),
(15, NULL, 'SSD VSP NVMe - PCIe N-256Gb	', 'ssd-vsp-nvme-pcie-n-256gb', '440.000đ', '440.000đ', '36 THÁNG\r\n', 1, 4, 4, 15),
(16, NULL, 'SSD 240G KINGTON SUV500-CHÍNH HÃNG	', 'ssd-240g-kington-suv500-chinh-hang', '380.000đ	', '380.000đ	', '12THÁNG\r\n', 1, 4, 4, 16),
(17, NULL, 'SSD 120G KINGTON	', 'ssd-120-kington', '260.000đ', '260.000đ', '36 THÁNG\r\n', 1, 1, 4, 17),
(18, NULL, 'SSD Sandisk X300 128GB 2.5 Inch sata	', 'ssd-sandisk-x300-128gb-25-inch-sata', '240.000đ', '240.000đ', '36 THÁNG\r\n', 1, 27, 4, 18),
(19, NULL, 'SSD Xstar 128GB	', 'ssd-xstar-128gb', '260.000đ	', '260.000đ	', '36 THÁNG\r\n', 1, 4, 4, 19),
(20, NULL, 'RAM Laptop DDR4 8G Bus 2666 X-STAR	', 'ram-laptop-ddr4', '390.000đ	', '390.000đ	', '36 THÁNG\r\n', 1, 1, 5, 20),
(21, NULL, 'RAM DDR4 PC 16G/2400 HYNIX/SAMSUNG/MICRON/KINGSTON... Tháo máy bộ (Box)	', 'ram-ddr4-pc-16g-2400-hynic-samsung-micron-kingston', '600.000đ', '600.000đ', '36 Tháng\r\n', 1, 1, 5, 21),
(22, NULL, 'RAM Kingston DDR4 PC 8Gb 2666 (Tản nhiệt) Chính Hãng	', 'ram-kingston-ddr4-pc-8gb-2666', '360.000đ', '360.000đ', '36 Tháng\r\n', 1, 15, 5, 22),
(23, NULL, 'Ram PC Kingston 8GB DDR3 Bus 1600Mhz', 'ram-pc-kingston-8gb-ddr3-bus-1600mhz', '190.000đ', '190.000đ', '36 THÁNG', 1, 1, 5, 23),
(24, NULL, 'Mainboard GIGA H310M-DS2V', 'mainboard-giga0h310m-ds2v', '1.170.000đ', '1.170.000đ', '36 Tháng', 1, 1, 6, 24),
(25, NULL, 'Mainboard SK 1151v1 GIGABYTE H110M-DS2 Box RENEW', 'mainboard-sk-1151v11-gigabyte-h110m-ds2-box-renew', '840.000đ', '840.000đ', '36 THÁNG', 1, 1, 6, 25),
(26, NULL, 'Mainboard SK 1150 GIGABYTE H81M-DS2 Box RENEW', 'mainboard-sk-1150-gigabyte-h81m-ds2-box-renew', '740.000đ', '740.000đ', '36 THÁNG', 1, 1, 6, 26),
(28, NULL, 'HDD 4T WD PURPLER CHÍNH HÃNG	', 'hđ-4t-wd-purpler-chinh-hang', '1.250.000đ', '1.250.000đ', '24 THÁNG\r\n', 1, 1, 7, 27),
(29, NULL, 'HDD WD PC 2T PURPLER Chính hãng	', 'HDD-WD-PC-2T-PURPLER-Chinh-hang	', '730.000đ', '730.000đ', '24 THÁNG\r\n', 1, 11, 7, 28),
(30, NULL, 'HDD PC SEAGATE 1T SkyHawk Chính hãng (5900 RPM)	', 'HDD-PC-SEAGATE-1T-SkyHawk-Chinh-hang-5900-RPM	', '490.000đ', '490.000đ', '24 THÁNG\r\n', 1, 11, 7, 29),
(31, NULL, 'HDD PC SEAGATE 500G NEW (Không giờ chạy)	', 'HDD-PC-SEAGATE-500G-NEW	', '170.000đ	', '170.000đ	', '24 THÁNG\r\n', 1, 11, 7, 0),
(32, NULL, 'HDD PC WD 500G GREEN 2N	', 'HDD-PC-WD-500G-GREEN-2N	', '170.000đ	', '170.000đ	', '24 THÁNG\r\n', 1, 11, 7, 0),
(33, NULL, 'HDD PC WD 320G GREEN 1N	', 'HDD-PC-WD-320G-GREEN-1N	', '140.000đ	', '140.000đ	', '12 THÁNG\r\n', 1, 11, 7, 0),
(34, NULL, 'HDD 250G SEAGATE MỎNG 24 THÁNG	', 'HDD-250G-SEAGATE-MONG-24-THANG', '120.000đ	', '115.000đ', '24 THÁNG\r\n', 1, 11, 7, 0),
(35, NULL, 'HDD 160G SEAGATE	', 'hdd-160g-seagate', '70.000đ	', '70.000đ	', '12 THÁNG\r\n', 1, 11, 7, 0),
(36, NULL, 'Case AAP H391 Black	', 'case-aap-h391-black', '170.000đ', '170.000đ', 'Test', 1, 12, 8, 0),
(37, NULL, 'CASE  VSP 28XX', 'case-vsp-28xx', '175.000đ', '175.000đ', 'TEST', 1, 11, 8, 0),
(38, NULL, 'CASE VISION 37XX', 'case-vision-37xx', '195.000đ', '195.000đ', 'TEST', 1, 11, 8, 0),
(39, NULL, 'CASE VISION KB08 Đen Kính Cường Lực', 'case-vision-kb08-den-kinh-cuong-luc', '390.000đ', '390.000đ', 'TEST', 1, 11, 8, 0),
(40, NULL, 'CASE VISION KB08 Trắng Kính Cường Lực', 'case-vision-kb08-trang-kinh-cuong-luc', '410.000đ', '410.000đ', '	 12 THÁNG', 1, 11, 8, 0),
(41, NULL, 'CASE VSP V202', 'case-vsp-v202', '310.000đ', '310.000đ', 'TEST', 1, 11, 8, 0),
(42, NULL, 'CASE VSP V211', 'case-vsp-v211', '320.000đ', '320.000đ', 'TEST', 1, 11, 8, 0),
(43, NULL, 'CASE VSB KA 220 KÍNH CƯỜNG LỰC', 'case-vsb-ka-220-kinh-cuong-luc', '430.000đ', '430.000đ', 'TEST', 1, 11, 8, 0),
(44, NULL, 'Case VSP T510 PINK (Hồng)', 'case-vsp-t510-pink', '620.000đ', '620.000đ', 'TEST', 1, 11, 8, 0),
(45, NULL, 'CASE VSB KB 06 KÍNH CƯỜNG LỰC', 'case-vsb-kb-06-kinh-cuong-luc', '440.000đ', '440.000đ', '', 1, 11, 8, 0),
(46, NULL, 'CASE VSP KA 280 KÍNH CƯỜNG LỰC', 'case-vsp-ka-280-kinh-cuong-luc', '430.000đ', '425.000đ', 'TEST', 1, 11, 8, 0),
(47, NULL, 'CASE VSP V3 607 KÍNH CƯỜNG LỰC', 'case-vsp-v3-607-kinh-cuong-luc', '430.000đ', '430.000đ', 'TEST', 1, 11, 8, 0),
(48, NULL, 'CASE VSB KA 240 KÍNH CƯỜNG LỰC', 'case-vsb-ka-240-kinh-cuong-luc', '440.000đ', '440.000đ', 'TEST', 1, 11, 8, 0),
(49, NULL, 'Case VSP LED Gaming OMG-II ATX - Hồng - Xanh', 'case-vsp-led-gaming-omg-ii-atx-hong-xanh', '590.000đ', '570.000đ', 'TEST', 1, 11, 8, 0),
(50, NULL, 'Case VSP LED Gaming OMG-II ATX - Đen', 'case-vsp-led-gaming-omg-ii-atx-den', '530.000đ', '530.000đ', 'TEST', 1, 11, 8, 0),
(51, NULL, 'CASE VSP GAME OMG E-ATX-Đỏ', 'case-vsp-game-omg-e-atx-do', '655.000đ', '655.000đ', 'TEST', 1, 11, 8, 0),
(52, NULL, 'CASE VSP 400G1', 'case-vsp-400g1', '285.000đ', '285.000đ', 'TEST', 1, 11, 8, 0),
(53, NULL, 'FAN 12 ĐÈN LED MỘT MÀU XANH DƯƠNG', 'fan-12-den-led-mot-mau-xanh-duong', '50.000đ', '45.000đ', 'BAO TEST', 1, 11, 10, 0),
(54, NULL, 'Fan Case VSP V202B LED', 'fan-case-vsp-v202b-led', '80.000đ', '80.000đ', 'BAO TEST\r\n', 1, 11, 10, 0),
(55, NULL, 'Bộ Kit 3 Fan VSP V309C LED RGB', 'bo-kit-3-fan-vsp-v309c-led-rgb', '340.000đ', '340.000đ', '03 THÁNG', 1, 11, 10, 0),
(56, NULL, 'Bộ kit 3 Fan Led RGB + Hub COOLMOON', 'bo-kit-3-fan-lè-rgb-hub-coolmoom', '350.000đ', '345.000đ', '03 THÁNG', 1, 11, 10, 0),
(57, NULL, 'WEBCAM 1080P', 'webcam-1080p', '260.000đ', '255.000đ', '03 THÁNG', 1, 11, 10, 0),
(58, NULL, 'Tản nhiệt khí CPU 2 ống đồng VSP T200i 1 fan 12cm RGB Đa năng', 'tan-nhiet-khi-cpu-2-ong-dong-vsp-t200i-1-fan-12cm-rgb-da-nang', '180.000đ', '175.000đ', '03 THÁNG', 1, 11, 10, 0),
(59, NULL, 'Keo tản nhiệt ống chích LỚN xám xịn', 'keo-tan-nhiet-ong-chich-lon-xam-xin', '20.000đ', '20.000đ', 'BAO TEST', 1, 11, 10, 0),
(60, NULL, 'Tản Nhiệt CPU VSP 215 Led RGB', 'tan-nhiet-cpu-vsp-215-led-rgb', '270.000đ', '270.000đ', '12 THÁNG', 1, 11, 10, 0),
(61, NULL, 'Nguồn VSPTECH - iForgame AK700 80PLUS BRONZE', 'nguon-vsptech-iforgame-ak700-80plus-bronze', '850.000đ', '850.000đ', '24 THÁNG', 1, 11, 9, 0),
(62, NULL, 'Nguồn VSP Elite V650W', 'nguon-vsp-elite-v650w', '800.000đ', '800.000đ', '24 Tháng', 1, 11, 9, 0),
(63, NULL, 'Nguồn  VSPTECH - iForgame AK600 80PLUS BRONZE', 'nguon-vsp-tech-iforgame-ak600-80plus-bronze', '770.000đ', '770.000đ', '24 THÁNG', 1, 11, 9, 0),
(64, NULL, 'Nguồn VSP Elite V550W', 'nguon-vsp-elite-v550w', '670.000đ', '670.000đ', '24 THÁNG', 1, 1, 9, 0),
(65, NULL, 'Nguồn VSP Delta P550W', 'nguon-vsp-delta-p550w', '670.000đ', '670.000đ', '24 Tháng', 1, 1, 9, 0),
(66, NULL, 'Nguồn VSP Delta P500W | 500W, ATX	', 'nguon-vsp-delta-p500w-500w-atx', '540.000đ', '540.000đ', '24 Tháng\r\n', 1, 2, 9, 0),
(67, NULL, 'Nguồn VSPTECH eSPORT GAMING LED VE500W', 'nguon-vsptech-esport-gaming-led-ve500w', '540.000đ', '540.000đ', '24 THÁNG', 1, 11, 9, 0),
(68, NULL, 'Nguồn VSP Delta P450W', 'nguon-vsp-delta-p450w', '470.000đ', '470.000đ', '24 Tháng', 1, 11, 9, 0),
(69, NULL, 'Nguồn VSP ATX 420W CÔNG XUẤT THỰC', 'nguon-vsp-atx-420w-cong-xuat-thuc', '370.000đ', '370.000đ', '24 Tháng', 1, 11, 9, 0),
(70, NULL, 'Nguồn máy tính VSP 550W', 'nguon-may-tinh-vsp-550w', '190.000đ', '190.000đ', '24 THÁNG', 1, 11, 9, 0),
(71, NULL, 'Nguồn máy tính VSP ATX  350W CÔNG XUẤT THỰC', 'nguon-may-tinh-vsp-atx-350w-cong-xuat-thuc', '320.000đ', '320.000đ', '24 Tháng', 1, 11, 9, 0),
(72, NULL, 'Nguồn máy tính VSP 750W', 'nguon-may-tinh-vsp-750w', '230.000đ', '230.000đ', '24 THÁNG', 1, 11, 9, 0),
(73, NULL, 'KEY COMBO BOSSTON G837 LED 7 MÀU', 'key-combo-bosston-g837-led-7-mau', '190.000đ', '185.000đ', '12 Tháng', 1, 11, 12, 0),
(74, NULL, 'KEY COMBO BOSSTON KHÔNG DÂY WS800', 'key-combo-bosston-khong-day-ws800', '190.000đ', '190.000đ', '12 Tháng', 1, 11, 12, 0),
(75, NULL, 'KEY VISION GAME G9', 'key-vision-game-g9', '95.000đ', '95.000đ', '12 THÁNG', 1, 11, 12, 0),
(76, NULL, 'KEY VISION GAMING KL-95 CƠ', 'key-vision-gaming-kl-95-co', '380.000đ', '380.000đ', '12 Tháng', 1, 11, 12, 0),
(77, NULL, 'Key Bosston X19 Đèn Led', 'key-bosston-x19-den-led', '130.000đ', '130.000đ', '12 Tháng', 1, 11, 12, 0),
(78, NULL, 'KEY VISION GAME G7', 'key-vision-game-g7', '85.000đ', '85.000đ', '12 Tháng', 1, 11, 12, 0),
(79, NULL, 'KEY VSP GAMING VM01 CƠ', 'key-vsp-gaming-vm01-co', '360.000đ', '360.000đ', '12 Tháng', 1, 11, 12, 0),
(80, NULL, 'KEY (COMPO PHÍM CHUỘT) MITSUMI KFK-EA5XT CHÍNH HÃNG', 'key-combo-phim-chuot-mitsumu-kfk-ea5xt-chinh-hang', '190.000đ', '190.000đ', '12 Tháng', 1, 11, 12, 0),
(81, NULL, 'MOUSE KHÔNG DÂY Q8', 'mouse-khong-day-08', '120.000đ', '115.000đ', '12 Tháng', 1, 11, 13, 0),
(82, NULL, 'MOUSE GENIUS USB/110X/120', 'mouse-genius-usb-110x-120', '75.000đ', '75.000đ', '12 Tháng', 1, 11, 13, 0),
(83, NULL, 'MOUSE Vision G8', 'mouse-vision-g8', '55.000đ', '55.000đ', '12 Tháng', 1, 11, 13, 0),
(84, NULL, 'MOUSE GAME G8 1610 USB LED ĐEN', 'mouse-game-g8-1610-use-led-den', '90.000đ', '90.000đ', '12 Tháng', 1, 11, 13, 0),
(85, NULL, 'MOUSE GAME NEWMEN G7', 'mouse-game-newmen-g7', '180.000đ', '180.000đ', '12 Tháng', 1, 11, 13, 0),
(86, NULL, 'Mouse LOGITECH G302 Gaming USB', 'mouse-logitech-g302-gaming-usb', '145.000đ', '145.000đ', '12 Tháng', 1, 11, 13, 0),
(87, NULL, 'MOUSE GAME BOSSTON GM100', 'mouse-game-bosston-gm100', '110.000đ', '110.000đ', '12 Tháng', 1, 11, 13, 0),
(88, NULL, 'Mouse Gaming Bosston M710 Đèn Led RGB', 'mouse-gaming-bosston-m710-den-led-rgb', '170.000đ', '170.000đ', '12 Tháng', 1, 11, 13, 0),
(89, NULL, 'Mouse gaming Bosston M750 USB2.0', 'mouse-gaming-bosston-m750-usb2.0', '160.000đ', '160.000đ', '12 THáng', 1, 11, 13, 0),
(90, NULL, 'Chuột Bosston M730 LED Gaming - màu ngẫu nhiên', 'chuot-bosston-m730-led-gaming-mau-ngau-nhien', '150.000đ', '150.000đ', '12 Tháng', 1, 11, 13, 0),
(91, NULL, 'TAI NGHE RUN MUS K8 LED GAMING', 'tai-nghe-run-mus-k8-led-gaming', '260.000đ', '260.000đ', '06 Tháng', 1, 11, 14, 0),
(92, NULL, 'Tai Nghe HP GAMING HEADSET H120G', 'tai-nghe-hp-gaming-headset-h120g', '290.000đ', '290.000đ', '06 Tháng', 1, 11, 14, 0),
(93, NULL, 'Tai Nghe EXAVP CAO CẤP GAMING/DJ N61 LED FULL BOX', 'tai-nghe-exavp-cao-cap-gaming-dj-n61-led-full-box', '220.000đ', '220.000đ', '06 Tháng', 1, 11, 14, 0),
(94, NULL, 'Tai Nghe VSP EXAVP CAO CẤP Gaming / DJ EX 220 LED FULL BOX', 'tai-nghe-vsp-exavp-cao-cap-gaming-dj-ex-220-led-full-box', '170.000đ', '170.000đ', '06 Tháng', 1, 11, 14, 0),
(95, NULL, 'Tai nghe game thủ có dây HP BOSSTON A1', 'tai-nghe-game-thu-co-day-hp-bosston-a1', '210.000đ', '210.000đ', '06 Tháng', 1, 11, 14, 0),
(96, NULL, 'Tai Nghe Có Dây Lenovo G30', 'tai-nghe-co-day-lenovo-g30', '280.000đ', '280.000đ', '06 Tháng', 1, 11, 14, 0),
(97, NULL, 'Loa Vi Tính Bluetooth Mini Kisonli TM8000A', 'loa-vi-tính-bluetooth-mini-kisonli-TM8000A', '400.000đ', '400.000đ', '12 Tháng', 1, 11, 15, 0),
(98, NULL, 'Loa vi tính 2.0 mini Kisonli L-1040 led RGB', 'loa-vi-tinh-2-0-mini-kisonli-l-1040-led-rgb', '125.000đ', '125.000đ', '12 Tháng', 1, 11, 15, 0),
(99, NULL, 'Loa Di Động Kisonli 2.0 X9', 'loa-di-dong-kisonli-2-0-x9', '220.000đ', '220.000đ', '12 Tháng', 1, 1, 15, 0),
(100, NULL, 'LOA DI ĐỘNG - X8', 'loa-di-dong-x8', '220.000đ', '220.000đ', '12 Tháng', 1, 1, 15, 0),
(101, NULL, 'Loa vi tính 2.0 Kisonli X7', 'loa-vi-tinh-2-0-kisonli-x7', '145.000đ', '145.000đ', '12 Tháng', 1, 1, 15, 0),
(102, NULL, 'Loa Vi Tính Bosston T1800', 'loa-vi-tinh-bosston-t1800', '590.000đ', '590.000đ', '12 Tháng', 1, 1, 15, 0),
(103, NULL, 'Loa vi tính Bosston bluetooth 2.1 T1850-BT', 'loa-vi-tinh-bosston-bluetooth-2-1-t1850-bt', '550.000đ', '550.000đ', '12 Tháng', 1, 1, 15, 0),
(104, NULL, 'Loa vi tính 2.0 Kisonli I-510', 'loa-vi-tinh-2-0-kisonli-i-510', '155.000đ', '155.000đ', '12 Tháng', 1, 1, 15, 0),
(105, NULL, 'Loa vi tính Bosston bluetooth 2.1 T1900-BT', 'loa-vi-tinh-bosston-bluetooth-2-1-t1900-bt', '550.000đ', '550.000đ', '12 Tháng', 1, 11, 15, 0),
(106, NULL, 'Loa vi tính Kisonli 2.0 L-8080', 'loa-vi-tinh-kisonli-2-0-l-8080', '145.000đ', '145.000đ', '12 Tháng', 1, 11, 15, 0),
(107, NULL, 'Loa cặp vi tính Kisonli L-3030', 'loa-cap-vi-tinh-kisonli-l-3030', '136.000đ', '136.000đ', '12 Tháng', 1, 11, 15, 0),
(108, NULL, 'Loa Kisonli KS-05', 'loa-kisonli-ks-05', '135.000đ', '135.000đ', '12 Tháng', 1, 11, 15, 0),
(109, NULL, 'Loa Di Động Bosston Z220 Led RGB', 'loa-di-dong-bosston-z220-led-rgb', '225.000đ', '225.000đ', '12 Tháng', 1, 11, 15, 0),
(110, NULL, 'Loa 2.0 Kisonli L-2020 LED RGB', 'loa-2-0-kisonli-l-2020-led-rgb', '140.000đ', '140.000đ', '12 Tháng', 1, 11, 15, 0),
(111, NULL, 'Loa vi tính 2.0 Kisonli K100', 'loa-vi-tinh-2-0-kisonli-k100', '130.000', '130.000', '12 Tháng', 1, 11, 15, 0),
(112, NULL, 'Loa vi tính 2.0 Kisonli A-909', 'loa-vi-tinh-2-0-kisonli-a-909', '120.000đ', '120.000đ', '12 tháng\r\n', 1, 33, 15, 0),
(113, NULL, 'Loa 2.0 Ruizu D09', 'loa-2-0-ruizu-d09', '145.000đ', '145.000đ', '12 Tháng', 1, 7, 15, 0),
(114, NULL, 'Loa Di Động Ruizu RS-320 2.0', 'loa-di-dong-ruizu-rs-320-2-0', '140.000đ', '140.000đ', '12 Tháng', 1, 7, 15, 0),
(115, NULL, 'Loa Vi Tính 2.0 Kisonli L-1020', 'loa-vi-tinh-2-0-kisonli', '185.000đ', '185.000đ', '12 Tháng', 1, 7, NULL, 0),
(116, NULL, 'Loa Vi Tính 2.0 Kisonli L-1020', 'loa-vi-tinh-2-0-kisonli-l-10120', '185.000đ', '185.000đ', '12 Tháng', 1, 7, 15, 0),
(117, NULL, 'Loa Vi Tính Kisonli L-1010 2.0', 'loa-vi-tinh-kisonli-l-1010-2-0', '155.000đ', '155.000đ', '12 Tháng', 1, 29, 15, 0),
(118, NULL, 'LOA VI TÍNH 2.0 kISONLI T-013', 'loa-vi-tinh-2-0-kisonli-t-013', '195.000đ', '195.000đ', '12 Tháng', 1, 29, 15, 0),
(119, NULL, 'Loa vi tính 2.0 Kisonli T-012', 'loa-vi-tinh-2-0-kisonli-t-012', '195.000đ', '195.000đ', '12 Tháng', 1, 29, 15, 0),
(120, NULL, 'Loa Kisonli T-008A 2.0', 'loa-kisonli-t-008a-2-0', '185.000đ', '185.000đ', '12 Tháng', 1, 30, 15, 0),
(121, NULL, 'Loa Bluetooth Kisonli TM-4000U', 'loa-bluetooth-kisonli-tm-400u', '360.000đ', '360.000đ', '12 Tháng', 1, 30, 15, 0),
(122, NULL, 'LOA KISONLI L-9090', 'loa-kisonli-l-9090', '150.000đ', '150.000đ', '12 Tháng', 1, 30, 15, 0),
(123, NULL, 'Loa 2.0 kisonli AC-9001', 'loa-2-0-kisonli-ac-9001', '225.000đ', '225.000đ', '12 Tháng', 1, 30, 15, 0),
(124, NULL, 'LOA BOSSTON Z203BT', 'loa-bosston-z203bt', '280.000đ', '280.000đ', '12 Tháng', 1, 30, 15, 0),
(125, NULL, 'Loa Bluetooth Kisonli TM-1000U', 'loa-bluetooth-kisonli-tm-1000u', '420.000đ', '420.000đ', '12 Tháng', 1, 30, 15, 0),
(126, NULL, 'Loa Kisonli i-600', 'loa-kisonli-i-600', '175.000đ', '175.000đ', '12 Tháng', 1, 30, 15, 0),
(127, NULL, 'LOA  NANSIN  630S', 'loa-nansin-630s', '220.000đ', '215.000đ', '12 Tháng', 1, 30, 15, 0),
(128, NULL, 'Loa Vi Tính Kisonli K500 2.0', 'loa-vi-tinh-kisonli-k500-2-0', '160.000đ', '160.000đ', '12 Tháng', 1, 29, 15, 0),
(129, NULL, 'LOA 2.0 RUIZU - RA 007', 'loa-2-0-ruizu-ra-007', '250.000đ', '250.000đ', '12 THÁNG\r\n', 1, 29, 15, 0),
(130, NULL, 'LOA VI TÍNH 2.1 KISONLI U-3000BT', 'loa-vi-tinh-2-1-kisonli-u-3000bt', '220.000đ', '220.000đ', '12 Tháng', 1, 29, 15, 0),
(131, NULL, 'LOA NANSIN SV-3000', 'loa-nansin-sv-3000', '385.000đ', '380.000đ', '12 Tháng', 1, 30, 15, 0),
(132, NULL, 'Loa Vi Tính Kisonli TM-6000U', 'loa-vi-tinh-kisonli-tm-6000u', '340.000đ', '340.000đ', '12 Tháng', 1, 29, 15, 0),
(133, NULL, 'LOA BLUETOOTH XY- 25	', 'loa-bluetooth-xy-25', '300.000đ', '290.000đ', '12 THÁNG\r\n', 1, 29, 15, 0),
(134, NULL, 'Loa Vi Tính 2.0 Kisonli V310', 'loa-vi-tinh-2-0-kisonli-v310', '85.000đ', '85.000đ', '12 Tháng', 1, 29, 15, 0),
(135, NULL, 'Loa vi tính 2.1 Kisonli U-2900', 'loa-vi-tinh-2-1-kisonli-u2900', '170.000đ', '170.000đ', '12 Tháng', 1, 29, 15, 0),
(136, NULL, 'Loa Vi Tính Kisonli A606', 'loa-vi-tinh-kisonli-a606', '125.000đ', '125.000đ', '12 Tháng', 1, 29, 15, 0),
(137, NULL, 'Loa Kisonli 2.0 A-101S', 'loa-kisonli-2-0-a-101s', '145.000đ', '145.000đ', '12 Tháng', 1, 30, 15, 0),
(138, NULL, 'Loa vi tính 2.0 Kisonli A-707', 'loa-vi-tinh-2-0-kisonli-a-707', '115.000đ', '115.000đ', '12 Tháng', 1, 30, 15, 0),
(139, NULL, 'Loa vi tính 2.0 Kisonli S999', 'loa-vi-tinh-2-0-kisonli-s999', '115.000đ', '115.000đ', '12 Tháng', 1, 30, 15, 0),
(140, NULL, 'Loa vi tính 2.0 Kisonli V360', 'loa-vi-tinh-2-0-kisonli-v360', '95.000đ', '95.000đ', '12 Tháng', 1, 30, 15, 0),
(141, NULL, 'Loa Vi Tính 2.0 Kisonli V410', 'loa-vi-tinh-2-0-kisonli-v410', '85.000đ', '85.000đ', '12 Tháng', 1, 29, 15, 0),
(142, NULL, 'Phát Wifi PIX-LINKLV-WR08', 'phat-wifi-pix-linklv-wr08', '295.000đ', '295.000đ', '12 Tháng', 1, 1, 16, 0),
(143, NULL, 'TP-LINK - WR841N PHÁT HAI RÂU', 'tp-link-wr841n-phat-hai-rau', '295.000đ', '295.000đ', '12 Tháng', 1, 1, 16, 0),
(144, NULL, 'CARD THU WIFI TPLINK 751', 'card-thu-wifi-tplink-751', '180.000đ', '180.000đ', '12 Tháng', 1, 1, 16, 0),
(145, NULL, 'USB THU WIFI TPLINK 722', 'usb-thu-wifi-tplink-722', '180.000đ', '180.000đ', '12 Tháng', 1, 1, 16, 0),
(146, NULL, 'USB WiFi Wireless 11N', 'usb-wifi-wireless-11n', '70.000đ', '70.000đ', '12 Tháng', 1, 1, 16, 0),
(147, NULL, 'USB WiFi Wireless UW-300T', 'usb-wifi-wireless-uw-300t', '90.000đ', '90.000đ', '12 Tháng', 1, 1, 16, 0),
(148, NULL, 'CABLE SFTB CAT 5E VISION CHỐNG  NHIỄU', 'cable-sftb-cat-5e-vision-chong-nhieu', '720.000đ', '720.000đ', 'BAO TEST', 1, 1, 16, 0),
(149, NULL, 'Đầu Mạng VP-Link CAT5E Xuyên Thấu RJ45 (100pcs) - Hàng chính hãng', 'dau-mang0vp-link0cat5e-xuyen-thau-rj45', '100.000đ', '100.000đ', 'BAO TEST', 1, 1, 16, 0),
(150, NULL, 'CABLE  UTP 5E VISION DÂY MÀU CAM', 'cable-utp-5e-vision-day-mau-cam', '720.000đ', '720.000đ', 'BAO TEST', 1, 1, 16, 0),
(151, NULL, 'CABLE 6E VISION MÀU XANH DƯƠNG LÕI CHỬ THẬP', 'cable-6e-vision-mau-xanh-duong-loi-chu-thap', '490.000đ', '490.000đ', 'BAO TEST', 1, 1, 16, 0),
(152, NULL, 'CABLE SFTB 6E VISION CHỐNG NHIỄU 2 LỚP', 'cable-sftb-6e-vision-chong-nhieu-2-lop', '890.000đ', '890.000đ', 'BAO TEST', 1, 1, 16, 0),
(153, NULL, 'MAIN INTEL S1200 V3RP SK1150', 'main-intel-s1200-v3rp-sk1150', '600.000đ', '600.000đ', '03 THÁNG', 1, 3, 17, 0),
(154, NULL, 'MAIN INTEL S1200 V2 SK 1155', 'main-intel-s1200-v2-sk-1155', '400.000', '400.000', '03 THÁNG', 1, 3, 17, 0),
(155, NULL, 'DD3 8G/1333 KINGTON  ECC', 'dd3-8g-1333-kington-ecc', '400.000đ', '400.000đ', '03 Tháng', 1, 20, 17, 0),
(156, NULL, 'DD3 8G/1600 KINGTON  ECC', 'dd3-8g-1600-kington-ecc', '450.000đ', '450.000đ', '03 Tháng', 1, 20, 17, 0),
(157, NULL, 'HDD Western 1TB Black Chính Hãng', 'hdd-western-1tb-black-chinh-hang', '550.000đ', '550.000đ', '03 Tháng', 1, 9, 17, 0),
(159, NULL, 'SSD - 480G KINGTON SEVER\r\n', 'ssd-480g-kington-serve', '550.000đ\r\n', '550.000đ\r\n', '03 THÁNG\r\n', 1, 9, 17, 0),
(160, NULL, 'SSD KINGMAX 480G\r\n', 'ssd-kingmax-480g', '550.000đ\r\n', '550.000đ\r\n', '03 THÁNG\r\n', 1, 9, 17, 0),
(161, NULL, 'SSD - 240G - INTEL SEVER\r\n', 'ssd-240g-intel-serve', '350.000đ', '350.000đ', '03 Tháng', 1, 9, 17, 0),
(162, NULL, 'SSD INTEL - 120G SEVER\r\n', 'ssd-intel-120g-serve', '280.000đ', '280.000đ', '03 THÁNG\r\n', 1, 9, 17, 0),
(163, NULL, 'SSD KINGTON 120G SEVER\r\n', 'ssd-kington-120g-serve', '250.000đ', '250.000đ', '03 THÁNG\r\n', 1, 9, 17, 0),
(164, NULL, 'CASE SERVER ĐẸP\r\n', 'case-serve-dep', '200.000đ\r\n', '200.000đ\r\n', '03 THÁNG\r\n', 1, 1, 17, 0),
(165, NULL, 'NGUỒN 500W SEVER\r\n', 'nguon-500w-serve', '450.000đ\r\n', '450.000đ\r\n', '03 THÁNG\r\n', 1, 1, 17, 0),
(166, NULL, 'Máy Bộ Barebone HP Compaq 6200/8200/6300/8300 SFF\r\n', 'may-bo-barebone-hp-compaq-6200-8200-6300-8300-sff', '1.600.000đ\r\n', '1.600.000đ\r\n', '03 Tháng\r\n', 1, 1, 17, 0),
(167, NULL, 'MAIN GIGABYTE B365M-D2V CÒN BẢO HÀNH HÃNG 2 NĂM\r\n', 'main-gigabte-b365m-d2v-con-bao-hanh-hang-2-nam', '850.000đ\r\n', '850.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(168, NULL, 'MAIN MSI B360M PRO-VD (Chipset Intel B360/ Socket LGA1151/ VGA onboard) CÒN BẢO HÀNH HÃNG\r\n', 'main-msi-b360m-pro-vd', '780.000đ', '780.000đ', '03 THÁNG\r\n', 1, 16, 18, 0),
(169, NULL, 'MAIN GIGABYTE H310M DS2\r\n', 'main-gigabyte-h310m-ds2', '700.000đ\r\n', '700.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(170, NULL, 'MAIN GIGABYTE H310M S2V CÒN BẢO HÀNH HÃNG 2 NĂM\r\n', 'main-gigabyte-h310m-s2v-con-bao-hanh-hang-2-nam', '820.000đ\r\n', '820.000đ\r\n', '03 THÁNG\r\n', 1, 16, 18, 0),
(171, NULL, 'MAIN ASUS PRIME H310M-K\r\n', 'main-asus-prime-h310m-k', '670.000đ', '670.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(172, NULL, 'MAIN ASUS PRIME H310M-E R2.0 / CSM\r\n', 'main-asus-prime-h310m-e-r2-0-csm', '650.000đ', '650.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(173, NULL, 'MAIN ASUS PRIME H310M-D\r\n', 'main-asus-prime-h310m-d', '650.000đ\r\n', '650.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(174, NULL, 'MAIN COLORFULL Battle AXE C.B250M-HD V20\r\n', 'main-colorfull-battle-axe-c-b250m0hd0v20', '650.000đ', '650.000đ', '03 THÁNG\r\n', 1, 17, 18, 0),
(175, NULL, 'MAIN GIGABYTE H110M - DS2\r\n', 'main-gigabyte-h110m-ds2', '650.000đ', '650.000đ', '03 THÁNG\r\n', 1, 14, 18, 0),
(176, NULL, 'MAIN ASUS H110M-K\r\n', 'main-asus-h110m-k', '600.000đ\r\n', '600.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(177, NULL, 'MAIN ASUS H110M-D\r\n', 'main-asus-h110m-d', '600.000đ', '600.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(178, NULL, 'MAIN ASUS H110M-E\r\n', 'main-asus-h110m-e', '600.000đ\r\n', '600.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(179, NULL, 'MAIN COLORFULL H110M-D plus V22\r\n', 'main-colorffull-h110m-d-plus-v22', '550.000đ', '550.000đ', '03 THÁNG\r\n', 1, 17, 18, 0),
(180, NULL, 'MAIN MSI H110M PRO-VD PLUS\r\n', 'main-msi-h110m-pro-vd-plus', '550.000đ\r\n', '550.000đ\r\n', '03 THÁNG\r\n', 1, 16, 18, 0),
(181, NULL, 'MAIN ASROCK H110M-HDV\r\n', 'main-asrock-h110m-hdv', '550.000đ', '550.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(182, NULL, 'MAIN GIGABYTE-B85M-D3V\r\n', 'main-gigabyte-b85m-d3v', '700.000đ\r\n', '700.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(183, NULL, 'MAIN GIGABYTE H81 DS2 REV 3.0 CÒN BẢO HÀNH CHÍNH HÃNG\r\n', 'main-gigabyte0h81-ds2-rev-3-0-con-bao-hanh-chinh-hang', '550.000đ\r\n', '550.000đ\r\n', '03 tháng\r\n', 1, 14, 18, 0),
(184, NULL, 'MAIN GIGABYTE H81M-S2PV\r\n', 'main-gigabyte-h81m-s2pv', '550.000đ\r\n', '550.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(185, NULL, 'MAIN GIGABYTE H81M-DS2 REV 3.0\r\n', 'main-gigabyte-h81m-hs2-rev-3-0', '550.000đ\r\n', '550.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(186, NULL, 'MAIN GIGABYTE H81 DS2 ,REV 2.1\r\n', 'main-gigabyte-h81-ds2-rev-2-1', '550.000đ', '550.000đ', '03 THÁNG\r\n', 1, 14, 18, 0),
(187, NULL, 'MAIN ASUS H81M-D\r\n', 'main-asus-h81m-d', '500.000đ\r\n', '500.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(188, NULL, 'MAIN ASUS H81 M-K\r\n', 'main-asus-h81m-k', '500.000đ\r\n', '500.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(189, NULL, 'Mainboard MSI H81M-P33\r\n', 'main-msi-h81m-p33', '450.000đ', '450.000đ', '03 THÁNG\r\n', 1, 16, 18, 0),
(190, NULL, 'MAIN GIGABYTE B75M-HD3\r\n', 'main-gigabyte-b75m-hd3', '650.000đ\r\n', '650.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(191, NULL, 'MAIN ASUS B75M-A\r\n', 'main-asus-b75m-a', '600.000đ', '600.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(192, NULL, 'MAIN GIGABYTE H61 DS2, 5.0 CHÍNH HÃNG\r\n', 'main-gigabyte-h61-ds2-5-0-chinh-hang', '500.000đ', '500.000đ', '03 THÁNG\r\n', 1, 14, 18, 0),
(193, NULL, 'MAIN GIGABYTE H61 DS2, 3.0 - 4.0\r\n', 'main-gigabyte-h61-ds2-3-0-4-0', '500.000đ\r\n', '500.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(194, NULL, 'MAIN GIGABYTE H61 DS2. 2.2\r\n', 'main-gigabyte-h61-ds2-2-2', '450.000đ\r\n', '450.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(195, NULL, 'MAIN GIGABYTE H61 S2PV\r\n', 'main-gigabyte-h61-s2pv', '480.000đ', '480.000đ', '03 THÁNG\r\n', 1, 14, 18, 0),
(196, NULL, 'MAIN ASUS H61 M-K CHÍNH HÃNG\r\n', 'main-asus-h61-m-k-chinh-hang', '430.000đ\r\n', '430.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(197, NULL, 'MAIN ASUS P8H61 - M X\r\n', 'main-asus-p8h61-m-x', '430.000đ\r\n', '430.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(198, NULL, 'MAIN INTEL H61 CHÍNH HÃNG\r\n', 'main-intel-h61-chinh-hang', '400.000đ', '400.000đ', '03 THÁNG\r\n', 1, 3, 18, 0),
(199, NULL, 'MAIN ASUS P8H61-MLX3R2.O\r\n', 'main-asus-p8h61-mlx3e2-0', '430.000đ\r\n', '430.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(200, NULL, 'MAIN FOXCONN H61\r\n', 'main-foxconn-h61', '370.000đ\r\n', '370.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(204, NULL, 'GIGABYTE G41 DD3\r\n', 'gigabyte-g1-dd3', '370.000đ\r\n', '370.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(205, NULL, 'GIGA BYTE G41 DD2\r\n', 'gigabyte-g41-dd2', '320.000đ\r\n', '320.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(206, NULL, 'MAIN GIGABYTE P41 DD3\r\n', 'main-gigabyte-p41-dd3', '270.000đ', '270.000đ', '03 THÁNG\r\n', 1, 15, 18, 0),
(207, NULL, 'MAIN ASUS G41 DD3\r\n', 'main-asus-g41-dd3', '320.000đ\r\n', '320.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(208, NULL, 'MAIN ASUS G41 DD2\r\n', 'main-asus-g41-dd2', '300.000đ\r\n', '300.000đ\r\n', '03 THÁNG\r\n', 1, 15, 18, 0),
(209, NULL, 'MAIN GIGABYTE G31\r\n', 'main-gigabyte-g31', '270.000đ\r\n', '270.000đ\r\n', '03 THÁNG\r\n', 1, 14, 18, 0),
(210, NULL, 'MAIN ASUS G31\r\n', 'main-asus-g31', '270.000đ', '270.000đ', '03 THÁNG\r\n', 1, 15, NULL, 0),
(211, NULL, 'RAM Laptop DDR4 8GB Bus 2666\r\n', 'ram-laptop-ddr4-8gb-bus-2666', '370.000đ\r\n', '370.000đ\r\n', '03 tháng\r\n', 1, 21, 19, 0),
(212, NULL, 'RAM Laptop DDR4 4GB Bus 2666\r\n', 'ram-latop-ddr4-4gb-bus-2666', '250.000đ', '250.000đ', '03 tháng\r\n', 1, 21, 19, 0),
(213, NULL, 'RAM Laptop DDR3 8GB Bus 1600\r\n', 'ram-laptop-ddr3-8gb-bus-1600', '360.000đ\r\n', '360.000đ\r\n', '03 tháng\r\n', 1, 21, 19, 0),
(214, NULL, 'Ram Laptop DDR3L Hynix 4GB Bus 1600\r\n', 'ram-laptop-ddr3l-hynix-4gb-bus-1600', '220.000đ\r\n', '220.000đ\r\n', '03 THÁNG\r\n', 1, 20, 19, 0),
(215, NULL, 'RAM Laptop DDR3 2GB Bus 1333\r\n', 'ram-laptop-ddr3-2gb-bus-1333', '110.000đ', '110.000đ', '03 THÁNG\r\n', 1, 20, 19, 0),
(216, NULL, 'HDD 2.5\' 320g laptop\r\n', 'hdd-2-5-320g-laptop', '200.000đ', '200.000đ', '03 tháng\r\n', 1, 9, 19, 0),
(217, NULL, 'HDD 2.5\' 500g laptop\r\n', 'hdd-2-5-500g-laptop', '230.000đ', '230.000đ', '03 tháng\r\n', 1, 9, 19, 0),
(218, NULL, 'HDD 2.5\' 1T laptop\r\n', 'hdd-2-5-1t-laptop', '500.000đ\r\n', '500.000đ\r\n', '03 tháng\r\n', 1, 9, 19, 0),
(219, NULL, 'RAM Team Elite DDR4 8Gb 2666 (Tản nhiệt) CÒN BẢO HÀNH HÃNG\n', 'ram-team-elite-dd4r-8gb02666-tan-nhiet-con-bao-hanh-hang', '250.000đ	', '250.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(220, NULL, 'RAM DDR4 PC 8G/2400 GSKILL Tản nhiệt\r\n', 'ram-ddr4-pc-8g-2400-gskill-tan-nhiet', '\n200.000đ', '200.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(221, NULL, 'Ram 8gb/2400 PC Kingmax DDR4\r\n', 'ram-8gb-2400-pc-kingmax-ddr4', '200.000đ', '200.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(222, NULL, 'RAM Team Elite DDR4 8Gb 2400 (Tản nhiệt)\r\n', 'ram-team-elite-ddr4-8gb-2400', '200.000đ', '200.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(223, NULL, 'RAM Kingston 8Gb DDR4-2400\r\n', 'ram-kington-8gb-ddr4-2400', '200.000đ', '200.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(224, NULL, 'RAM desktop G.SKILL Aegis F4-2666C19S-8GIS (1x8GB) DDR4 2666MHz\r\n', 'ram-desktop-g-skill-aegis-f4-2666c195-8gis', '200.000đ', '200.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(225, NULL, 'RAM DATO PC D4 8GB PC 2400\r\n', 'ram-dato-pc-d4-8gb-2400', '200.000đ', '200.000đ', '3 tháng\r\n', 1, 21, 20, 0),
(226, NULL, 'RAM GSkill 4GB DDR4 Bus 2400\r\n', 'ram-gskill-4gb-ddr4-bus-2400', '150.000đ', '150.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(227, NULL, 'RAM desktop KINGMAX (1x4GB) DDR4 2400MHz\r\n', 'ram-desktop-kingmax-1x4gb-ddr3-2400mhz', '150.000đ', '150.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(229, NULL, 'Ram Dato DDR4 4GB Bus 2400Mhz TẢN NHIỆT THÉP\r\n', 'ram-dato-ddr4-4gb-bus-2400mhz-tan-nhiet-thep', '150.000đ', '150.000đ', '03 THÁNG\r\n', 1, 21, 20, 0),
(230, NULL, 'RAM desktop G.SKILL Aegis F3-1600C11S-8GIS (1x8GB) DDR3 1600MHz\r\n', 'ram-desktop--skill-aegis-f3-1600c11s-8gis-1x8gb-ddr3-1600mhz', '150.000đ	', '150.000đ	', '03 THÁNG\r\n', 1, 21, 21, 0),
(231, NULL, 'RAM 8GB KINGMAX BUSS 1600MHZ\r\n', 'ram-8gb-kingmax-buss-1600mhz', '150.000đ	', '150.000đ	', '03 THÁNG\r\n', 1, 21, 21, 0),
(232, NULL, 'Ram DDR3 8G - Bus 1600 - Hiệu Team Elite Tản Nhiệt Chính Hãng\r\n', 'ram-ddr3-8g-bus01600-hieu-team-elite-tan-nhiet-chinh-hang', '150.000đ	', '150.000đ	', '03 THÁNG\r\n', 1, 20, 21, 0),
(233, NULL, 'Ram Kingston 8GB DDR3 Bus 1600Mhz có tản HyperX Fury\r\n', 'ram-kingston-8gb-ddr3-bus-1600mhz-co-tan-nhiet-hyperx-fury', '150.000đ	', '150.000đ	', '03 THÁNG\r\n', 1, 20, 21, 0),
(234, NULL, 'RAM DDR3 G.SKILL 4G-1600 TẢN NHIỆT THÉP\r\n', 'ram-ddr3-g-skill-4g-1600-tan-nhiet-thap', '60.000đ\r\n', '60.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(235, NULL, 'RAM KINGMAX DDR3 4GB BUSS 1600\r\n', 'ram-kingmax-ddr3-4gb-buss-1600', '60.000đ\r\n', '60.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(236, NULL, 'Ram Kingmax DDR3 4G 1333\r\n', 'ram-kingmax-ddr3-4g-1333', '60.000đ\r\n', '60.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(237, NULL, 'RAM Kingston 4Gb DDR3 1600\r\n', 'ram-kingston-4gb-ddr3-1600', '60.000đ', '60.000đ', '03 THÁNG\r\n', 1, 20, 21, 0),
(238, NULL, 'RAM DD3 4G 1333 KINGTON\r\n', 'ram-ddr3-4g-1333-kington', '60.000đ\r\n', '60.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(239, NULL, 'RAM DD2 2G/ 800 /1066/KINGMAX\r\n', 'ram-dd2-2g-800-1066-kingmax', '130.000đ\r\n', '130.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(240, NULL, 'RAM DD2 2G/ 800 KINGTON\r\n', 'ram-dd2-2g-800-kington', '110.000đ\r\n', '110.000đ\r\n', '03 THÁNG\r\n', 1, 20, 21, 0),
(241, NULL, 'CPU I3 9100F TẶNG FAN\r\n', 'cpu-i3-9100f-tang-fan', '1.200.000đ', '1.200.000đ', '12 THÁNG\r\n', 1, 11, 26, 0),
(242, NULL, 'CPU i3 8100 TẶNG FAN\r\n', 'cpu-i3-8100-tang-fan', '1.200.000đ\r\n', '1.200.000đ\r\n', '12 THÁNG\r\n', 1, 11, 26, 0),
(243, NULL, 'CPU I7 6700 TẶNG FAN RIN\r\n', 'cpu-i7-6700-tang-fan-rin', '1.600.000đ\r\n', '1.600.000đ\r\n', '12 tháng\r\n', 1, 13, 26, 0),
(244, NULL, 'CPU I5 7500 TẶNG FAN\r\n', 'cpu-i5-7500-tang-fan', '1.200.000đ\r\n', '1.200.000đ\r\n', '12 Tháng', 1, 12, 26, 0),
(245, NULL, 'CPU I5 3570 TẶNG FAN\r\n', 'cpu-i5-3570-tang-fan', '320.000đ\r\n', '320.000đ\r\n', '12 THÁNG\r\n', 1, 12, 28, 0),
(246, NULL, 'CPU I5 3470 TẶNG FAN\r\n', 'cpu-i5-3470-tang-fan', '300.000đ\r\n', '300.000đ\r\n', '12 THÁNG\r\n', 1, 2, 28, 0),
(247, NULL, 'CPU I5 2500 TẶNG FAN\r\n', 'cpu-i5-2500-tang-fan', '270.000đ\r\n', '270.000đ\r\n', '12 THÁNG\r\n', 1, 12, 28, 0),
(248, NULL, 'CPU I5 2400 TẶNG FAN\r\n', 'cpu-i5-2400-tang-fan', '250.000đ\r\n', '250.000đ\r\n', '12 THÁNG\r\n', 1, 12, 28, 0),
(249, NULL, 'CPU I3 3240 TẶNG FAN\r\n', 'cpu-i3-3240-tang-fan', '180.000đ\r\n', '180.000đ\r\n', '12 THÁNG\r\n', 1, 11, 28, 0),
(250, NULL, 'CPU I3 3220 TẶNG FAN\r\n', 'cpu-i3-3220-tang-fan', '160.000đ\r\n', '160.000đ\r\n', '12 THÁNG\r\n', 1, 11, 28, 0),
(251, NULL, 'CPU I3 3210 TẶNG FAN\r\n', 'cpu-i3-3210-tang-fan', '150.000đ', '150.000đ', '12 THÁNG\r\n', 1, 11, 28, 0),
(252, NULL, 'CPU I3 2120 TẶNG FAN\r\n', 'cpu-i3-2120-tang-fan', '140.000đ', '140.000đ', '12 THÁNG\r\n', 1, 11, 28, 0),
(263, NULL, 'CPU I3 7100 TẶNG FAN\r\n', 'cpu-i3-7100-tang-fan', '590.000đ\r\n', '590.000đ\r\n', '12 THÁNG\r\n', 1, 11, 26, 0),
(264, NULL, 'CPU I5 6500 TẶNG FAN\r\n', 'cpu-i5-6500-tang-fan', '950.000đ', '950.000đ', '12 THÁNG\r\n', 1, 12, 26, 0),
(267, NULL, 'CPU I3 6100 TẶNG FAN\r\n', 'cpu-i3-6100-tang-fan', '490.000đ\r\n', '490.000đ\r\n', '12 THÁNG\r\n', 1, 11, 26, 0),
(268, NULL, 'CPU G4400 TẶNG FAN\r\n', 'cpu-g4400-tang-fan', '190.000đ\r\n', '190.000đ\r\n', '12 THÁNG\r\n', 1, 2, 26, 0),
(269, NULL, 'CPU I3 6098P TẠNG FAN\r\n', 'cpu-i3-06098p-tang-fan', '450.000đ', '450.000đ', '12 THÁNG\r\n', 1, 11, 26, 0),
(270, NULL, 'CPU G4600 TẶNG FAN\r\n', 'cpu-g4600-tang-fan', '240.000đ\r\n', '240.000đ\r\n', '12 THÁNG\r\n', 1, 11, 26, 0),
(271, NULL, 'CPU I5 4690 TẶNG FAN\r\n', 'cpu-i5-4690-tang-fan', '520.000đ', '520.000đ', '12 THÁNG\r\n', 1, 12, 27, 0),
(272, NULL, 'CPU I5 4590 TẶNG FAN\r\n', 'cpu-i5-4590-tang-fan', '490.000đ\r\n', '490.000đ\r\n', '12 THÁNG\r\n', 1, 12, 27, 0),
(273, NULL, 'CPU I5 4570 TẶNG FAN\r\n', 'cpu-i5-4570-tang-fan', '480.000đ\r\n', '480.000đ\r\n', '12 THÁNG\r\n', 1, 12, 27, 0),
(274, NULL, 'CPU I5 4460 TẶNG FAN\r\n', 'cpu-i5-4460-tang-fan', '480.000đ\r\n', '480.000đ\r\n', '12 THÁNG\r\n', 1, 12, 27, 0),
(275, NULL, 'CPU I3 4170 TẶNG FAN\r\n', 'cpu-i3-4170-tang-fan', '220.000đ\r\n', '220.000đ\r\n', '12 THÁNG\r\n', 1, 11, 27, 0),
(276, NULL, 'CPU I3 4160 TẶNG FAN\r\n', 'cpu-i3-4160-tang-fan', '200.000đ', '200.000đ', '12 THÁNG\r\n', 1, 11, 27, 0),
(277, NULL, 'CPU I3 4150 TẶNG FAN\r\n', 'cpu-i3-4150-tang-fan', '190.000đ', '190.000đ', '12 THÁNG\r\n', 1, 11, 27, 0),
(278, NULL, 'CPU I3 4130 TẶNG FAN\r\n', 'cpu-i3-4130-tang-fan', '160.000đ\r\n', '160.000đ\r\n', '12 THÁNG\r\n', 1, 11, 27, 0),
(279, NULL, 'CPU G3460 TẶNG FAN\r\n', 'cpu-g3460-tang-fan', '100.000đ', '100.000đ', '12 THÁNG\r\n', 1, 2, 27, 0),
(280, NULL, 'CPU G3450 TẶNG FAN\r\n', 'cpu-g3450-tang-fan', '100.000đ\r\n', '100.000đ\r\n', '12 THÁNG\r\n', 1, 2, 27, 0),
(281, NULL, 'CPU G3440 TẶNG FAN\r\n', 'cpu-g3440-tang-fan', '100.000đ', '100.000đ', '12 THÁNG\r\n', 1, 2, 27, 0),
(282, NULL, 'CPU G3260 TẶNG FAN\r\n', 'cpu-g3260-tang-fan', '100.000đ\r\n', '100.000đ\r\n', '12 THÁNG\r\n', 1, 2, 27, 0),
(283, NULL, 'CPU G3258 TẶNG FAN\r\n', 'cpu-g3258-tang-fan', '100.000đ', '100.000đ', '12 THÁNG\r\n', 1, 2, 27, 0),
(284, NULL, 'CPU G3250 TẶNG FAN\r\n', 'cpu-g3250-tang-fan', '100.000đ\r\n', '100.000đ\r\n', '12 THÁNG\r\n', 1, 2, 27, 0),
(285, NULL, 'CPU G3240 TẶNG FAN\r\n', 'cpu-g3240-tang-fan', '100.000đ', '100.000đ', '12 THÁNG\r\n', 1, 2, 27, 0),
(286, NULL, 'CPU G3220 TẶNG FAN\r\n', 'cpu-g3220-tang-fan', '80.000đ\r\n', '80.000đ\r\n', '12 THÁNG\r\n', 1, 2, 27, 0),
(287, NULL, 'VGA ZOTAC GAMING GeForce GTX 1650 SUPER Twin Fan 4G GDDR6\r\n', 'vga-zotac-gaming0geforece-gtx-1650-super-twin-fan-4g-gddr6', '2.200.000đ\r\n', '2.200.000đ\r\n', '03 Tháng\r\n', 1, 22, 29, 0),
(288, NULL, 'VGA ZOTAC GTX 1650 4GB GDDR5 AMP\r\n', 'vga-zotac-gtx-1650-4gb-gddr5-awp', '2.000.000đ\r\n', '2.000.000đ\r\n', '03 Tháng\r\n', 1, 22, 29, 0),
(290, NULL, 'VGA Palit GTX 1050Ti 4G DUAL (2 fan) (NVIDIA Geforce/ 4Gb/ DDR5/ 128 Bits)\n', 'vga-palit-gtx-1050ti-4g-dual-2-fan-nvidia-geforce-4gb-ddr5-128-bits', '1.650.000đ', '1.650.000đ', '03 THÁNG\r\n', 1, 22, 29, 0),
(291, NULL, 'VGA Asus GTX 1050Ti Strix Gaming 4G 2 Fan\r\n', 'vga-asus-gtx-1050ti-strix-gaming-4g-2-fan', '1.700.000đ	\n', '1.700.000đ	\n', '03 THÁNG\r\n', 1, 22, 29, 0),
(292, NULL, 'VGA Gigabyte GTX 1050 Ti 4GB 2 Fan\r\n', 'vga-gigabyte-gtx-1050-ti-4gb-2-fan', '1.700.000đ	', '1.700.000đ	', '03 THÁNG\r\n', 1, 22, 29, 0),
(293, NULL, 'VGA RX 470 4G	', 'vga-rx-470-4g', '1.100.000đ	', '1.100.000đ	', '03 Tháng\r\n', 1, NULL, 29, 0),
(294, NULL, 'VGA Galax GTX 1050 OC 2G DDR5 (NVIDIA Geforce/ 2Gb/ DDR5/ 128Bit)\r\n', 'vga-galax-gtx-1050-oc-2g-ddr5-nvidia-geforce02gb-ddr5-128bit', '1.250.000đ	', '1.250.000đ	', '03 THÁNG\r\n', 1, 22, 29, 0),
(295, NULL, 'VGA GIGA GTX1050 GEFORCE 2G/DD5/128BIT	', 'vga-giga-gtx1050-geforce-2g-dd5-128bit', '1.300.000đ', '1.300.000đ', '03 THÁNG\r\n', 1, NULL, 29, 0),
(296, NULL, 'VGA ZOTAC GTX 1050 2GB GDDR5 128bit\r\n', 'vga-zotac-gtx-1050-2gb-gddr5-128bit', '1.250.000đ', '1.250.000đ', '03 THÁNG\r\n', 1, 22, 29, 0),
(297, NULL, 'VGA Gigabyte GTX 750Ti 2G GDDR5\r\n', 'vga-gigabyte-gtx-750ti-2g-gddr5', '1.100.000đ', '1.100.000đ', '03 THÁNG\r\n', 1, 23, 29, 0),
(298, NULL, 'VGA ASUS GTX750TI-OC-2GD5 (128 bits )\r\n', 'vga-asus-gtx750ti-oc-2gd5', '1.100.000đ\r\n', '1.100.000đ\r\n', '03 THÁNG\r\n', 1, 22, 29, 0),
(299, NULL, 'VGA Colorful GTX750Ti-2GD5\r\n', 'vga-colorful-gtx750ti-2gd5', '1.050.000đ\r\n', '1.050.000đ\r\n', '03 THÁNG\r\n', 1, 22, 29, 0),
(300, NULL, 'VGA Zotac GTX 750ti 2gb ddr5\r\n', 'vga-zotac-gtx-750ti-2gb-ddr5', '1.050.000đ	', '1.050.000đ	', '03 THÁNG\r\n', 1, 22, 29, 0),
(301, NULL, 'VGA Colorful GT 1030 2G D5 Single Fan (GT1030-2G V3-V)	', 'vga-colorful-gt-1030-2g-d5-single-fan-gt1030-2g-v3-v', '1.150.000đ', '1.150.000đ', '03 THÁNG\r\n', 1, NULL, 29, 0),
(302, NULL, 'VGA GIGABYTE GT420.2G DD3 128BIT\r\n', 'vga-gigabyte-gt420-2g-dd3-128bit', '300.000đ\r\n', '300.000đ\r\n', '03 THÁNG\r\n', 1, 22, 29, 0),
(303, NULL, 'LCD 27 PHILIP FUN VIỀN	', 'lcd-27-philip-fun-vien', '1.500.000đ	', '1.500.000đ	', '03 THÁNG\r\n', 1, NULL, 31, 0),
(304, NULL, 'LCD 27” LG 27EA33VA IPS\r\n', 'lcd-27-lg-27ea33va-ips', '1.600.000đ\r\n', '1.600.000đ\r\n', '03 THÁNG\r\n', 1, 6, 31, 0),
(305, NULL, 'LCD Samsung S24B240BL 24inc', 'lcd-samsung-', '1.300.000đ', '1.300.000đ', '03 THÁNG', 1, 6, 31, 0),
(306, NULL, 'LCD AOC MONITOR E2475SWD CỦ', 'lcd-aoc-monitor-e2475swd-cu', '1.250.000đ', '1.250.000đ', '03 THÁNG', 1, 6, 31, 0),
(307, NULL, 'LCD LED LG 24 inch 24M47VQ-P FULL HDMI VGA', 'lcd-led-lg-24-inch-24m47vq-p-full-hdmi-vga', '1.300.000đ', '1.300.000đ', '03 THÁNG', 1, 6, 31, 0),
(310, NULL, 'VGA ASUS GT630 2G DD3 128 BIT\r\n', 'vga-asus-gt630-2g-dd3-128-bit', '400.000đ\r\n', '400.000đ\r\n', '03 THÁNG\r\n', 1, 22, NULL, 0),
(337, NULL, 'LCD Samsung S24B240BL 24inc\r\n', 'lcd-samsung-s24b24-bl-24inc', '1.300.000đ', '1.300.000đ', '03 THÁNG\r\n', 1, 6, NULL, 0),
(372, NULL, 'Nguồn Cooler Master 500W', 'nguồn-cooler-master-500w', '450.000đ', '440.000đ', '01 THÁNG', 1, 1, 33, 0),
(373, NULL, 'NGUỒN Cooler Master 460w', 'nguồn-cooler-master-460w', '380.000đ', '380.000đ', '01 THÁNG', 1, 1, 33, 0),
(374, NULL, 'NGUỒN COLERMASTER 400W', 'nguon-colermaster-400w', '300.000đ', '300.000đ', '01 THÁNG', 1, 1, 33, 0),
(375, NULL, 'NGUỒN COLERMASTER 350W', 'nguon-colermaster-350w', '150.000đ', '150.000đ', '01 THÁNG', 1, 1, 33, 0),
(376, NULL, 'NGUỒN ACBEL 450W CE2 F12', 'nguon-acbel-450w-ce2-f12', '350.000đ', '350.000đ', '01 THÁNG', 1, 1, 33, 0),
(377, NULL, 'NGUỒN ACBEL 400W CE2 F12', 'nguon-acbel-400w-ce2-f12', '300.000đ', '300.000đ', '01 THÁNG', 1, 1, 33, 0),
(378, NULL, 'NGUỒN ACBEL CE2 350W F12', 'nguon-acbel-ce2-350w-f12', '150.000đ', '150.000đ', '01 THÁNG', 1, 1, 33, 0),
(379, NULL, 'NGUỒN ACBLE 350W F12 HK', 'nguon-acble-350w-f12-', '150.000đ', '150.000đ', '01 THÁNG', 1, 1, 33, 0),
(380, NULL, 'NGUỒN ACBEL 450W F12 Hk', 'nguon-acbel-450w-f12-hk', '300.000đ', '300.000đ', '01 THÁNG', 1, 1, 33, 0),
(381, NULL, 'NGUỒN ACBEL 350W F8', 'nguon-acbel-350w-f8', '150.000đ', '140.000đ', '01 THÁNG', 1, 1, 33, 0),
(382, NULL, 'NGUỒN ACBEL 400W HK CÓ NGUỒN PHỤ VGA', 'nguon-acbel-400w-hk-co-nguon-phu-vga', '300.000đ', '300.000đ', '01 THÁNG', 1, 1, 33, 0),
(387, NULL, 'NGUỒN MÁY BỘ 24PIN. HP', 'nguon-may-bo-24pin-hp', '120.000đ', '110.000đ', '01 THÁNG', 1, 1, 33, 0),
(388, NULL, 'NGUỒN 24 PIN PEN12 CÁC LOẠI DƯỚI 100K', 'nguon-24-pin-pen12-cac-loai-duoi-100k', '', '', '01 THÁNG', 1, 1, 33, 0),
(389, NULL, 'FEN ZIN socket 115X', 'fen-zin-socket-115x', '40.000đ', '35.000đ', 'BAO TEST', 1, 1, 34, 0),
(390, NULL, 'FEN ZIN socket 115X LÕI ĐỒNG	', 'fen-zin-socket-115x-loi-dong', '50.000đ', '45.000đ', 'BAO TEST', 1, 1, 34, 0),
(391, NULL, 'FEN ZIN socket 775', 'fen-zin-socket-775', '40.000đ', '35.000đ', 'BAO TEST', 1, 1, 34, 0),
(392, NULL, 'Switch TP-Link TL-SG1016D 16 port gigabit', 'switch-tp-link-tl-sg1016d-16-port-gigabit', '500.000đ', '490.000đ', '03 THÁNG', 1, 1, 34, 0),
(393, NULL, 'Switch TP-Link TL-SG1016D 24 port gigabit', 'switch-tp-link-tl-sg1016d-24-port-gigabit', '550.000d', '540.000đ', '03 THÁNG', 1, 1, 34, 0),
(394, NULL, 'HEADPHONE CÁC LOẠI CHUYÊN GAME TỪ 100K ĐÉN 150K', 'headphone-cac-loai-chuyen-game-tu-100k-den-150k', '150.000đ', '100.000đ', '01 THÁNG', 1, 30, 34, 0),
(395, NULL, 'PHÍM CŨ CÁC LOẠI tỪ 50K ĐẾN 250K TÙY LOẠI', 'phim-cu-cac-loai-tu-50k-den-250k-tuy-loai', '', '', '01 THÁNG', 1, 10, 34, 0),
(396, NULL, 'CHUỘT CŨ CÁC LOẠI', 'chuot-cu-cac-loai', '50.000đ', '45.000đ', '01 THÁNG', 1, 10, 34, 0),
(397, NULL, 'Bộ lưu điện Santak TG 1000 -1000VA Offline', 'bo-luu-dien-santak-tg-1000-1000va-offline', '250.000đ', '250.000đ', '03 THÁNG', 1, 1, 34, 0),
(398, NULL, 'ĐẾ LCD ĐA NĂNG-MÀU TRẮNG. ĐEN', 'de-lcd-da-nang-mautrang-den', '190.000đ', '185.000đ', 'BAO TEST', 1, 6, 34, 0),
(412, NULL, 'CPU Intel Core i5 11400 (2.60 Up to 4.40GHz, 12M, 6 Cores 12 Threads) Box Chính Hãng	', 'cpu-intel-core-i5-11400(2.60-up-yo-4.40hz-12m-6-cores-12-threads-box-chinh-hang', '', '', 'Liên Hệ\r\n', 1, NULL, 24, 0),
(413, NULL, 'CPU Intel Core I3 10100F | LGA1200, Turbo 4.30 GHz, 4C/8T, 6MB	', 'cpu-intel-core-i3-10100f-lga1200-turbo-430-ghz-4c-8t-6mb', '1.380.000đ	', '1.380.000đ	', '12 Tháng\r\n', 1, NULL, 24, 0),
(1420, NULL, 'Loa Vi Tính Kisonli V400', 'loa-vi-tinh-kisonli-v400', '85.000đ', '85.000đ', '12 Tháng', 1, 29, 15, 0),
(2710, NULL, 'CPU G4560 TẶNG FAN\r\n', 'cpu-g4560-tang-fan', '220.000đ\r\n', '220.000đ\r\n', '12 THÁNG\r\n', 1, 2, 26, 0),
(6900, NULL, 'Tản Nhiệt CPU VSPTech V400 Plus RGB Air Cooling', 'tan-nhiet-cpu-vsptech-v400-rgb-air-cooling', '340.000đ', '340.000đ', '12 Tháng', 1, 1, 10, 0),
(6901, '-thiet-bi-am-thanh-loa-vi-tinh', 'Thiết bị âm Thanh-Loa VI TÍNH', NULL, '12', '12', '12', 0, 157, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favicons`
--

CREATE TABLE `favicons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favicons`
--

INSERT INTO `favicons` (`id`, `image`, `display`) VALUES
(1, 'logo-9090-9915.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footers`
--

INSERT INTO `footers` (`id`, `tittle`, `content`, `display`) VALUES
(1, 'VI TÍNH PHÁT NĂNG BÌNH DƯƠNG', '<p><span style=\"font-size:16px\"><strong>NH&Agrave; ĐẤT MINH PH&Aacute;T</strong></span></p>\r\n\r\n<h4><span style=\"font-size:16px\">Địa Chỉ: 740/11 L&ecirc; Trọng Tấn, P. B&igrave;nh Hưng H&ograve;a, Q. B&igrave;nh T&acirc;n, TP. HCM</span></h4>\r\n\r\n<p><span style=\"font-size:16px\">Hotline:&nbsp;<strong>0935.613.986 - 0903.250.446</strong></span></p>\r\n\r\n<h5><span style=\"font-size:16px\">Email:&nbsp;phuong 280280@gmail.com</span></h5>\r\n\r\n<h2><span style=\"font-size:16px\">Website:&nbsp;nhadatminhphat.com.vn</span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"http://www.dmca.com/Protection/Status.aspx?ID=09db14cc-6ae5-455f-b21a-b4eabbb921ee&amp;refurl=http://nhadatminhphat.com.vn/\" title=\"DMCA.com Protection Status\"><img src=\"https://images.dmca.com/Badges/dmca_protected_sml_120b.png?ID=09db14cc-6ae5-455f-b21a-b4eabbb921ee\" /></a>&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><u>MẠNG X&Atilde; HỘI:&nbsp;</u></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://www.google.com/\" title=\"\"><img alt=\"NHÀ ĐẤT MINH PHÁT\" src=\"https://demo-saigonwebsite.com/bds/upload/photo/mxh1-1-1957.png\" title=\"\" /></a>&nbsp;<a href=\"https://www.google.com/\" title=\"\"><img alt=\"NHÀ ĐẤT MINH PHÁT\" src=\"https://demo-saigonwebsite.com/bds/upload/photo/mxh1-2-1178.png\" title=\"\" /></a>&nbsp;<a href=\"https://www.google.com/\" title=\"\"><img alt=\"NHÀ ĐẤT MINH PHÁT\" src=\"https://demo-saigonwebsite.com/bds/upload/photo/mxh1-3-4655.png\" title=\"\" /></a>&nbsp;<a href=\"https://www.google.com/\" title=\"\"><img alt=\"NHÀ ĐẤT MINH PHÁT\" src=\"https://demo-saigonwebsite.com/bds/upload/photo/mxh1-4-6766.png\" title=\"\" /></a></span></p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `display` tinyint(4) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `tittle`, `number`, `display`, `product_id`) VALUES
(1, '', '', 0, NULL, 536),
(2, '', '', 0, NULL, 536),
(3, 'z4917504915707_c96830289c31704f282531369167eec6.jpg', NULL, NULL, NULL, 593),
(4, 'images (5).jpeg', NULL, NULL, NULL, 595),
(5, 'img_20200617093732.jpg', NULL, NULL, NULL, 595),
(6, 'z4917500526845_22953af5ecf68ce2975313c76788c7c5.jpg', NULL, NULL, NULL, 595),
(7, 'images (3).jpeg', '123', 1, 1, 596),
(8, 'images (2).jpeg', '123', 2, 1, 596),
(9, 'images (1).jpeg', '123', 1, NULL, 597),
(10, 'images (1).jpeg', '123', 23, 1, 596);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home_images`
--

CREATE TABLE `home_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `home_images`
--

INSERT INTO `home_images` (`id`, `image`, `display`) VALUES
(1, 'images (3).jpeg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduces`
--

CREATE TABLE `introduces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `describe` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `introduces`
--

INSERT INTO `introduces` (`id`, `tittle`, `describe`, `content`, `image`, `display`, `seo_id`) VALUES
(1, 'NHÀ ĐẤT MINH PHÁT', '<p><span style=\"font-size:20px\">Lời đầu ti&ecirc;n, Nh&agrave; Đất Minh Ph&aacute;t xin gởi lời cảm ơn ch&acirc;n th&agrave;nh đến tất cả kh&aacute;ch h&agrave;ng đ&atilde; quan t&acirc;m, hợp t&aacute;c với ch&uacute;ng t&ocirc;i suốt hơn những năm qua. L&agrave; đơn vị hoạt động trong lĩnh vực kinh doanh, tư vấn, quản l&yacute; v&agrave; tiếp thị bất động sản. Nh&agrave; Đất Minh Ph&aacute;t nơi tập trung những sản phẩm Nh&agrave; Phố Cao Cấp - Vị Tr&iacute; Đất Nền Đẹp của c&aacute;c Dự &aacute;n đ&atilde; được chọn lọc sẽ đ&aacute;p ứng mọi nhu cầu về bất động sản của Qu&yacute; Kh&aacute;ch H&agrave;ng</span></p>', '<p><span style=\"font-size:16px\">Lời đầu ti&ecirc;n,&nbsp;<strong>Nh&agrave; Đất Minh Ph&aacute;t</strong>&nbsp;xin gởi lời cảm ơn ch&acirc;n th&agrave;nh đến tất cả kh&aacute;ch h&agrave;ng đ&atilde; quan t&acirc;m, hợp t&aacute;c với ch&uacute;ng t&ocirc;i suốt hơn những năm qua. L&agrave; đơn vị hoạt động trong lĩnh vực kinh doanh, tư vấn, quản l&yacute; v&agrave; tiếp thị bất động sản.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Nh&agrave; Đất Minh Ph&aacute;t&nbsp;</strong>nơi tập trung những sản phẩm Nh&agrave; Phố Cao Cấp - Vị Tr&iacute; Đất Nền Đẹp của c&aacute;c Dự &aacute;n đ&atilde; được chọn lọc sẽ đ&aacute;p ứng mọi nhu cầu về bất động sản của Qu&yacute; Kh&aacute;ch H&agrave;ng . Với đội ngũ chuy&ecirc;n vi&ecirc;n tư vấn bất động sản c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao, gi&agrave;u kinh nghiệm v&agrave; lu&ocirc;n lấy chữ t&iacute;n l&agrave;m trọng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Q&uacute;y kh&aacute;ch h&agrave;ng đến với ch&uacute;ng t&ocirc;i lu&ocirc;n lu&ocirc;n h&agrave;i l&ograve;ng với phong c&aacute;ch l&agrave;m việc chuy&ecirc;n nghiệp, tận t&acirc;m v&agrave; c&oacute; tr&aacute;ch nhiệm .Ch&uacute;ng t&ocirc;i hiểu rằng sự th&agrave;nh c&ocirc;ng của kh&aacute;ch h&agrave;ng ch&iacute;nh l&agrave; yếu tố quan trọng nhất mang lại th&agrave;nh c&ocirc;ng cho ch&uacute;ng t&ocirc;i.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;Với mong muốn mang lại cho kh&aacute;ch h&agrave;ng một k&ecirc;nh đầu tư tiện lợi v&agrave; an to&agrave;n, lợi nhuận cao, l&agrave;m cho kh&aacute;ch h&agrave;ng cảm thấy an t&acirc;m, thoải m&aacute;i nhất,&nbsp;<strong>Nh&agrave; Đất Minh Ph&aacute;t</strong>&nbsp;xin giới thiệu với kh&aacute;ch h&agrave;ng th&ocirc;ng tin dự &aacute;n mới cam kết sẽ đem lại nhiều lợi nhuận cho kh&aacute;ch h&agrave;ng mua để ở hoặc đầu tư.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://demo-saigonwebsite.com/bds/upload/elfinder/bd2a05d462e38448273659a142aed439.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nh&agrave; Đất Minh Ph&aacute;t</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hiện tại thị trường Việt Nam n&oacute;i chung v&agrave; thị trường bất động sản n&oacute;i ri&ecirc;ng vẫn c&ograve;n gặp kh&ocirc;ng &iacute;t kh&oacute; khăn, tuy nhi&ecirc;n đ&acirc;y vẫn l&agrave; một thị trường tiềm năng. Ch&uacute;ng t&ocirc;i tin chắc sẽ c&oacute; rất nhiều cơ hội đến với thị trường khi c&aacute;c nh&agrave; đầu tư sắn s&agrave;ng x&uacute;c tiến kế hoạch của họ tại Việt Nam.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Những nguy&ecirc;n tắc cơ bản của bất động sản thường kh&ocirc;ng thay đổi qu&aacute; nhiều theo thời gian, tuy nhi&ecirc;n những nguy&ecirc;n tắc cơ bản n&agrave;y cũng c&oacute; những biến đổi nhất định nhằm ph&ugrave; hợp với sự chuyển động của thị trường.&nbsp; tin chắc sẽ c&oacute; rất nhiều cơ hội đến với thị trường khi c&aacute;c nh&agrave; đầu tư sắn s&agrave;ng x&uacute;c tiến kế hoạch của họ tại Việt Nam.&nbsp;</span></p>', 'gt-1683.jpg', 1, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level1_products`
--

CREATE TABLE `level1_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(15000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `new` tinyint(4) DEFAULT NULL,
  `display` tinyint(4) DEFAULT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level1_products`
--

INSERT INTO `level1_products` (`id`, `number`, `image`, `link`, `tittle`, `describe`, `outstand`, `new`, `display`, `seo_id`) VALUES
(44, 1, '248215d0-94e6-4ab6-a6fe-b2ca30c4f0dc-3024.jpg', 'nha-72m2-mot-lau-uc-can-tien-ban-gap-2', 'Nhà 72m2 một lầu đúc cần tiền bán gấp 2', '<p>Nh&agrave; hẻm B&igrave;nh th&agrave;nh ,B&igrave;nh Hưng Ho&agrave; B ,B&igrave;nh T&acirc;n&nbsp;<br />\r\n4m x17 m 1 lầu thuận tiện l&agrave;m văn ph&ograve;ng c&ocirc;ng ty hẻm xe tải th&ocirc;ng ,s&aacute;t ngay khi d&acirc;n cư Vĩnh Lộc sầm uất nhất v&ugrave;ng&nbsp;<br />\r\nGi&aacute; :4,8 tỷ tl<br />\r\nLi&ecirc;n hệ m&igrave;nh :0935613986</p>', NULL, NULL, 0, 170),
(45, 2, 'img2980-8519350x225-4413.jpg', 'nha-at-ban', 'NHÀ ĐẤT BÁN', '<p>nh&agrave; b&aacute;n đất</p>', NULL, NULL, 1, 173),
(46, 3, 'img0000layer38-1855350x225-5938.png', 'nha-at-cho-thue', 'NHÀ ĐẤT CHO THUÊ', '<p>NH&Agrave; ĐẤT CHO THU&Ecirc;</p>', NULL, NULL, 1, 191);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level1_quotations`
--

CREATE TABLE `level1_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 1,
  `seo_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level1_quotations`
--

INSERT INTO `level1_quotations` (`id`, `number`, `image`, `link`, `tittle`, `display`, `seo_id`) VALUES
(3, 1, NULL, 'mang-hinh-lcd-chinh-hang', 'MÀNG HÌNH LCD CHÍNH HÃNG', 1, 18),
(4, 2, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-SSD\r\n', 1, 20),
(5, 3, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-RAM PC-RAM LAPTOP\r\n', 1, 3),
(6, 4, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-Mainboard SK 1150, SK 1151\r\n', 1, 10),
(7, 5, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-HDD\r\n', 1, 28),
(8, 6, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-CASE MỚI\r\n', 1, 1),
(9, 7, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-FAN LED-WEDCAM-NGUỒN\r\n', 1, 8),
(12, 8, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-KEYBOARD\r\n', 1, 21),
(13, 9, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-MOUSE\r\n', 1, 21),
(14, 10, NULL, NULL, 'LAPTOP HP1', 1, 27),
(15, 11, NULL, NULL, 'CÁC LINH KIỆN HÀNG MỚI-LOA VI TÍNH\r\n', 1, 25),
(16, 1, NULL, 'cac-linh-kien-hang-moi-mang-wifi', 'CÁC LINH KIỆN HÀNG MỚI-MẠNG-WIFI', 1, 1),
(17, 13, NULL, NULL, 'LINH KIỆN HÀNG CŨ-MÁY SERVER\r\n', 1, 4),
(18, 14, NULL, NULL, 'LINH KIỆN HÀNG CŨ-MAIN CÁC LOẠI\r\n', 1, 14),
(19, 15, NULL, NULL, 'LINH KIỆN HÀNG CŨ-RAM-HDD LAPTOP\r\n', 1, 1),
(20, 16, NULL, NULL, 'LINH KIỆN HÀNG CŨ-RAM DDR4\r\n', 1, 14),
(21, 17, NULL, NULL, 'LINH KIỆN HÀNG CŨ-RAM DDR3-DDR2\r\n', 1, 14),
(24, 18, NULL, NULL, 'LINH KIỆN HÀNG CŨ-cpu socket 1200\r\n', 1, 28),
(25, 19, NULL, NULL, 'LINH KIỆN HÀNG CŨ-cpu socket 1151-V2\r\n', 1, 20),
(26, 20, NULL, NULL, 'LINH KIỆN HÀNG CŨ-cpu socket 1155', 1, 26),
(27, 21, NULL, NULL, 'LINH KIỆN HÀNG CŨ-cpu socket 1151-V1\r\n', 1, 28),
(28, 22, NULL, NULL, 'LINH KIỆN HÀNG CŨ-cpu socket 115O\r\n', 1, 28),
(29, 23, NULL, NULL, 'LINH KIỆN HÀNG CŨ-VGA CARD\r\n', 1, 1),
(30, 24, NULL, NULL, 'LINH KIỆN HÀNG CŨ-LCD DƯỚI 22\"-CÓ SỐ LƯỢNG\r\n', 1, 27),
(31, 25, NULL, NULL, 'LINH KIỆN HÀNG CŨ-LCD TỪ 22\">27\">32\" CÓ SỐ LƯỢNG\r\n', 1, 27),
(32, 1, NULL, 'linh-kien-hang-cu-lcd-hang-loi-cac-loai-tu-300k-1000k', 'LINH KIỆN HÀNG CŨ-LCD HÀNG LỖI CÁC LOẠI TỪ 300K->1000K', 1, 4),
(33, 27, NULL, NULL, 'LINH KIỆN HÀNG CŨ-NGUỒN CÔNG XUẤT THỰC\r\n', 1, 4),
(34, 28, NULL, NULL, 'LINH KIỆN LINH TINH\r\n', 1, 17),
(42, 29, 'images (1).jpeg', 'agfwergawuerfwtr', 'ăgfwergawưerfwtr', 0, 156);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level2_products`
--

CREATE TABLE `level2_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `describe` varchar(535) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `level1_product_id` bigint(20) UNSIGNED NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level2_products`
--

INSERT INTO `level2_products` (`id`, `link`, `number`, `image`, `tittle`, `describe`, `display`, `level1_product_id`, `seo_id`) VALUES
(66, 'testartaertg', 1, 'default_image.jpg', 'testârt', '<p>test</p>', 0, 44, 171),
(67, 'test2', 2, 'default_image.jpg', 'test2', '<p>test2</p>', 1, 44, 172);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level3_products`
--

CREATE TABLE `level3_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `new` tinyint(4) NOT NULL,
  `outstand` tinyint(4) NOT NULL,
  `level2_product_id` bigint(20) UNSIGNED NOT NULL,
  `level1_product_id` bigint(20) UNSIGNED NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level3_products`
--

INSERT INTO `level3_products` (`id`, `link`, `number`, `image`, `tittle`, `display`, `new`, `outstand`, `level2_product_id`, `level1_product_id`, `seo_id`) VALUES
(85, 'intel-pentium', 4, 'images (2).jpeg', 'Intel Pentium', 0, 0, 0, 29, 2, 1),
(86, 'intel-core-i3', 2, 'images (5).jpeg', 'Intel Core i3', 0, 0, 0, 29, 1, 1),
(87, 'intel-core-i5', 1, 'images (4).jpeg', 'Intel Core i5', 1, 0, 0, 29, 1, 1),
(88, 'intel-core-i7', 1, 'images (4).jpeg', 'Intel Core i7', 1, 0, 0, 29, 1, 1),
(89, NULL, 1, '', 'MAIN - GIGABYTE', 1, 0, 0, 34, 1, 1),
(90, 'linh-kien-moi', 1, 'img_20200617093732.jpg', 'Linh kiện mới', 1, 0, 0, 29, 1, 1),
(91, NULL, 1, '', 'MAIN - MSI', 1, 0, 0, 34, 1, 1),
(92, NULL, 1, '', 'MAIN - COLOFULL', 1, 0, 0, 34, 1, 1),
(93, NULL, 1, '', 'DDR4 PC', 1, 0, 0, 32, 1, 1),
(95, NULL, 1, '', 'DDR3 SERVER', 1, 0, 0, 32, 1, 1),
(96, NULL, 1, '', 'MAIN - GIGABYTE', 1, 0, 0, 31, 1, 1),
(97, NULL, 1, '', 'MAIN - ASUS', 1, 0, 0, 31, 1, 1),
(98, NULL, 1, '', 'MAIN - MSI', 1, 0, 0, 31, 1, 1),
(99, NULL, 1, '', 'VGA - GIGABYTE MỚI', 1, 0, 0, 33, 1, 1),
(100, NULL, 1, '', 'VGA - ASUS - MỚI', 1, 0, 0, 33, 1, 1),
(101, NULL, 1, '', 'CPU - INTEL PENTIUM', 1, 0, 0, 30, 1, 1),
(102, NULL, 1, '', 'CPU - INTEL CORE I3', 1, 0, 0, 30, 1, 1),
(103, NULL, 1, '', 'CPU - INTEL CORE I5', 1, 0, 0, 30, 1, 1),
(104, NULL, 1, '', 'CPU - INTEL CORE I7', 1, 0, 0, 30, 1, 1),
(105, NULL, 1, '', 'RAM DDR4 PC', 1, 0, 0, 35, 1, 1),
(106, NULL, 1, '', 'RAM DDR3 PC', 1, 0, 0, 35, 1, 1),
(107, NULL, 1, '', 'RAM DDR3 SERVER', 1, 0, 0, 35, 1, 1),
(108, NULL, 1, '', 'VGA - GIGABITE CŨ', 1, 0, 0, 36, 1, 1),
(109, NULL, 1, '', 'VGA - ASUS CŨ', 1, 0, 0, 36, 1, 1),
(110, NULL, 1, '', 'VGA - MSI CŨ', 1, 0, 0, 36, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `liquidations`
--

CREATE TABLE `liquidations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `liquidations`
--

INSERT INTO `liquidations` (`id`, `tittle`, `content`, `image`, `link`, `display`, `seo_id`) VALUES
(1, 'Thanh Lý Phòng Net A-Z Giá Caoo', '<p>&oacute;c</p>', 'images (3).jpeg', 'thanh-ly-phong-net-a-z-gia-cao', 0, 5),
(3, 'Thanh Lý Phòng Net A- Z Giá Cao\r\n', '', '424be9b53ea6f4f8adb7-7989.jpg', 'thanh-ly-phong-net-a-z-gia-cao-2', 1, 5),
(4, 'Thanh Lý Phòng Net A- Z Giá Cao Bình Dương', '', '16-7627.jpg', 'thanh-ly-phong-net-a-z-binh-duong', 1, 5),
(5, 'Thanh Lý Phòng Net A- Z Giá Cao Khu Vực Miền Nam', '', 'aeed8f8c5c9f96c1cf8e-4736.jpg', 'thanh-ly-phong-net-a-z-gia-cao-khu-vuc-mien-nam', 1, 5),
(6, 'Thanh Lý Phòng Net Giá Cao Khu Vực Miền Nam\r\n', '', 'dd596d7bf565383b6174-2307.jpg', 'thanh-ly-phong-net-gia-cao-khu-vuc-mien-nam', 1, 5),
(7, 'Thanh Lý Phòng Net Giá Cao Khu Vực Miền Nam Tây Nguyên', '', 'a986959f0d81c0df9990-4161.jpg', 'thanh-ly-phong-net-gia-cao-khu-vuc-mien-nam-tay-nguyen', 1, 5),
(8, 'Thanh Lý Phòng Net Giá Cao Khu Vực Miền Trung', '', 'bfccf5906d8ea0d0f99f-1674.jpg', 'thanh-ly-phong-net-gia-cao-khu-vuc-mien-trung', 1, 5),
(9, 'Thanh Lý Phòng Net Công Ty Giá Cao Khu Vực Miền Nam', '', '1ab4f35d6243af1df652-3887.jpg', 'thanh-ly-phong-net-cong-ty-gia-cao-khu-vuc-mien-nam', 1, 5),
(10, 'Thanh Lý Phòng Net A- Z Uy Tín Nhất Bình Dương', '', 'b57615aa83b44eea17a5-5134.jpg', 'thanh-ly-phong-net-a-z-uy-tin-binh-duong', 1, 5),
(11, 'Thanh Lý Phòng Net Trường Học Cơ Sở Công Ty', '', 'dddc91ce03d0ce8e97c1-2222.jpg', 'thanh-ly-phong-net-truong-hoc-co-so-cong-ty', 1, 5),
(12, 'Thanh Lý Phòng Net Cơ Sở Công Ty Trường Học A-Z', '', '310811ee81f04cae15e1-3302.jpg', 'thanh-ly-phong-net-co-so-cong-ty-truong-hoc-a-z', 1, 5),
(13, 'Thanh Lý Phòng Net A- Z Giá Cao Khu Vực Miền Nam Tây Nam Bộ', '', 'cfdbf71c6502a85cf113-4075.jpg', 'thanh-ly-phong-net-a-z-gia-cao-khu-vuc-mien-tay-nam-bo', 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logos`
--

INSERT INTO `logos` (`id`, `image`, `display`) VALUES
(1, 'logo-5206.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mails`
--

INSERT INTO `mails` (`id`, `name`, `phone`, `email`, `topic`, `address`, `status`, `content`, `note`, `number`, `created_at`) VALUES
(1, 'thienbodoi2', '0363008204', 'quocthien0404@gmail.com', 'erg', '1', 2, 'eargea', 'aeg', 1, '2024-03-01 02:58:10'),
(3, 'quingu234', '0363008204', 'thienlqps21640@fpt.edu.vn', 'mua nè', '1', 0, '..', '...', 2, '2024-01-24 07:07:48'),
(6, 'thienbodoi', '0363008204', 'quocthien0404@gmail.com', 'mua nè', 'Thienes Avenue', NULL, '124124', NULL, 2, '2024-02-27 06:18:30'),
(7, 'thienbodoi', '0363008204', 'admin@gmail.com', 'mua nè', 'Thienes Avenue', NULL, '123', NULL, 4, '2024-02-27 06:18:34'),
(8, 'trí', '0363008204', 'nguyenminhtri23092001@gmail.com', NULL, '1', 1, 'mmm', 'mmm', 3, '2024-03-05 02:09:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_06_064304_create_seos_table', 1),
(6, '2023_12_07_023838_create_detail_products_table', 1),
(7, '2023_12_07_023939_create_level3_products_table', 1),
(8, '2023_12_07_023941_create_level2_products_table', 1),
(9, '2023_12_07_023942_create_level1_products_table', 1),
(10, '2023_12_07_024859_create_tag_products_table', 1),
(11, '2023_12_07_025050_create_level1_quotations_table', 1),
(12, '2023_12_07_025110_create_detail_quotations_table', 1),
(13, '2023_12_07_025258_create_customer_supports_table', 1),
(14, '2023_12_07_025351_create_policies_table', 1),
(15, '2023_12_07_025417_create_news_table', 1),
(16, '2023_12_07_025450_create_introduces_table', 1),
(17, '2023_12_07_025614_create_liquidations_table', 1),
(18, '2023_12_07_025707_create_slogans_table', 1),
(19, '2023_12_07_025727_create_contacts_table', 1),
(20, '2023_12_07_025810_create_footers_table', 1),
(21, '2023_12_07_030118_create_home_images_table', 1),
(22, '2023_12_07_030134_create_logos_table', 1),
(23, '2023_12_07_030150_create_favicons_table', 1),
(24, '2023_12_07_030206_create_banners_table', 1),
(25, '2023_12_07_030234_create_slideshows_table', 1),
(26, '2023_12_07_030258_create_criterias_table', 1),
(27, '2023_12_07_030346_create_social_networks_table', 1),
(28, '2023_12_07_030400_create_videos_table', 1),
(29, '2023_12_07_030445_create_seo_products_table', 1),
(30, '2023_12_07_030526_create_seo_quotations_table', 1),
(31, '2023_12_07_030546_create_seo_news_table', 1),
(32, '2023_12_07_030558_create_seo_videos_table', 1),
(33, '2023_12_07_030630_create_settings_table', 1),
(34, '2023_12_11_020247_blogs', 1),
(35, '2023_12_11_024619_create_images_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `image`, `link`, `tittle`, `describe`, `content`, `outstand`, `display`, `number`, `seo_id`) VALUES
(12, 'bds-2018-1518860612-8152.jpg', '4-ly-do-nen-than-trong-khi-au-tu-bat-ong-san-nam-2018', '4 lý do nên thận trọng khi đầu tư bất động sản năm 2018', 'Năm 2018 là thời điểm rất nhiều dự án bất động sản bước vào giai đoạn bàn giao sản phẩm. Đây là cột mốc bắt buộc phải làm bài test kiểm tra thực tế khả năng cam kết lợi nhuận của chủ đầu tư đúng đến đâu. Nhiều năm qua, chiêu thả mồi bằng tỷ suất lợi nhuận khủng để \"đổi tép bắt tôm\" đã được rất nhiều doanh nghiệp áp dụng. Tuy nhiên, bài toán trên lý thuyết đến lúc đối mặt với thực tế không hề đơn giản và chắc chắn sẽ bị sai số ít nhiều. Bởi lẽ, khi nguồn cung sẵn sàng vận hành đồng loạt tăng cao, theo quy luật thị trường, giá thuê, giá khai thác sẽ giảm, kéo theo biên lợi nhuận thấp hơn kỳ vọng. Thị trường cần vượt qua bài test này để tìm sự cân bằng sau chuỗi thời gian dài nóng sốt.', '<p>Sau chu kỳ n&oacute;ng sốt d&agrave;i (2014-2017), năm Mậu Tuất được dự b&aacute;o đầy lạc quan, song thận trọng kh&ocirc;ng thừa v&igrave; thị trường đang tiềm ẩn rủi ro.<br />\r\nChủ tịch Hội c&agrave; ph&ecirc; bất động sản, Trần Kh&aacute;nh Quang cho biết, sẽ kh&ocirc;ng c&oacute; một bức tranh to&agrave;n m&agrave;u hồng d&agrave;nh cho thị trường địa ốc năm 2018 v&agrave; chắc chắn kh&oacute; tr&aacute;nh khỏi những g&oacute;c chết m&agrave;u x&aacute;m.</p>\r\n\r\n<p>Do đ&oacute;, thận trọng l&agrave; ti&ecirc;u ch&iacute; nh&agrave; đầu tư cần đặt l&ecirc;n h&agrave;ng đầu trong năm Mậu Tuất d&ugrave; thị trường vẫn c&ograve;n nhiều cơ hội tăng trưởng. &Ocirc;ng Quang chia sẻ 4 l&yacute; do cảnh b&aacute;o nh&agrave; đầu tư bất động sản n&ecirc;n cảnh gi&aacute;c v&agrave; tỉnh t&aacute;o trước khi quyết định &quot;chọn mặt gửi v&agrave;ng&quot; trong năm mới.</p>\r\n\r\n<p>Mặt bằng gi&aacute; đang bị đẩy l&ecirc;n qu&aacute; cao</p>\r\n\r\n<p>Theo chuy&ecirc;n gia n&agrave;y, gi&aacute; căn hộ đ&atilde; tăng trưởng trung b&igrave;nh 15-20% trong xuy&ecirc;n suốt 4 năm qua: 2014-2017, vị chi đội gi&aacute; khoảng 60-80% trong cả chu kỳ. C&ugrave;ng cột mốc thời gian đ&oacute;, gi&aacute; đất cũng đ&atilde; leo thang b&igrave;nh qu&acirc;n 25-30%, tức đội th&ecirc;m 100-120% trong 4 năm li&ecirc;n tiếp. Xu thế đi l&ecirc;n của gi&aacute; căn hộ v&agrave; gi&aacute; đất vẫn c&ograve;n nhưng rất kh&oacute; đo&aacute;n định mức tăng trong năm 2018 sẽ l&agrave; bao nhi&ecirc;u v&agrave; c&ograve;n t&ugrave;y thuộc rất lớn v&agrave;o vị tr&iacute;, khu vực.</p>\r\n\r\n<p>Đ&oacute; l&agrave; chưa kể đến việc h&agrave;ng loạt chủ đầu tư đ&atilde; c&oacute; động th&aacute;i l&agrave;m gi&aacute; bất động sản nhiều năm qua bằng thủ thuật định mức gi&aacute; b&aacute;n cao nhất trong lịch sử của khu vực t&agrave;i sản đ&oacute; tọa lạc. Khi nh&agrave; đất đ&atilde; bị đẩy l&ecirc;n ngưỡng gi&aacute; cao, thị trường bước v&agrave;o chu kỳ loạn gi&aacute;, khi đ&oacute; t&agrave;i sản bị thổi l&ecirc;n v&ugrave;ng gi&aacute; vượt qu&aacute; gi&aacute; trị vốn c&oacute;, l&agrave; l&uacute;c bắt đầu t&iacute;ch tụ bong b&oacute;ng gi&aacute;. Nh&agrave; đầu tư cần thận trọng thẩm định gi&aacute; v&agrave; tiềm năng khi mua, đừng xuống tiền m&ugrave; qu&aacute;ng, v&igrave; chỉ c&oacute; người mua lầm chứ người b&aacute;n kh&ocirc;ng lầm.</p>\r\n\r\n<p>4 l&yacute; do n&ecirc;n thận trọng khi đầu tư bất động sản năm 2018</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"4 lÃ½ do nÃªn tháº­n trá»ng khi Äáº§u tÆ° báº¥t Äá»ng sáº£n nÄm 2018\" src=\"https://static1.cafeland.vn/cafelandData/upload/tintuc/thitruong/2018/02/tuan-03/bds-2018-1518860612.jpg\" /></p>\r\n\r\n<p>Chuy&ecirc;n gia khuy&ecirc;n nh&agrave; đầu tư n&ecirc;n thận trọng khi quyết định nhập cuộc thị trường bất động sản TP HCM trong năm Mậu Tuất. Ảnh: Vũ L&ecirc;</p>\r\n\r\n<p>Tỷ suất sinh lời bước v&agrave;o v&ograve;ng th&aacute;ch đố</p>\r\n\r\n<p>Năm 2018 l&agrave; thời điểm rất nhiều dự &aacute;n bất động sản bước v&agrave;o giai đoạn b&agrave;n giao sản phẩm. Đ&acirc;y l&agrave; cột mốc bắt buộc phải l&agrave;m b&agrave;i test kiểm tra thực tế khả năng cam kết lợi nhuận của chủ đầu tư đ&uacute;ng đến đ&acirc;u. Nhiều năm qua, chi&ecirc;u thả mồi bằng tỷ suất lợi nhuận khủng để &quot;đổi t&eacute;p bắt t&ocirc;m&quot; đ&atilde; được rất nhiều doanh nghiệp &aacute;p dụng. Tuy nhi&ecirc;n, b&agrave;i to&aacute;n tr&ecirc;n l&yacute; thuyết đến l&uacute;c đối mặt với thực tế kh&ocirc;ng hề đơn giản v&agrave; chắc chắn sẽ bị sai số &iacute;t nhiều. Bởi lẽ, khi nguồn cung sẵn s&agrave;ng vận h&agrave;nh đồng loạt tăng cao, theo quy luật thị trường, gi&aacute; thu&ecirc;, gi&aacute; khai th&aacute;c sẽ giảm, k&eacute;o theo bi&ecirc;n lợi nhuận thấp hơn kỳ vọng. Thị trường cần vượt qua b&agrave;i test n&agrave;y để t&igrave;m sự c&acirc;n bằng sau chuỗi thời gian d&agrave;i n&oacute;ng sốt.</p>\r\n\r\n<p>Ng&acirc;n h&agrave;ng thận trọng cho vay bất động sản</p>\r\n\r\n<p>Nh&agrave; đầu tư trước khi đưa ra quyết định d&ugrave;ng đ&ograve;n bẩy t&agrave;i ch&iacute;nh để mua nh&agrave;, đất cần lưu &yacute; rằng năm 2018 nh&agrave; băng sẽ kh&ocirc;ng dễ d&atilde;i cho vay bất động sản. Sở dĩ c&aacute;c định chế t&agrave;i ch&iacute;nh d&egrave; dặt cho vay đầu tư địa ốc v&igrave; tỷ trọng t&iacute;n dụng của nh&oacute;m n&agrave;y đang ở mức cao. Sự thận trọng của ng&acirc;n h&agrave;ng c&oacute; thể tạo n&ecirc;n một số r&agrave;o cản nhất định nhưng đ&acirc;y l&agrave; ph&eacute;p thử cần thiết v&agrave; t&iacute;ch cực.</p>\r\n\r\n<p>M&atilde;i lực c&oacute; thể chậm lại</p>\r\n\r\n<p>Trong c&aacute;c năm 2014-2017 sức mua nh&agrave; đất l&ecirc;n cao v&agrave; li&ecirc;n tục lập kỷ lục thanh khoản trong lịch sử. Nhưng năm 2018 điều n&agrave;y c&oacute; thể sẽ kh&ocirc;ng diễn ra v&igrave; từ nửa cuối năm 2017 dấu hiệu giảm tốc đ&atilde; xuất hiện ở thị trường căn hộ. Hiện thanh khoản bất động sản liền thổ (đất hoặc t&agrave;i sản gắn liền với đất) vẫn cực tốt, nhưng cột gi&aacute; đ&atilde; bị thổi l&ecirc;n ngưỡng đỉnh sau cao hơn đỉnh trước.</p>\r\n\r\n<p>C&acirc;u hỏi đặt ra l&agrave; giai đoạn tất cả c&ugrave;ng mua v&agrave;o đang diễn ra tốt đẹp nhưng thị trường sẽ phản ứng thế n&agrave;o khi tất cả c&ugrave;ng b&aacute;n ra? C&acirc;u trả lời l&agrave; m&atilde;i lực c&oacute; thể chậm lại, như một phản xạ tự nhi&ecirc;n của thị trường. Do đ&oacute;, nh&agrave; đầu tư đừng qu&ecirc;n lưu &yacute; vấn đề n&agrave;y để c&oacute; kế hoạch cụ thể cho d&ograve;ng vốn ngắn, trung hay d&agrave;i hạn.</p>\r\n\r\n<p>&Ocirc;ng Quang nhận x&eacute;t, thuyết chủ quan đ&atilde; từng được &aacute;p dụng rất thuận lợi trong c&aacute;c năm 2014-2015-2016-2017 v&agrave; dẫn dắt nh&agrave; đầu tư về đ&iacute;ch th&agrave;nh c&ocirc;ng. Tuy nhi&ecirc;n, năm Mậu Tuất cần một khoảng lặng cho thuyết ho&agrave;i nghi v&agrave; phản biện. Nh&agrave; đầu tư cần một c&aacute;i đầu lạnh để nhập cuộc thị trường một c&aacute;ch c&oacute; chọn lọc chứ kh&ocirc;ng n&ecirc;n dốc vốn đại tr&agrave; v&agrave;o mọi ph&acirc;n kh&uacute;c.</p>', 0, 0, '1', 174),
(13, 'chungcunguyenduccanhcafeland-1524577252-9937.jpg', 'hien-tuong-sot-at-hien-nay-se-khong-lap-lai-kich-ban-10-nam-truoc', 'Hiện tượng sốt đất hiện nay sẽ không lặp lại kịch bản 10 năm trước', 'Đó là nhận định của các chuyên gia thị trường bất động sản về hiện tượng sốt đất hiện nay, vấn đề này chưa thể hình thành bong bóng bất động sản và không có gì đáng lo ngại. Theo đó, giá thị trường hiện phản ứng rất nhanh, thông minh, không phải như chục năm trước.', '<p>Đ&oacute; l&agrave; nhận định của c&aacute;c chuy&ecirc;n gia thị trường bất động sản về hiện tượng sốt đất hiện nay, vấn đề n&agrave;y chưa thể h&igrave;nh th&agrave;nh bong b&oacute;ng bất động sản v&agrave; kh&ocirc;ng c&oacute; g&igrave; đ&aacute;ng lo ngại. Theo đ&oacute;, gi&aacute; thị trường hiện phản ứng rất nhanh, th&ocirc;ng minh, kh&ocirc;ng phải như chục năm trước.</p>\r\n\r\n<p><img alt=\"Hiện tượng sốt đất hiện nay sẽ không lặp lại kịch bản 10 năm trước\" src=\"https://static1.cafeland.vn/cafelandData/upload/tintuc/phantichnhandinh/2018/04/tuan-04/chungcunguyenduccanhcafeland-1524577252.jpg\" style=\"height:284px; width:600px\" /></p>\r\n\r\n<p><em>Kh&oacute; lặp lại kịch bản &quot;bong b&oacute;ng&quot;&nbsp;<a href=\"https://cafeland.vn/\" target=\"_bank\"><strong>bất động sản</strong></a>&nbsp;như 10 năm trước</em></p>\r\n\r\n<p>Năm 2007, cơn sốt đất tr&ecirc;n tr&ecirc;n thị trường bất động sản h&igrave;nh th&agrave;nh bởi sự liều lĩnh của giới đầu tư v&agrave; c&ocirc;ng cụ đ&ograve;n bẩy t&agrave;i ch&iacute;nh được giới n&agrave;y sử dụng rất chuy&ecirc;n nghiệp. Nh&agrave; nh&agrave; người người kinh doanh đất l&agrave; những n&eacute;t vẽ tạo n&ecirc;n bức tranh sốt đất thời điểm đ&oacute;.</p>\r\n\r\n<p><strong>Kh&oacute; xảy ra t&igrave;nh trạng như 10 năm trước</strong></p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; về cơn sốt đất giai đoạn 2007 &ndash; 2008, trước diễn biến của cơn sốt&nbsp;<a href=\"https://cafeland.vn/du-an/dat-chia-lo/\" target=\"_bank\"><strong>đất nền</strong></a>&nbsp;hiện nay, c&acirc;u hỏi đặt ra l&agrave; liệu thị trường c&oacute; lặp lại kịch bản đổ vỡ 10 năm trước? Trả lời c&acirc;u hỏi n&agrave;y, &ocirc;ng Phạm Thanh Hưng, Ph&oacute; Chủ tịch HĐQT&nbsp;<a href=\"https://cafeland.vn/danh-ba/dau-tu-du-an/cong-ty-co-phan-tap-doan-the-ky-cen-group-580.html\" target=\"_bank\"><strong>Cengroup</strong></a>&nbsp;cho biết, chu kỳ th&ocirc;ng thường từ 7 &ndash; 10 năm, đấy l&agrave; dự b&aacute;o về quy luật. C&ograve;n lại phải xem những t&aacute;c động đến từ quy hoạch, hạ tầng, ch&iacute;nh s&aacute;ch vĩ m&ocirc; c&oacute; ưu ti&ecirc;n ph&aacute;t triển đến ph&acirc;n kh&uacute;c đ&oacute; hay kh&ocirc;ng như V&acirc;n Phong, V&acirc;n Đồn c&oacute; được ph&ecirc; duyệt th&aacute;ng 7 tới kh&ocirc;ng.</p>\r\n\r\n<p>Theo &ocirc;ng Hưng, năm 2018 được coi l&agrave; năm v&ocirc; c&ugrave;ng quan trọng đối với nền kinh tế Việt Nam. Nếu nh&agrave; đầu tư kh&ocirc;ng bắt nhịp thời điểm n&agrave;y sẽ mất cơ hội v&agrave;ng trong nhiều lĩnh vực kh&ocirc;ng ri&ecirc;ng bất động sản.&ldquo;Năm nay thực hiện cam kết điều khoản WTO, mở cửa thị trường b&aacute;n lẻ, cho người nước ngo&agrave;i mua nh&agrave;&hellip; c&aacute;c yếu tố vĩ m&ocirc;, ch&iacute;nh trị rất vượng. Thị trường bất động sản bắt đầu s&ocirc;i động trở lại từ năm 2015 th&igrave; từ đ&acirc;y đến 2018 sẽ ở đ&acirc;u đ&oacute; giữa chu kỳ, l&agrave;&nbsp; thời điểm rất tốt, chưa phải l&agrave; đỉnh nhưng đang tăng tốc tốt.</p>\r\n\r\n<p>Về vấn đề n&agrave;y, &ocirc;ng Nguyễn Văn Đ&iacute;nh Ph&oacute; Chủ tịch Hội m&ocirc;i giới bất động sản Việt Nam cho rằng, trong một g&oacute;c nh&igrave;n rộng hơn th&igrave; thị trường đất nền đang xoay quanh c&aacute;c nh&oacute;m đầu tư, đầu cơ, trong khi tỷ trọng mua thực đang hơi &iacute;t. &ldquo;T&ocirc;i cho rằng thị trường đang c&oacute; độ nguy hiểm. Tuy nhi&ecirc;n, người ti&ecirc;u d&ugrave;ng cũng rất th&ocirc;ng minh. Độ ứng xử của c&aacute;c cơ quan quản l&yacute; rất tốt, sẵn s&agrave;ng c&oacute; ch&iacute;nh s&aacute;ch ứng xử kịp thời khi c&oacute; vấn đề.</p>\r\n\r\n<p>&ldquo;Như thị trường Bắc Ninh, những dự &aacute;n trước khi ra h&agrave;ng đều c&oacute; sự thăm d&ograve; thị trường, chia nhiều đợt b&aacute;n, v&agrave; trong đợt đầu với gi&aacute; thấp th&igrave; lượng ra đến đầu hết đến đấy. Nhưng đến đợt b&aacute;n 2, tăng gi&aacute; b&aacute;n th&igrave; giao dịch đ&atilde; chững lại đ&aacute;ng kể. T&ocirc;i đ&aacute;nh gi&aacute; thị trường hiện phản ứng rất nhanh, th&ocirc;ng minh, kh&ocirc;ng phải như chục năm trước, cứ đẩy l&ecirc;n l&agrave; lao v&agrave;o mua.</p>\r\n\r\n<p>Thị trường ch&uacute;ng ta về bản chất đang c&oacute; sự ổn định rất tốt.C&aacute;c th&agrave;nh tố tham gia thị trường đều c&oacute; sự trưởng th&agrave;nh, kiểm so&aacute;t nh&agrave; nước tốt hơn n&ecirc;n c&oacute; thể y&ecirc;n t&acirc;m việc bong b&oacute;ng, đổ vỡ ở cấp độ cao l&agrave; kh&oacute; xảy ra&rdquo;, &ocirc;ng Đ&iacute;nh nhận định.</p>\r\n\r\n<p><img alt=\"Hiện tượng sốt đất hiện nay sẽ không lặp lại kịch bản 10 năm trước\" src=\"https://static1.cafeland.vn/cafelandData/upload/tintuc/phantichnhandinh/2018/04/tuan-04/hientuongsotdatnencafeland-1524577386.jpg\" style=\"height:361px; width:600px\" /></p>\r\n\r\n<p><em>Gi&aacute; đất nền v&ugrave;ng ven th&agrave;nh phố đang sốt, tuy nhi&ecirc;n kh&ocirc;ng đ&aacute;ng lo ngại. Ảnh minh họa&nbsp;</em></p>\r\n\r\n<p><strong>Thị trường chưa thể h&igrave;nh th&agrave;nh bong b&oacute;ng bất động sản</strong></p>\r\n\r\n<p>B&igrave;nh luận về vấn đề nay, &ocirc;ng Dương Đức Hiển, Gi&aacute;m đốc kinh doanh nh&agrave; ở Savills miền Bắc v&agrave; miền Trung Việt Nam cho rằng, thị trường hiện nay chưa thể h&igrave;nh th&agrave;nh bong b&oacute;ng bất động sản. Song những c&aacute;i đang xảy ra cục bộ th&igrave; dễ h&igrave;nh dung hơn. Cụ thể, tại c&aacute;c dự &aacute;n được ph&aacute;t triển ở c&aacute;c địa b&agrave;n khu vực xuy&ecirc;n suốt khắp đất nước ở g&oacute;c độ cục bộ c&aacute;c địa phương kh&ocirc;ng c&oacute; g&igrave; đ&aacute;ng lo ngại.</p>\r\n\r\n<p>Theo &ocirc;ng n&agrave;y, hiện nay thời đại c&ocirc;ng nghệ th&ocirc;ng tin rất tốt n&ecirc;n việc lan truyền th&ocirc;ng tin rất nhanh.Nếu xảy ra bong b&oacute;ng th&igrave; thị trường chỉ vỡ khi nh&agrave; đầu tư d&ugrave;ng đ&ograve;n bẩy t&agrave;i ch&iacute;nh nhiều, kh&ocirc;ng c&oacute; giao dịch th&igrave; mới l&agrave; bong b&oacute;ng.</p>\r\n\r\n<p>Về việc l&agrave;m sao để giảm tải rủi ro khi đầu tư v&agrave;o bất động sản đặc biệt l&agrave; đất nền? &Ocirc;ng Hiển cho rằng phải x&aacute;c định được vị tr&iacute; đầu tư. &ldquo;Nh&agrave; đầu tư cần t&igrave;m hiểu, t&ocirc;i đi mua nh&agrave; sẽ l&agrave;m việc với c&aacute;c m&ocirc;i giới đến từ c&aacute;c doanh nghiệp đơn vị m&ocirc;i giới chuy&ecirc;n nghiệp, uy t&iacute;n tr&ecirc;n thị trường. Bản th&acirc;n những c&ocirc;ng ty n&agrave;y c&ugrave;ng l&agrave;m việc với chủ đầu tư&rdquo;, &ocirc;ng Hiển n&oacute;i.</p>\r\n\r\n<p>Cũng theo &ocirc;ng Hiển,c&aacute;c nh&agrave; đầu tư phải cảnh tỉnh lại, đừng đi theo bầy đ&agrave;n, khi bắt đầu đầu tư th&igrave; t&iacute;nh chất ph&aacute;p l&yacute; v&agrave; tiềm năng ph&aacute;t triển trong tương lai phải c&oacute; cơ sở.</p>\r\n\r\n<p>Trong khi đ&oacute;, &ocirc;ng Hưng cho rằng, t&iacute;nh thanh khoản của đất nền tại c&aacute;c thời điểm rất kh&aacute;c. C&oacute; thể l&ecirc;n, xuống rất nhanh. Do đ&oacute;, nh&agrave; đầu tư x&aacute;c định t&acirc;m thế hoặc r&uacute;t rất nhanh nếu kh&ocirc;ng r&uacute;t được phải chờ đến chu kỳ tiếp theo.</p>\r\n\r\n<p>&ldquo;N&ecirc;n đặt ra một nguy&ecirc;n tắc đầu tư như ở s&ograve;ng bạc mang 100 triệu th&igrave; đ&uacute;ng hết giờ hoặc hết tiền n&ecirc;n đi về, đầu tư cũng như vậy, hoặc chốt lời, hoặc cắt lỗ, hoặc thời gian dự kiến hết thời gian th&igrave; th&ocirc;i. Cần phải c&oacute; nguy&ecirc;n tắc đầu tư cho bản th&acirc;n m&igrave;nh.</p>\r\n\r\n<p>Về ph&iacute;a ch&iacute;nh quyền, theo &ocirc;ng Đ&iacute;nh, để hạn chế t&igrave;nh trạng đầu cơ, gom h&agrave;ng thổi gi&aacute; đất, cầnphải kiểm so&aacute;t hoạt động mua b&aacute;n, c&aacute;c s&agrave;n giao dịch, c&aacute;c nh&agrave; m&ocirc;i giới kh&ocirc;ng chuy&ecirc;n. Hoạt động n&agrave;y đang bị bu&ocirc;ng lỏng trong quản l&yacute;.Luật quy định m&ocirc;i giới phải được đ&agrave;o tạo, cấp chứng chỉ h&agrave;nh nghề.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&ocirc;ng t&aacute;c quản l&yacute; của nh&agrave; nước hiện chưa mạnh, mặc d&ugrave; nghị định 139 mới được ban h&agrave;nh. B&ecirc;n cạnh đ&oacute;, cần phải đẩy mạnh c&ocirc;ng bố những th&ocirc;ng tin quy hoạch dự &aacute;n, th&ocirc;ng tin gi&aacute; thị trường sẽ gi&uacute;p ngăn chặn được việc đầu cơ gi&aacute; đất.</p>', 1, 1, '2', 183),
(14, '1234-8972-1598927817-7344.jpg', 'du-lich-thuc-ay-bat-ong-san-khu-ong-ha-noi', 'Du lịch thúc đẩy bất động sản khu Đông Hà Nội', 'Từ nhiều năm nay, Hà Nội luôn lọt vào top những điểm du lịch hấp dẫn châu Á. Theo thống kê năm 2019, lượng khách du lịch đến Hà Nội ước đạt gần 29 triệu lượt khách, tổng doanh thu từ du lịch đạt 103.807 tỷ đồng, tăng 34% so với năm 2018.', '<p>Ph&iacute;a Đ&ocirc;ng H&agrave; Nội c&oacute; nhiều tiềm năng trở th&agrave;nh phố du lịch mới nhờ những lợi thế hiện hữu v&agrave; sự xuất hiện của c&aacute;c dự &aacute;n giải tr&iacute; sầm uất.</p>\r\n\r\n<p>Từ nhiều năm nay, H&agrave; Nội lu&ocirc;n lọt v&agrave;o top những điểm du lịch hấp dẫn ch&acirc;u &Aacute;. Theo thống k&ecirc; năm 2019, lượng kh&aacute;ch du lịch đến H&agrave; Nội ước đạt gần 29 triệu lượt kh&aacute;ch, tổng doanh thu từ du lịch đạt 103.807 tỷ đồng, tăng 34% so với năm 2018.</p>\r\n\r\n<p>Mang lại doanh thu lớn nhưng c&aacute;c chauy&ecirc;n gia đ&aacute;nh gi&aacute;, thị trường du lịch H&agrave; Nội phần lớn vẫn chỉ tập trung ở c&aacute;c địa điểm quen thuộc như Phố cổ, Hồ T&acirc;y, Hồ Ho&agrave;n Kiếm, Ho&agrave;ng Th&agrave;nh Thăng Long... v&agrave; thiếu những điểm vui chơi, giải tr&iacute; c&oacute; quy m&ocirc; lớn. Kh&aacute;ch du lịch đến H&agrave; Nội vẫn c&ograve;n thiếu c&aacute;c dịch vụ du lịch giải tr&iacute; đa dạng v&agrave; hấp dẫn, k&eacute;o theo đ&oacute; l&agrave; mức chi ti&ecirc;u hạn chế, chủ yếu kh&aacute;ch chi tiền cho du lịch trải nghiệm, kh&aacute;m ph&aacute; thắng cảnh, văn h&oacute;a.</p>\r\n\r\n<p><img alt=\"\" src=\"https://demo-saigonwebsite.com/bds/upload/elfinder/1234-8972-1598927817.jpg\" /></p>\r\n\r\n<p>Kh&aacute;ch du lịch H&agrave; Nội.</p>\r\n\r\n<p>Theo Sở Du lịch H&agrave; Nội, chi ti&ecirc;u b&igrave;nh qu&acirc;n một lượt kh&aacute;ch quốc tế mỗi ng&agrave;y tại H&agrave; Nội dao động từ 2,1 triệu đồng đến hơn 2,6 triệu đồng, kh&aacute;ch nội địa từ 1,39 triệu đồng đến 1,75 triệu đồng. Con số n&agrave;y thấp hơn so với chi ph&iacute; kh&aacute;ch du lịch bỏ ra cho một ng&agrave;y ở Bangkok (173 USD - gần 4 triệu đồng) hay Singapore (286 USD - hơn 6 triệu đồng).</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia, c&aacute;c thị trường du lịch nổi tiếng với doanh thu lớn thường ph&aacute;t triển song song du lịch trải nghiệm, giải tr&iacute; v&agrave; kh&aacute;m ph&aacute;. Điển h&igrave;nh như Bangkok c&oacute; C&ocirc;ng vi&ecirc;n giải tr&iacute; Dream World, Safari World; Singapore c&oacute; C&ocirc;ng vi&ecirc;n chủ đề Universal Studios, Adventure Cove Waterpark, casino Marina Bay Sands...</p>\r\n\r\n<p>Nhận thấy tiềm năng c&ograve;n bỏ ngỏ, nhiều dự &aacute;n lớn được đầu tư x&acirc;y dựng nhằm tạo c&uacute; h&iacute;ch đột ph&aacute; trong việc ph&aacute;t triển kinh tế du lịch. Trong đ&oacute;, Gia L&acirc;m đang l&agrave; đ&iacute;ch đến của nhiều nh&agrave; đầu tư.</p>\r\n\r\n<p>Nằm ở ph&iacute;a Đ&ocirc;ng H&agrave; Nội, giao thoa giữa hai v&ugrave;ng văn h&oacute;a Kinh Bắc v&agrave; Thăng Long, Gia L&acirc;m c&oacute; nhiều lợi thế hiện hữu để trở th&agrave;nh một phố du lịch mới tại Thủ đ&ocirc;. Quỹ đất lớn, vị tr&iacute; gần trung t&acirc;m nội đ&ocirc;, hạ tầng từng bước ho&agrave;n thiện, v&ugrave;ng đất ph&iacute;a b&ecirc;n kia s&ocirc;ng Hồng được đ&aacute;nh gi&aacute; c&oacute; tiềm năng lớn để ph&aacute;t triển c&aacute;c sản phẩm du lịch giải tr&iacute;.</p>\r\n\r\n<p>Nhiều dự &aacute;n giải tr&iacute; mới chỉ c&oacute; tại c&aacute;c thị trường Nha Trang, Nam Hội An, Ph&uacute; Quốc nay cũng sắp xuất hiện ngay tại Gia L&acirc;m như VinWonders, Safari Vinpearl Land... Lợi thế về tiềm năng kh&aacute;ch du lịch lớn, phố du lịch mới Gia L&acirc;m trong tương lai sẽ thu h&uacute;t một lượng du kh&aacute;ch kh&ocirc;ng nhỏ đến trải nghiệm, th&uacute;c đẩy nền kinh tế - x&atilde; hội c&ugrave;ng như gia tăng gi&aacute; trị bất động sản cho khu vực ph&iacute;a Đ&ocirc;ng.</p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia đ&aacute;nh gi&aacute;, nhờ du lịch, bất động sản khu vực Gia L&acirc;m được hưởng lợi, c&aacute;c dự &aacute;n nh&agrave; ở c&oacute; xu hướng dịch chuyển dần về ph&iacute;a Đ&ocirc;ng, đồng thời thu h&uacute;t sự quan t&acirc;m của nhiều kh&aacute;ch h&agrave;ng. Trong đ&oacute;, nổi bật l&agrave; dự &aacute;n Hanhomes Blue Star, tọa lạc ngay tại khu 31ha, trung t&acirc;m thị trấn Tr&acirc;u Q&ugrave;y.</p>\r\n\r\n<p>Sở hữu vị tr&iacute; đắc địa, dễ d&agrave;ng kết nối tới c&aacute;c địa điểm vui chơi giải tr&iacute;, c&aacute;ch VinWonders, Safari Vinpearl Land chỉ 700m, Hanhomes Blue Star đem đến cho cư d&acirc;n tương lai một cuộc sống nhộn nhịp, gi&agrave;u trải nghiệm b&ecirc;n cạnh phố du lịch mới. Chỉ v&agrave;i bước ch&acirc;n, cư d&acirc;n c&oacute; thể &quot;chạm&quot; tới những trung t&acirc;m giải tr&iacute; sầm uất nhất khu vực.&quot;Hanhomes Blue Star l&agrave; lựa chọn th&iacute;ch hợp để cư d&acirc;n bắt đầu cuộc sống hiện đại, s&ocirc;i động, đầy đủ tiện &iacute;ch trong một m&ocirc;i trường &quot;phố mới&quot; văn minh, giao thoa văn h&oacute;a quốc tế v&agrave; bản địa&quot;, chủ đầu tư nhấn mạnh.</p>\r\n\r\n<p><strong>T&acirc;m Anh</strong></p>', 1, 1, '1', 184),
(15, 'a-tb-bds-khu-dong-tp-vu-le-2691-1540720572-6835.jpg', 'e-xuat-tang-he-so-ieu-chinh-gia-at-tp-hcm-len-toi-30', 'Đề xuất tăng hệ số điều chỉnh giá đất TP HCM lên tới 30%', 'Mức trần bảng giá đất TP HCM thấp hơn thị trường một tỷ đồng mỗi m2 / Khung giá đất TP HCM nhiều nơi chỉ bằng 5% thị trường\r\n\r\nCuối tháng 9/2018 Sở Tài chính TP HCM đã có văn bản lấy ý kiến về hệ số điều chỉnh giá đất áp dụng cho năm 2019 trên địa bàn theo hướng sẽ tăng hệ số điều chỉnh lên 0,4 lần so với năm 2018. Hệ số này được áp dụng trong trường hợp các tổ chức, cá nhân, hộ gia đình thực hiện nghĩa vụ tài chính thủ tục hợp pháp hóa quyền sở hữu nhà, quyền sử dụng đất ở.', '<h2><span style=\"font-size:16px\">Quận nội th&agrave;nh S&agrave;i G&ograve;n được đề xuất hệ số điều chỉnh gi&aacute; đất mới tăng 19% so với năm 2018, c&ograve;n huyện Cần Giờ tăng 30%.</span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Mức trần bảng gi&aacute; đất TP HCM thấp hơn thị trường một tỷ đồng mỗi m2&nbsp;/&nbsp;Khung gi&aacute; đất TP HCM nhiều nơi chỉ bằng 5% thị trường</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cuối th&aacute;ng 9/2018 Sở T&agrave;i ch&iacute;nh TP HCM đ&atilde; c&oacute; văn bản lấy &yacute; kiến về hệ số điều chỉnh gi&aacute; đất &aacute;p dụng cho năm 2019 tr&ecirc;n địa b&agrave;n theo hướng sẽ tăng hệ số điều chỉnh l&ecirc;n 0,4 lần so với năm 2018. Hệ số n&agrave;y được &aacute;p dụng trong trường hợp c&aacute;c tổ chức, c&aacute; nh&acirc;n, hộ gia đ&igrave;nh thực hiện nghĩa vụ t&agrave;i ch&iacute;nh thủ tục hợp ph&aacute;p h&oacute;a quyền sở hữu nh&agrave;, quyền sử dụng đất ở.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Theo văn bản n&agrave;y, TP HCM được ph&acirc;n l&agrave;m 5 khu vực để &aacute;p dụng hệ số điều chỉnh gi&aacute; đất. Khu vực một gồm c&aacute;c quận 1, 3, 4, 5, 10, 11, T&acirc;n B&igrave;nh v&agrave; Ph&uacute; Nhuận. Khu vực hai gồm c&aacute;c quận 6, 7, G&ograve; Vấp, B&igrave;nh Thạnh v&agrave; T&acirc;n Ph&uacute;. Khu vực ba gồm c&aacute;c quận 2, 8, 9, 12, B&igrave;nh T&acirc;n v&agrave; Thủ Đức. Khu vực bốn gồm c&aacute;c huyện: B&igrave;nh Ch&aacute;nh, Củ Chi, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n. Cuối c&ugrave;ng huyện Cần Giờ được xếp v&agrave;o khu vực năm.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Văn bản lấy &yacute; kiến bổ sung đối tượng hộ gia đ&igrave;nh, c&aacute; nh&acirc;n đang sử dụng đất c&oacute; hoạt động chuyển mục đ&iacute;ch sử dụng (thuộc trường hợp tiếp tục sử dụng theo h&igrave;nh thức giao đất c&oacute; thu tiền sử dụng đất), hệ số điều chỉnh l&agrave; 1,5 lần gi&aacute; đất do UBND TP HCM quy định v&agrave; c&ocirc;ng bố.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Trường hợp tổ chức được Nh&agrave; nước giao đất c&oacute; thu tiền sử dụng đất th&ocirc;ng qua đấu gi&aacute;, c&ocirc;ng nhận quyền sử dụng đất, cho ph&eacute;p chuyển nhượng v&agrave; trường hợp c&aacute;c hộ gia đ&igrave;nh, c&aacute; nh&acirc;n được giao đất hoặc x&aacute;c định đơn gi&aacute; thu&ecirc; đất trả tiền h&agrave;ng năm chuyển sang trả một lần hay t&igrave;nh huống x&aacute;c định gi&aacute; thu&ecirc; để cổ phần h&oacute;a... được đề xuất hệ số điều chỉnh cao hơn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể, khu vực một hệ số điều chỉnh gi&aacute; đất mới cho năm 2019 l&agrave; 2,5 lần gi&aacute; đất do UBND TP HCM quy định v&agrave; c&ocirc;ng bố. Lần lượt khu vực hai c&oacute; hệ số điều chỉnh l&agrave; 2,3 lần, khu vực ba l&agrave; 2,1 lần. Trong khi đ&oacute; khu vực bốn c&oacute; hệ số điều chỉnh gi&aacute; đất l&agrave; 1,9 lần c&ograve;n khu vực năm, tức huyện Cần Giờ sẽ &aacute;p hệ số điều chỉnh gi&aacute; đất mới l&agrave; 1,7 lần.</span></p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:16px\"><img alt=\"Bất động sản khu Đông TP HCM. Ảnh: Vũ Lê\" src=\"https://i-kinhdoanh.vnecdn.net/2018/10/28/a-tb-bds-khu-dong-tp-vu-le-2691-1540720572.jpg\" /></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:16px\">Bất động sản khu Đ&ocirc;ng TP HCM. Ảnh:&nbsp;<em>Vũ L&ecirc;</em></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style=\"font-size:16px\">Hệ số điều chỉnh đối với trường hợp đấu gi&aacute; quyền sử dụng đất để cho thu&ecirc;, thu&ecirc; đất x&aacute;c định đơn gi&aacute; h&agrave;ng năm cho chu kỳ ổn định đầu ti&ecirc;n hoặc điều chỉnh lại đơn gi&aacute; thu&ecirc; cho chu kỳ tiếp theo, được &aacute;p dụng theo 2 nh&oacute;m. Nh&oacute;m thứ nhất thu&ecirc; để kinh doanh dịch vụ, thương mại, t&agrave;i ch&iacute;nh, nh&agrave; h&agrave;ng, kh&aacute;ch sạn, nh&agrave; ở cho thu&ecirc;, văn ph&ograve;ng l&agrave;m việc v&agrave; cho thu&ecirc;, hệ số điều chỉnh lần lượt 2,5 cho khu vực một, 2,3 cho khu vực hai, 2,1 cho khu vực ba, 1,9 cho khu vực bốn v&agrave; 1,7 cho khu vực năm.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nh&oacute;m thứ hai, thu&ecirc; đất để sản xuất c&ocirc;ng nghiệp, tiểu thủ c&ocirc;ng nghiệp, x&acirc;y dựng c&ocirc;ng tr&igrave;nh c&ocirc;ng cộng c&oacute; mục đ&iacute;ch kinh doanh hoặc kết cấu hạ tầng khu c&ocirc;ng nghiệp, cảng, nh&agrave; ga... c&oacute; hệ số điều chỉnh gi&aacute; đất thấp hơn. Khu vực một hệ số điều chỉnh l&agrave; 1,7 lần, khu vực hai l&agrave; 1,6 lần, khu vực ba l&agrave; 1,55 lần, khu vực bốn v&agrave; năm l&agrave; 1,5 lần.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nhằm đảm bảo t&iacute;nh chặt chẽ trong việc tổ chức, thực hiện, Sở T&agrave;i ch&iacute;nh đề nghị c&aacute;c Sở, ng&agrave;nh v&agrave; UBND quận, huyện to&agrave;n th&agrave;nh phố sớm c&oacute; văn bản đ&oacute;ng g&oacute;p &yacute; kiến để tổng hợp tr&igrave;nh UBND th&agrave;nh phố xem x&eacute;t, ra quyết định.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mới đ&acirc;y,&nbsp;<strong>Hiệp hội Bất động sản TP HCM (HoREA) đ&atilde; c&oacute; văn bản về vấn đề n&agrave;y gửi UBND th&agrave;nh phố</strong>. HoREA cho rằng Sở T&agrave;i ch&iacute;nh đề xuất tăng hệ số điều chỉnh gi&aacute; đất năm 2019 so với năm 2018 tăng từ 19% đến 30% cao hơn nhiều so với mức tăng hệ số điều chỉnh gi&aacute; đất năm 2018 (chỉ ở mức 5-8,33%).</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể, hệ số điều chỉnh gi&aacute; đất khu vực một năm 2017 &aacute;p dụng l&agrave; 2 lần bảng gi&aacute; đất UBND TP HCM quy định v&agrave; c&ocirc;ng bố; năm 2018 l&agrave; 2,1 (tăng 5% so với năm 2017) th&igrave; năm 2019 được đề xuất cộng th&ecirc;m 0,4 lần n&ecirc;n th&agrave;nh 2,5 lần, tăng 19% so với năm 2018. C&ograve;n khu vực năm hệ số điều chỉnh gi&aacute; đất năm 2017 l&agrave; 1,2 lần, năm 2018 nh&iacute;ch l&ecirc;n 1,3 lần (tăng 8,33% so với năm 2017) v&agrave; mức đề xuất năm 2019 l&agrave; 1,7 (tăng 30% so với năm 2018).</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hiệp hội kiến nghị UBND TP HCM n&ecirc;n xem x&eacute;t th&ecirc;m chỉ số gi&aacute; (CPI) của đ&ocirc; thị n&agrave;y để lấy &yacute; kiến hệ số điều chỉnh gi&aacute; đất tr&ecirc;n địa b&agrave;n. CPI 9 th&aacute;ng đầu năm 2018 chỉ l&agrave; 3,57% so với c&ugrave;ng kỳ năm 2017, v&agrave; cả năm 2018, chỉ số CPI cũng được dự b&aacute;o kh&ocirc;ng vượt qu&aacute; 4%.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt kh&aacute;c, HoREA cũng kh&ocirc;ng đồng t&igrave;nh việc Sở T&agrave;i ch&iacute;nh vẫn xếp quận 2 v&agrave;o khu vực ba của TP HCM để x&eacute;t hệ số điều chỉnh gi&aacute; đất. Trong những năm gần đ&acirc;y, quận 2 c&oacute; tốc độ đ&ocirc; thị h&oacute;a rất cao, được đầu tư, ph&aacute;t triển đồng bộ hệ thống hạ tầng đ&ocirc; thị, hạ tầng giao th&ocirc;ng, đặc biệt l&agrave; khu đ&ocirc; thị mới Thủ Thi&ecirc;m. Thế nhưng khi ph&acirc;n chia khu vực ph&aacute;t triển của th&agrave;nh phố lại rất bất hợp l&yacute; l&agrave; quận 2 lại xếp v&agrave;o khu vực ba, thấp hơn cả quận 7 (được xếp v&agrave;o khu vực hai).</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Điều n&agrave;y chưa đảm bảo nguy&ecirc;n tắc c&ocirc;ng bằng đối với người sử dụng đất khi thực hiện nghĩa vụ nộp ng&acirc;n s&aacute;ch nh&agrave; nước, v&igrave; mức nộp ở quận 7 cao hơn quận 2, trong l&uacute;c điều kiện hạ tầng đ&ocirc; thị của hai quận n&agrave;y l&agrave; tương đương với nhau.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hiệp hội đề xuất 3 kiến nghị tr&igrave;nh UBDN TP HCM v&agrave; Sở T&agrave;i ch&iacute;nh xem x&eacute;t.<strong>&nbsp;Thứ nhất</strong>, kiến nghị xếp quận 2 v&agrave;o khu vực hai, c&ugrave;ng nh&oacute;m với quận 7 th&igrave; hợp l&yacute; hơn v&agrave; đảm bảo sự c&ocirc;ng bằng khi thực hiện nghĩa vụ nộp ng&acirc;n s&aacute;ch nh&agrave; nước.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Thứ hai</strong>, kiến nghị tiếp tục &aacute;p dụng mức tăng hệ số điều chỉnh gi&aacute; đất năm 2019 cũng tương đương c&aacute;ch t&iacute;nh mức tăng hệ số điều chỉnh gi&aacute; đất năm 2018 theo Quyết định 09/2018/QĐ-UBND, tăng từ 5%-8,33%, v&igrave; mức đề xuất tăng từ 19% đến 30% của Sở T&agrave;i ch&iacute;nh l&agrave; qu&aacute; cao v&agrave; chưa hợp l&yacute;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Thứ ba</strong>, về l&acirc;u d&agrave;i, để tăng t&iacute;nh chịu tr&aacute;ch nhiệm v&agrave; chủ động của TP HCM, Hiệp hội kiến nghị th&agrave;nh phố đề xuất với Ch&iacute;nh phủ, Quốc hội sửa đổi, bổ sung Luật Đất đai 2013 theo hướng giao thẩm quyền cho cấp tỉnh. Cụ thể UBND th&agrave;nh phố được ph&eacute;p ban h&agrave;nh Bảng gi&aacute; đất c&oacute; ni&ecirc;n độ 5 năm, h&agrave;ng năm được điều chỉnh bằng hệ số điều chỉnh gi&aacute; đất để đảm bảo thực hiện đ&uacute;ng nguy&ecirc;n tắc gi&aacute; đất ph&ugrave; hợp với gi&aacute; thị trường theo quy định của Luật Đất đai.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Vũ L&ecirc;</strong></span></p>', 1, 1, '1', 185);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `outstand` tinyint(4) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `policies`
--

INSERT INTO `policies` (`id`, `number`, `link`, `image`, `tittle`, `display`, `outstand`, `seo_id`, `content`) VALUES
(2, 1, 'chinh-sach-thanh-toan', '', 'Chính sách thanh toán', 1, 1, 14, '<p>veager</p>'),
(3, 3, '', '', 'Chính sách bảo hành', 0, 1, 31, ''),
(4, 3, '', '', 'Chính sách người dùng', 1, 0, 31, ''),
(5, 4, '', '', 'Chính sách mua hàng', 1, 0, 31, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `procedures`
--

CREATE TABLE `procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `describe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `procedures`
--

INSERT INTO `procedures` (`id`, `link`, `tittle`, `describe`, `content`, `image`, `display`, `outstand`, `number`, `seo_id`) VALUES
(1, 'fawrgfaergfwefeg', 'FAWRGFAERGfwefeg', 'ergwe', '<p>brthgw</p>', 'images (3).jpeg', 1, 1, 3, 1),
(4, 'fw', 'ƯGF', 'RƯEG', '<p>ƯERG</p>', 'images (2).jpeg', 0, NULL, 1, 113);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `real_estates`
--

CREATE TABLE `real_estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `describe` varchar(500) NOT NULL,
  `content` varchar(12000) NOT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `number` varchar(255) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `real_estates`
--

INSERT INTO `real_estates` (`id`, `image`, `link`, `tittle`, `describe`, `content`, `outstand`, `display`, `number`, `seo_id`) VALUES
(1, 'timthumb-6795.jpg', 'hoan-cong', 'Hoàn công', 'Hoàn công  là một thủ tục trong hoạt động xây dựng công trình nhằm xác nhận sự kiện chủ đầu tư, đơn vị thi công đã hoàn thành công trình xây dựng sau khi được cấp giấy phép xây dựng. Hoàn công có ý nghĩa là điều kiện bắt buộc để được cơ quan nhà nước có thẩm quyền cấp chứng nhận quyền sở hữu nhà ở, công trình khi có sự thay đổi do xây dựng.', '<p><span style=\"font-size:18px\">Ho&agrave;n c&ocirc;ng l&agrave; g&igrave;?</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Ho&agrave;n c&ocirc;ng&nbsp; l&agrave; một thủ tục trong hoạt động x&acirc;y dựng c&ocirc;ng tr&igrave;nh nhằm x&aacute;c nhận sự kiện chủ đầu tư, đơn vị thi c&ocirc;ng đ&atilde; ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh x&acirc;y dựng sau khi được cấp giấy ph&eacute;p x&acirc;y dựng. Ho&agrave;n c&ocirc;ng c&oacute; &yacute; nghĩa l&agrave; điều kiện bắt buộc để được cơ quan nh&agrave; nước c&oacute; thẩm quyền cấp chứng nhận quyền sở hữu nh&agrave; ở, c&ocirc;ng tr&igrave;nh khi c&oacute; sự thay đổi do x&acirc;y dựng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Tại sao bạn phải&nbsp;ho&agrave;n c&ocirc;ng?</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Việc thực hiện thủ tục ho&agrave;n c&ocirc;ng v&agrave; chứng nhận sự thay đổi t&agrave;i sản tr&ecirc;n đất do x&acirc;y dựng l&agrave; rất cần thiết. Đặc biệt trong trường hợp c&aacute;c c&aacute; nh&acirc;n, tổ chức tiến h&agrave;nh thế chấp t&agrave;i sản, chuyển dịch t&agrave;i sản. Việc chứng nhận t&agrave;i sản tr&ecirc;n đất v&agrave;o giấy chứng nhận l&agrave;m tăng gi&aacute; trị của t&agrave;i sản. Khi thực hiện thủ tục chuyển nhượng th&igrave; t&agrave;i sản tr&ecirc;n đất cần được chứng nhận để đủ điều kiện chuyển nhượng v&agrave; tr&aacute;nh những rắc rối về mặt ph&aacute;p l&yacute;.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Những giấy tờ cần thiết để thực hiện thủ tục ho&agrave;n c&ocirc;ng:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Giấy chứng nhận (sổ hồng, sổ đỏ)<br />\r\nTờ khai (th&ocirc;ng b&aacute;o) nộp lệ ph&iacute; trước bạ<br />\r\nQuyết định cấp số nh&agrave; (nếu c&oacute;)<br />\r\nGiấy ph&eacute;p x&acirc;y dựng<br />\r\nBản vẽ xin ph&eacute;p x&acirc;y dựng<br />\r\nBản vẽ ho&agrave;n c&ocirc;ng c&ocirc;ng tr&igrave;nh<br />\r\nBi&ecirc;n bản nghiệm thu ho&agrave;n th&agrave;nh c&ocirc;ng tr&igrave;nh<br />\r\nHợp đồng thi c&ocirc;ng<br />\r\nH&oacute;a đơn thi c&ocirc;ng<br />\r\nBản vẽ sơ đồ nh&agrave; ở, đất ở (trong trường hợp cấp đổi chủ quyền)<br />\r\nTuy những giấy tờ cần thiết như vậy nhưng kh&ocirc;ng phải ai cũng biết v&agrave; c&oacute; thời gian để thực hiện thủ tục ho&agrave;n c&ocirc;ng v&agrave; cấp chứng nhận sở hữu nh&agrave;. Nh&agrave; đất Minh Ph&aacute;t l&agrave; đơn vị chuy&ecirc;n thực hiện ho&agrave;n c&ocirc;ng cho kh&aacute;ch h&agrave;ng n&ecirc;n ch&uacute;ng t&ocirc;i sẽ gi&uacute;p cho kh&aacute;ch h&agrave;ng của m&igrave;nh:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Tư vấn c&aacute;c quy định của ph&aacute;p luật li&ecirc;n quan đến ho&agrave;n c&ocirc;ng<br />\r\nLi&ecirc;n hệ với c&aacute;c đơn vị, tổ chức để lập bản vẽ, ho&agrave;n thiện hồ sơ ho&agrave;n c&ocirc;ng<br />\r\nThay mặt kh&aacute;ch h&agrave;ng li&ecirc;n hệ với cơ quan nh&agrave; nước c&oacute; thẩm quyền để thực hiện việc cập nhật biến động t&agrave;i sản v&agrave;o chủ quyền hoặc cấp đổi giấy chứng nhận</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Bảng gi&aacute; ph&iacute; dịch vụ ho&agrave;n c&ocirc;ng c&ocirc;ng tr&igrave;nh:</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Dưới 100m2 s&agrave;n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 15.000.000 VNĐ<br />\r\nTừ 100m2 đến dưới 200m2: 18.000.000 VNĐ<br />\r\nTừ 200m2 đến dưới 300m2: 25.000.000 VNĐ<br />\r\nTừ 300m2 đến dưới 400m2: 29.000.000 VNĐ<br />\r\nTừ 400m2 đến 500m2 &nbsp; &nbsp; &nbsp; &nbsp;: 32.000.000 VNĐ<br />\r\nTừ 500m2 trở l&ecirc;n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;b&aacute;o gi&aacute; ri&ecirc;ng theo từng quy m&ocirc; c&ocirc;ng tr&igrave;nh</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Chi ph&iacute; dịch vụ ho&agrave;n c&ocirc;ng bao gồm những nội dung sau:</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Tư vấn cho kh&aacute;ch h&agrave;ng c&aacute;c quy định của ph&aacute;p luật về ho&agrave;n c&ocirc;ng nh&agrave;, đăng k&yacute; biến động t&agrave;i sản v&agrave;o chủ quyền hoặc cấp đổi chủ quyền;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thẩm định hồ sơ v&agrave; đưa ra phương hướng giải quyết ph&ugrave; hợp quy định ph&aacute;p luật;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiết lập bản Bản vẽ ho&agrave;n c&ocirc;ng: 15.000đ/m2 (kh&ocirc;ng bao gồm trong ph&iacute; dịch vụ)</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Bi&ecirc;n bản nghiệm thu theo thực tế v&agrave; ph&ugrave; hợp c&aacute;c quy định của ph&aacute;p luật;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thiết lập bản vẽ sơ đồ nh&agrave; ở v&agrave; đất ở(nếu c&oacute;): 15.000đ/m2</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Chuẩn bị hồ sơ, mẫu đơn theo quy định;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Thay mặt hoặc c&ugrave;ng kh&aacute;ch h&agrave;ng li&ecirc;n hệ với UBND quận cập nhật thay đổi t&agrave;i sản hoặc cấp đổi chủ quyền;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+ Li&ecirc;n hệ cơ quan thuế k&ecirc; khai, nộp thuế theo quy định của ph&aacute;p luật.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">+Ho&agrave;n tất thủ tục ho&agrave;n c&ocirc;ng v&agrave; b&agrave;n giao giấy tờ nh&agrave;&nbsp;cho kh&aacute;ch h&agrave;ng.</span></p>', 0, 1, '1', 175),
(2, 'timthumb-8115.png', 'tu-van-phap-ly', 'TƯ VẤN PHÁP LÝ', 'Ranh giới giữa \"tư vấn pháp lý\" và \"thông tin pháp lý\" thường bị hiểu nhầm. Trong cùng một vấn đề, chỉ có luật sư mới có thể đưa ra lời khuyên pháp lý thực sự tin cậy.', '<h1><span style=\"font-size:16px\">TƯ VẤN PH&Aacute;P L&Yacute;</span></h1>\r\n\r\n<p><span style=\"font-size:16px\">Tư vấn ph&aacute;p l&yacute; l&agrave; g&igrave;?</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ranh giới giữa &quot;tư vấn ph&aacute;p l&yacute;&quot; v&agrave; &quot;th&ocirc;ng tin ph&aacute;p l&yacute;&quot; thường bị hiểu nhầm. Trong c&ugrave;ng một vấn đề, chỉ c&oacute; luật sư mới c&oacute; thể đưa ra lời khuy&ecirc;n ph&aacute;p l&yacute; thực sự tin cậy.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng giống như c&aacute;c th&ocirc;ng tin ph&aacute;p l&yacute;, tư vấn ph&aacute;p l&yacute; li&ecirc;n quan đến tư vấn bằng văn bản hoặc bằng miệng về một vấn đề ph&aacute;p l&yacute; m&agrave; sẽ ảnh hưởng đến quyền v&agrave; nghĩa vụ của người nhận được tư vấn. Ngo&agrave;i ra, tư vấn ph&aacute;p l&yacute; thực tế đ&ograve;i hỏi phải ph&acirc;n t&iacute;ch to&agrave;n diện vấn đề v&agrave; dựa tr&ecirc;n c&aacute;c quy định của ph&aacute;p luật để &aacute;p dụng cho t&igrave;nh h&igrave;nh cụ thể của từng người, từng vụ việc - tr&aacute;i ngược với suy đo&aacute;n dựa tr&ecirc;n những sự kiện chung chung.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Tư vấn ph&aacute;p l&yacute; l&agrave; những lời khuy&ecirc;n từ&nbsp; những người c&oacute; chuy&ecirc;n m&ocirc;n về ph&aacute;p luật để tham khảo khi giải quyết, quyết định c&ocirc;ng việc. Việc tham gia &yacute; kiến theo g&oacute;c độ ph&aacute;p luật với tư c&aacute;ch l&agrave; cộng t&aacute;c vi&ecirc;n hoặc l&agrave; l&agrave;m dịch vụ. V&iacute; dụ: Văn ph&ograve;ng tư vấn ph&aacute;p l&yacute;; Trung t&acirc;m tư vấn ph&aacute;p l&yacute;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">tư vấn ph&aacute;p l&yacute; thực sự&nbsp; tạo th&agrave;nh một thỏa thuận giữa luật sư, người c&oacute; chuy&ecirc;n m&ocirc;n về ph&aacute;p luật v&agrave; kh&aacute;ch h&agrave;ng&nbsp; dựa tr&ecirc;n một vấn đề ph&aacute;p l&yacute; cụ thể c&aacute;c kh&aacute;ch h&agrave;ng đang gặp phải.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&gt; 10 l&yacute; do n&ecirc;n thu&ecirc; luật sư tư vấn ngay</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Tư vấn ph&aacute;p l&yacute; được thể hiện qua những đặc điểm;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Cung c&acirc;p th&ocirc;ng tin về c&aacute;c quy định của ph&aacute;p luật m&agrave; ảnh hưởng đến quyền v&agrave; lợi &iacute;ch hợp ph&aacute;p của người được tư vấn</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Dự đo&aacute;n một kết quả, vụ việc</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Đưa ra những giải ph&aacute;p cho một c&ocirc;ng việc, h&agrave;nh vi cụ thể</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Định hướng đến giải ph&aacute;p tối ưu</span></p>\r\n\r\n<p><span style=\"font-size:16px\">C&acirc;u hỏi tư vấn ph&aacute;p l&yacute; cụ thể c&oacute; thể v&iacute; dụ như:</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;- T&ocirc;i c&oacute; n&ecirc;n nộp đơn xin ph&aacute; sản?</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;- T&ocirc;i c&oacute; thể khởi kiện họ?</span></p>\r\n\r\n<p><span style=\"font-size:16px\">T&igrave;m kiếm những&nbsp; lời khuy&ecirc;n, tư vấn ph&aacute;p l&yacute; ở đ&acirc;u?</span></p>\r\n\r\n<p><span style=\"font-size:16px\">&nbsp;- T&igrave;m kiếm từ c&aacute;c trang web về tư vấn ph&aacute;p l&yacute; trực tuyến, bao gồm trang web&nbsp; c&ocirc;ng ty luật hoặc trang web ri&ecirc;ng của luật sư uy t&iacute;n.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Lời khuy&ecirc;n từ kh&aacute;ch h&agrave;ng cũ của một luật sư</span></p>\r\n\r\n<p><span style=\"font-size:16px\">- Th&ocirc;ng tin m&agrave; bạn thấy trong tạp ch&iacute;, b&aacute;o điện tử về ph&aacute;p luật</span></p>', 1, 1, '2', 186),
(3, 'timthumb-8455.jpg', 'moi-gioi-bat-ong-san', 'MÔI GIỚI BẤT ĐỘNG SẢN', 'Trong bối cảnh hiện nay, sự gia tăng dân số cùng tốc độ đô thị hóa chóng mặt tất yếu đã dẫn đến việc nhu cầu nhà ở của người dân và cơ sở hạ tầng cho các hãng kinh doanh trở thành vấn đề cấp bách. Chính vì vậy, dịch vụ môi giới bất động sản chiếm một vị trí ngày càng quan trọng trong cơ cấu các ngành dịch vụ ở nước ta.', '<h1>M&Ocirc;I GIỚI BẤT ĐỘNG SẢN</h1>\r\n\r\n<p>Trong bối cảnh hiện nay, sự gia tăng d&acirc;n số c&ugrave;ng tốc độ đ&ocirc; thị h&oacute;a ch&oacute;ng mặt tất yếu đ&atilde; dẫn đến việc nhu cầu nh&agrave; ở của người d&acirc;n v&agrave; cơ sở hạ tầng cho c&aacute;c h&atilde;ng kinh doanh trở th&agrave;nh vấn đề cấp b&aacute;ch. Ch&iacute;nh v&igrave; vậy, dịch vụ m&ocirc;i giới bất động sản chiếm một vị tr&iacute; ng&agrave;y c&agrave;ng quan trọng trong cơ cấu c&aacute;c ng&agrave;nh dịch vụ ở nước ta.</p>\r\n\r\n<p>1. Hoạt động m&ocirc;i giới bất động sản ở Việt Nam</p>\r\n\r\n<p>Hoạt động m&ocirc;i giới bất động sản l&agrave; hoạt động hỗ trợ chủ sở hữu bất động sản (BĐS) t&igrave;m kiếm kh&aacute;ch h&agrave;ng, đ&agrave;m ph&aacute;n hợp đồng mua, b&aacute;n, thu&ecirc;, trao đổi BĐS. Quyền lợi của người m&ocirc;i giới l&agrave; được hưởng một khoản hoa hồng. M&ocirc;i giới l&agrave; hoạt động thường c&oacute; đối với c&aacute;c giao dịch về BĐS v&agrave; bắt nguồn từ t&iacute;nh đặc th&ugrave; của BĐS l&agrave; kh&ocirc;ng di chuyển được v&agrave; c&aacute;c BĐS kh&ocirc;ng ho&agrave;n to&agrave;n giống nhau. Đối với người b&aacute;n, để t&igrave;m kiếm được người đồng &yacute; mua BĐS của m&igrave;nh th&igrave; họ phải giới thiệu BĐS của m&igrave;nh cho những người quan t&acirc;m, m&agrave; tr&ecirc;n thực tế c&oacute; nhiều người kh&ocirc;ng đủ th&ocirc;ng tin v&agrave; quỹ thời gian để thực hiện. Mặt kh&aacute;c, việc mua b&aacute;n BĐS diễn ra kh&aacute; phức tạp v&agrave; thị trường n&agrave;y lu&ocirc;n biến động. Với những l&yacute; do tr&ecirc;n đ&atilde; l&agrave;m nảy sinh nhu cầu kh&aacute;ch quan của hoạt động m&ocirc;i giới BĐS.</p>\r\n\r\n<p>Vị tr&iacute; của người m&ocirc;i giới BĐS nằm giữa người b&aacute;n v&agrave; người mua BĐS v&agrave; họ c&oacute; thể l&agrave; một c&aacute; nh&acirc;n hoặc tổ chức. Nghĩa vụ của người m&ocirc;i giới l&agrave;: người đại diện cho người thu&ecirc; m&ocirc;i giới; phải tu&acirc;n theo c&aacute;c chỉ dẫn của người thu&ecirc; m&ocirc;i giới; phải trung th&agrave;nh với người thu&ecirc; m&ocirc;i giới. Nghĩa vụ của người thu&ecirc; m&ocirc;i giới l&agrave;: trả tiền hoa hồng cho người m&ocirc;i giới khi hợp đồng mua b&aacute;n được thực hiện v&agrave; cung cấp c&aacute;c th&ocirc;ng tin về BĐS cần b&aacute;n cho người m&ocirc;i giới.</p>\r\n\r\n<p>Tr&ecirc;n thực tế th&igrave; hoạt độngm&ocirc;i giới BĐS rất ph&aacute;t triển, đặc biệt l&agrave; c&aacute;c nước c&oacute; nền kinh tế thị trường ph&aacute;t triển. ở c&aacute;c nước n&agrave;y c&oacute; những Luật để điều tiết hoạt động m&ocirc;i giới BĐS. Tiềm năng v&agrave; quy m&ocirc; của thị trường BĐS ở Việt Nam c&ograve;n rất lớn, nhất l&agrave; sau khi Việt Nam gia nhập WTO. Theo &ldquo;Chiến lược ph&aacute;t triển đ&ocirc; thị Việt Nam&rdquo;, diện t&iacute;ch đất đ&ocirc; thị sẽ tăng từ 105.000ha hiện nay l&ecirc;n 460.000ha v&agrave;o năm 2020, đưa tỷ lệ đ&ocirc; thị ho&aacute; từ 28% l&ecirc;n khoảng 45% v&agrave;o năm 2025. D&acirc;n số đ&ocirc; thị từ 23 triệu người dự kiến sẽ tăng l&ecirc;n 46 triệu người v&agrave;o năm 2025, k&eacute;o theo sự gia tăng về nhu cầu nh&agrave; ở đ&ocirc; thị. Trung b&igrave;nh mỗi năm Việt Nam cần ph&aacute;t triển th&ecirc;m 35 triệu m2 nh&agrave; để phấn đấu đạt 20m2 nh&agrave; ở/người tại đ&ocirc; thị v&agrave;o năm 2020.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c ch&iacute;nh s&aacute;ch cởi mở của Nh&agrave; nước như người d&acirc;n được mua nh&agrave; ở tại c&aacute;c đ&ocirc; thị m&agrave; kh&ocirc;ng cần hộ khẩu, dự kiến mở rộng đối tượng Việt kiều được mua nh&agrave; v&agrave; cho ph&eacute;p thực hiện th&iacute; điểm người nước ngo&agrave;i được mua nh&agrave; ở tại Việt Nam&hellip;cũng l&agrave;mtăng nhu cầu về nh&agrave; ở tại c&aacute;c đ&ocirc; thị lớn. V&igrave; vậy, dịch vụ m&ocirc;i giới BĐS, đặc biệt l&agrave; m&ocirc;i giới nh&agrave; đất đang đứng trước nhiều cơ hội để ph&aacute;t triển.</p>\r\n\r\n<p>Tại Khoản 2, Điều 8 Luật Kinh doanh BĐS th&igrave;: &quot;Tổ chức, c&aacute; nh&acirc;n khi kinh doanh dịch vụ bất động sản phải th&agrave;nh lập doanh nghiệp hoặc hợp t&aacute;c x&atilde;, đăng k&yacute; kinh doanh dịch vụ bất động sản theo quy định của ph&aacute;p luật, trừ trường hợp quy định tại khoản 3 Điều n&agrave;y.</p>\r\n\r\n<p>Tổ chức, c&aacute; nh&acirc;n khi kinh doanh dịch vụ m&ocirc;i giới bất động sản phải c&oacute; &iacute;t nhất một người c&oacute; chứng chỉ m&ocirc;i giới bất động sản; khi kinh doanh dịch vụ định gi&aacute; bất động sản phải c&oacute; &iacute;t nhất hai người c&oacute; chứng chỉ định gi&aacute; bất động sản; khi kinh doanh dịch vụ s&agrave;n giao dịch bất động sản phải c&oacute; &iacute;t nhất hai người c&oacute; chứng chỉ m&ocirc;i giới bất động sản, nếu c&oacute; dịch vụ định gi&aacute; bất động sản th&igrave; phải c&oacute; &iacute;t nhất hai người c&oacute; chứng chỉ định gi&aacute; bất động sản&quot;.</p>\r\n\r\n<p>Nh&igrave;n một c&aacute;ch tổng thể, đội ngũ tư vấn nh&agrave; đất hiện nay chia l&agrave;m nhiều cấp độ. Quy m&ocirc; nhất l&agrave; c&aacute;c c&ocirc;ng ty cổ phần, c&ocirc;ng ty tr&aacute;ch nhiệm hữu hạn với phương thức hoạt động kh&aacute; b&agrave;i bản. Những c&ocirc;ng ty n&agrave;y t&igrave;m kiếm &quot;nguồn h&agrave;ng&quot; ở c&aacute;c dự &aacute;n của c&aacute;c nh&agrave; đầu tư, c&aacute;c c&ocirc;ng ty x&acirc;y dựng v.v&hellip;, cập nhật th&ocirc;ng tin rồi li&ecirc;n hệ, giao dịch với kh&aacute;ch h&agrave;ng. Họ c&oacute; đăng k&yacute; h&agrave;nh nghề, c&oacute; trụ sở l&agrave;m việc, v&agrave; c&aacute;c th&ocirc;ng tin đưa ra c&oacute; độ tin cậy kh&aacute; cao. Ta c&oacute; thể dễ d&agrave;ng t&igrave;m kiếm th&ocirc;ng tin về c&aacute;c c&ocirc;ng ty n&agrave;y tr&ecirc;n internet.</p>\r\n\r\n<p>Kế tiếp, kh&ocirc;ng thể kh&ocirc;ng kể đến c&aacute;c văn ph&ograve;ng nh&agrave; đất với số lượng nhiều v&ocirc; kể. Chỉ cần một căn ph&ograve;ng 3-4m2 , v&agrave;i tấm bản đồ qui hoạch, một chiếc điện thoại b&agrave;n, l&agrave; đ&atilde; c&oacute; thể h&agrave;nh nghề m&ocirc;i giới nh&agrave; đất. C&aacute;c văn ph&ograve;ng n&agrave;y phần đ&ocirc;ng l&agrave;m ăn manh m&uacute;n, nh&igrave;n chung kh&ocirc;ng mấy hiệu quả. Cuối c&ugrave;ng l&agrave; h&igrave;nh thức l&agrave;m ăn ri&ecirc;ng lẻ của c&aacute;c c&aacute; nh&acirc;n. Đặc điểm của đội ngũ m&ocirc;i giới n&agrave;y l&agrave; đa phần l&agrave;m ăn nhỏ lẻ, kh&ocirc;ng c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n, chưa từng qua trường lớp đ&agrave;o tạo, h&agrave;nh nghề chủ yếu dựa v&agrave;o kinh nghiệm c&aacute; nh&acirc;n v&agrave; th&ocirc;ng tin về bất động sản thu thập được, kh&ocirc;ng bị r&agrave;ng buộc bởi c&aacute;c định chế cần thiết để n&acirc;ng cao tr&aacute;ch nhiệm trong c&aacute;c hoạt động của họ. Với c&aacute;ch hoạt động chộp giật như vậy, th&ocirc;ng tin bất động sản m&agrave; những người n&agrave;y đưa ra nhiều l&uacute;c kh&ocirc;ng ch&iacute;nh x&aacute;c, thường kh&ocirc;ng chịu sự gi&aacute;m s&aacute;t của bất cứ cơ quan n&agrave;o.</p>\r\n\r\n<p>Cũng giống như m&ocirc;i giới trong c&aacute;c lĩnh vực kh&aacute;c, c&ocirc;ng việc của đội ngũ tư vấn, m&ocirc;i giới nh&agrave; đất n&agrave;y l&agrave; gi&uacute;p người mua đến với người b&aacute;n. Họ c&oacute; trong tay th&ocirc;ng tin về bất động sản, về c&aacute;c dự &aacute;n được qui hoạch, một khi người mua c&oacute; nhu cầu, họ sẽ cung cấp những th&ocirc;ng tin ấy, v&agrave; chịu tr&aacute;ch nhiệm li&ecirc;n hệ với những người đại diện b&ecirc;n chủ sở hữu. Th&ocirc;ng thường sau khi giao dịch ho&agrave;n tất, c&aacute;c tổ chức m&ocirc;i giới được nhận hoa hồng từ 1-2% tổng gi&aacute; trị giao dịch của bất động sản. Tuy nhi&ecirc;n, một thực tế đ&aacute;ng buồn l&agrave; trong số h&agrave;ng ngh&igrave;n trung t&acirc;m tư vấn, văn ph&ograve;ng m&ocirc;i giới tr&ecirc;n, chỉ c&oacute; một v&agrave;i đơn vị &ldquo;l&agrave;m ăn&rdquo; theo đ&uacute;ng nghĩa của n&oacute;. Theo thống k&ecirc; chưa đầy đủ, &ldquo;cả nước hiện c&oacute; 155 tổ chức hoạt động m&ocirc;i giới c&oacute; đăng k&yacute; h&agrave;nh nghề, tr&ecirc;n 1600 đơn vị c&oacute; chức năng kinh doanh nh&agrave; đất c&oacute; đăng k&yacute;, c&ograve;n tổ chức c&aacute; nh&acirc;n &ldquo;l&agrave;m ăn&rdquo; đơn lẻ kh&ocirc;ng đăng k&yacute; th&igrave; chưa thể thống k&ecirc; được&rdquo;. Vấn đề bất cập hiện nay l&agrave;: phần lớn c&aacute;c c&aacute; nh&acirc;n hoạt động m&ocirc;i giới nh&agrave; đất ri&ecirc;ng lẻ kh&ocirc;ng c&oacute; nghề nghiệp, kh&ocirc;ng được đ&agrave;o tạo v&agrave; tư vấn kiến thức. Họ h&agrave;nh nghề chủ yếu dựa v&agrave;o kinh nghiệm bản th&acirc;n v&agrave; c&aacute;c mối quan hệ. Do đ&oacute;, hoạt động của lực lượng n&agrave;y nhiều khi g&acirc;y t&igrave;nh trạng nhũng nhiễu th&ocirc;ng tin, cản trở việc kiểm so&aacute;t thị trường của ch&iacute;nh phủ.</p>\r\n\r\n<p>Một kh&iacute;a cạnh kh&aacute;c cần phải kể đến đ&oacute; l&agrave; gi&aacute; cả bất động sản tr&ecirc;n thị trường. ở nước ta hiện nay, nhu cầu về nh&agrave; ở, về cơ sở hạ tầng phục vụ sản xuất kinh doanh đang l&agrave; một vấn đề cấp thiết. Trong điều kiện quỹ đất của Nh&agrave; nước rất hạn hẹp, chủ yếu vẫn theo cơ chế xin cho. Lợi dụng t&igrave;nh h&igrave;nh n&agrave;y, lực lượng tư vấn nh&agrave; đất đ&atilde; b&oacute;p m&eacute;o th&ocirc;ng tin, g&oacute;p phần đẩy gi&aacute; l&ecirc;n hoặc l&agrave;m hạ gi&aacute; xuống theo c&aacute;c cơn sốt n&oacute;ng lạnh của thị trường nhằm thu lợi cho m&igrave;nh.Mặt kh&aacute;c, do th&oacute;i quen t&acirc;m l&yacute; của người d&acirc;n, lu&ocirc;n c&oacute; xu hướng t&iacute;ch lũy t&agrave;i sản dưới h&igrave;nh thức v&agrave;ng hoặc bất động sản, c&agrave;ng đẩy gi&aacute; bất động sản l&ecirc;n cao, v&ocirc; h&igrave;nh chung tạo điều kiện cho đội ngũ m&ocirc;i giới trục lợi. Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c th&ocirc;ng tin về quy hoạch, sử dụng đất, cũng như t&igrave;nh trạng ph&aacute;p l&yacute; của từng bất động sản lại kh&ocirc;ng được c&ocirc;ng bố đầy đủ v&agrave; c&ocirc;ng khai. M&agrave; những th&ocirc;ng tin n&agrave;y, do c&aacute;c quan hệ hay do một số nguy&ecirc;n nh&acirc;n n&agrave;o đ&oacute;, lại được đội ngũ tư vấn vi&ecirc;n nh&agrave; đất &quot;khai th&aacute;c triệt để&quot; để kiếm lời. Kh&ocirc;ng &iacute;t người đ&atilde; bị thiệt hại đ&aacute;ng kể v&igrave; đầu tư hết vốn liếng, t&agrave;i sản mua nh&agrave;, mua c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng m&agrave; kh&ocirc;ng mảy may biết rằng ch&uacute;ng đang ở trong diện qui hoạch.</p>\r\n\r\n<p>Tiếp theo cũng cần phải n&oacute;i đến l&agrave; h&agrave;nh vi mua đầu cơ t&iacute;ch trữ của c&aacute;c đơn vị m&ocirc;i giới bất động sản. Nhiệm vụ của c&aacute;c tổ chức m&ocirc;i giới bất động sản l&agrave; cung cấp th&ocirc;ng tin về bất động sản cho người mua; giữ vai tr&ograve; trung gian trong c&aacute;c giao dịch bất động sản giữa đại diện chủ sở hữu với người c&oacute; nhu cầu về bất động sản. Tuy nhi&ecirc;n tr&ecirc;n thực tế hiện nay, c&oacute; rất nhiều tổ chức m&ocirc;i giới lại ki&ecirc;m lu&ocirc;n vai tr&ograve; của người b&aacute;n. Đặc biệt l&agrave; ở c&aacute;c dự &aacute;n nh&agrave; chung cư v&agrave; khu c&ocirc;ng nghiệp. Với nh&agrave; chung cư, đầu ra dự &aacute;n căn hộ lẽ ra phải l&agrave; người c&oacute; nhu cầu sử dụng căn hộ nhưng phần lớn c&aacute;c căn hộ lại rơi v&agrave;o tay c&aacute;c nh&agrave; m&ocirc;i mới v&agrave; giới đầu cơ ngay từ trước khi n&oacute; được ho&agrave;n th&agrave;nh. C&aacute;c h&agrave;nh vi đầu cơ t&iacute;ch trữ tr&ecirc;n đều kh&ocirc;ng được ph&aacute;p luật cho ph&eacute;p. Tuy nhi&ecirc;n c&aacute;c biện ph&aacute;p ngăn chặn, kiểm so&aacute;t h&agrave;nh vi tr&ecirc;n vẫn đang l&agrave; vấn đề nan giải đặt ra cho c&aacute;c cơ quan gi&aacute;m s&aacute;t thị trường kinh doanh bất động sản.</p>', 1, 0, '1', 190);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `register_advise`
--

CREATE TABLE `register_advise` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `register_advise`
--

INSERT INTO `register_advise` (`id`, `content`, `display`) VALUES
(1, '<p>waferyagrth</p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seos`
--

INSERT INTO `seos` (`id`, `seo_tittle`, `seo_keyword`, `seo_description`) VALUES
(1, 'NHÀ ĐẤT MINH PHÁT', 'bán nhà phố, bán đất nền, mua bán đất giá rẻ, mua bán nhà phố, mua bán nhà phố hcm, bán nhà hcm, bán nhà phố giá rẻ, mua bán đất hcm, mua bán đất, ký gửi nhà đất, hoàn công,  tư vấn pháp lý,', 'nhà đất minh phát chuyên bán nhà phố, bán đất nền, mua bán đất giá rẻ, mua bán nhà phố, mua bán nhà phố hcm, bán nhà hcm, bán nhà phố giá rẻ, mua bán đất hcm, mua bán đất, ký gửi nhà đất, hoàn công,  tư vấn pháp lý.'),
(2, 'CPU-G4560', 'CPU-G4560', 'sản phẩm mới'),
(3, 'Intel Pentium22', 'intel-pentium', 'intel-pentium'),
(4, 'Chính sách thanh toán', 'Chính sách thanh toán', NULL),
(5, 'Thanh Lý Phòng Net A-Z Giá Cao', 'Thanh Lý Phòng Net A-Z Giá Caoo', '&oacute;c'),
(6, 'MÀN HÌNH MÁY TÍNH', 'man-hinh-may-tinh', '.'),
(7, 'Đồ dùng moi', 'Đồ dùng moi', 'aegareth'),
(8, 'LAPTOP', 'LAPTOP', '<p>ỪAGE</p>'),
(9, 'Ổ CỨNG', 'Ổ CỨNG', NULL),
(10, 'CHUỘT, BÀN PHÍM', 'chuột bàn phím', '.'),
(11, 'Intel Core i3', 'intel core i3', ''),
(12, 'Intel Core i5', 'intel', ''),
(13, 'Intel Core i7', 'intel core i7', ''),
(14, 'Chính sách thanh toán', 'Chính sách thanh toán', 'veager'),
(15, 'MAIN ASUS CŨ', 'main ASUS cũ', ''),
(16, 'MAIN MSI CŨ', 'main msi cũ', ''),
(17, 'MAIN COLOFULL CŨ', 'main colofull cũ', ''),
(18, 'MÀNG HÌNH LCD CHÍNH HÃNG', 'MÀNG HÌNH LCD CHÍNH HÃNG', 'MÀNG HÌNH LCD CHÍNH HÃNG'),
(19, 'NHÀ ĐẤT MINH PHÁT', 'Seo liên hệ', 'NHÀ ĐẤT MINH PHÁT Địa Chỉ: 740/11 Lê Trọng Tấn, P.Bình Hưng Hòa, Q.Bình Tân, TP.HCM Hotline: 0935.613.986 - 0903.250.446 Email: tranquangthu986@gmail.com Web:nh'),
(20, 'DDR3 PC', 'ddr3 pc', NULL),
(21, 'aeg', 'ăefge', 'fwtf'),
(22, 'VGA CARD MÀN HÌNH', 'vga card màn hình', NULL),
(23, 'VGA-GIGABYTE NEW', 'vga-gigabyte new', ''),
(24, 'VGA-GIGABYTE OLD', 'vga-gigabyte old', ''),
(25, 'Màn Hình LED Monitor VSP 22inch V2205H', 'Màn Hình LED Monitor VSP 22inch V2205H', NULL),
(26, 'LAPTOP ASUS', 'laptop asus', NULL),
(27, 'LAPTOP HP1', 'laptop hp1', '1'),
(28, 'LINH KIỆN LAPTOP', 'linh kiện laptop', ''),
(29, 'Thiết bị âm thanh-loa vi tính', 'thiết bị âm thanh loa vi tính', ''),
(30, 'THIẾT BỊ ÂM THANH-TAI NGHE', 'thiết bị âm thanh tai nghe', NULL),
(31, 'Vi Tính Phát Năng', 'Vi Tính Phát Năng', 'Vi Tính Phát Năng'),
(32, 'VI TÍNH PHÁT NĂNG', 'Lập trình viên PHP', '....'),
(33, 'Khắc phục sự cố mở đươc file word nhưng không chỉnh sửa được', 'VI TÍNH PHÁT NĂNG: CHUYÊN THANH LÝ NÉT, CƠ SỞ TRƯỜNG HỌC CÔNG TY. ĐIỆN THOẠI LIÊN HỆ: 0938 948 862 Mr NHẪN', '......'),
(34, 'mmmm', 'mmm', 'mmmm'),
(35, 'Thiết bị âm Thanh-Loa VI TÍNH', 'nnn', 'nnn'),
(36, '...', '....', '.....'),
(37, 'ừ', 'ừagw', 'gể'),
(38, '....', '...', '....'),
(39, NULL, '...', '....'),
(40, 'Thiết bị âm Thanh-Loa VI TÍNH 1', 'ửetgert 1', 'tttt 1'),
(41, 't', 't', 't'),
(42, 't', 't', 't'),
(43, NULL, NULL, NULL),
(44, NULL, NULL, NULL),
(45, NULL, NULL, NULL),
(46, 'ừ3', 'ừagw3', 'ừagw3'),
(47, '.', '.', '.'),
(48, NULL, NULL, NULL),
(49, NULL, NULL, NULL),
(50, NULL, NULL, NULL),
(51, NULL, NULL, NULL),
(52, NULL, NULL, NULL),
(53, NULL, NULL, NULL),
(54, NULL, NULL, NULL),
(55, NULL, NULL, NULL),
(56, NULL, NULL, NULL),
(57, NULL, NULL, NULL),
(58, NULL, NULL, NULL),
(59, NULL, NULL, NULL),
(60, NULL, NULL, NULL),
(61, 'earwge', 'ẻgag', 'ẻgag'),
(62, NULL, NULL, NULL),
(63, NULL, NULL, NULL),
(64, 'rtyrrty', 'rstyrt', 'rstyt'),
(65, 'NINBI', 'HHBH', 'DUTG'),
(66, 'ẻtgewrtye', 'ẺG', 'HT'),
(67, 'ưef', 'ưef', 'ưefw'),
(68, NULL, NULL, NULL),
(69, 'eqrgq2', 'eqrgq2', 'yeh2'),
(70, 'srhrsth', 'rthfg', 'rthr'),
(71, 'egdf', 'ẻg', NULL),
(72, 'ưthrt', 'reth', NULL),
(73, 'egeg', 'egdg', NULL),
(74, 'ege', 'egad', NULL),
(75, 'aegdf', 'ẻgaegfg', NULL),
(76, 'aegdf', 'ẻgaegfg', NULL),
(77, 'fwf', 'wf', 'wefwr'),
(78, 'fwf', 'wf', 'wefwr'),
(79, 'fwf', 'wf', 'wefwr'),
(80, 'erger', 'erg', 'erge'),
(81, 'erger', 'erg', 'erge'),
(82, 'erger', 'erg', 'erge'),
(83, 'tul', 'utl', 'tuil'),
(84, 'tul', 'utl', 'tuil'),
(85, 'sfg', 'dfgj', 'srt'),
(86, 'sfg', 'dfgj', 'srt'),
(87, 'sfg', 'dfgj', 'srt'),
(88, 'sfg', 'dfgj', 'srt'),
(89, 'iiii', 'iiii', 'iii'),
(90, 'iiii', 'iiii', 'iii'),
(91, 'iiii', 'iiii', 'iii'),
(92, 'mmmm222', 'mm', 'mm'),
(93, 'er', 'ter', 'tert'),
(94, 'er', 'ter', 'tert'),
(95, 'er3', 'ter3', 'tert3'),
(96, 'ge', 'ẻg', 'eg'),
(97, 'ẻg', 'ádg', 'hrth'),
(98, 'ytut7u', 'tyeuty', 'etyjyt'),
(99, 'VAY TIỀN NGÂN HÀNG MUA NHÀ, DỄ MÀ KHÔNG DỄ', 'VAY TIỀN NGÂN HÀNG MUA NHÀ, DỄ MÀ KHÔNG DỄ', 'VAY TIỀN NG&Acirc;N H&Agrave;NG MUA NH&Agrave;, DỄ M&Agrave; KH&Ocirc;NG DỄ\r\n&Aacute;p lực cho vay\r\n\r\nViệc vay mua nh&agrave;/căn hộ chung cư l&agrave; một điều b&igrave;nh thường tại c&aacute;c nước c&oacute; thị trường bất động sản ph&aacute;t triển.\r\n\r\nTheo đ&oacute;, chỉ cần chứng minh c&oacute; thu nhập ổn định từ tiền lương/c&ocirc;ng việc l&agrave; người mua nh&agrave; c&oacute; thể tiếp cận c&aacute;c khoản vay với những thủ tục r&otilde; r&agrave;ng, minh bạch v&agrave; thời hạn vay k&eacute;o d&agrave;i từ 10 - 40 năm.\r\n\r\nỞ Việt Nam, việc vay tiền ng&acirc;n h&agrave;ng để mua bất động sản cũng c&oacute; từ hơn 10 năm nay, nhưng ch&iacute;nh c&aacute;ch l&agrave;m qu&aacute; chắc của c&aacute;c ng&acirc;n h&agrave;ng khiến cho việc tiếp cận g&oacute;i vay n&agrave;y l&agrave; rất kh&oacute; khăn.\r\n\r\nTheo đ&oacute;, c&ocirc;ng thức chung muốn vay l&agrave; phải c&oacute; t&agrave;i sản thế chấp (sổ đỏ/giấy hồng nh&agrave;/đất; t&agrave;i sản c&oacute; gi&aacute; trị kh&aacute;c) v&agrave; cũng chỉ được định gi&aacute; tối đa bằng 70% gi&aacute; trị thực để t&iacute;nh to&aacute;n cho khoản vay với l&atilde;i suất kh&ocirc;ng hề thấp.\r\n\r\nKhi thị trường bất động sản trầm lắng, cộng với việc c&aacute;c k&ecirc;nh đầu tư v&agrave; huy động nguồn tiền nh&agrave;n rỗi trong d&acirc;n k&eacute;m hiệu quả (chứng kho&aacute;n, v&agrave;ng, ngoại tệ&hellip;), th&igrave; việc người d&acirc;n &ugrave;n &ugrave;n gửi tiền ng&acirc;n h&agrave;ng hưởng l&atilde;i suất đ&atilde; khiến cho nguồn vốn huy động của c&aacute;c ng&acirc;n h&agrave;ng trở n&ecirc;n dư thừa.\r\n\r\nTrong 1 - 2 năm trở lại đ&acirc;y, &aacute;p lực giải ng&acirc;n ng&agrave;y c&agrave;ng lớn cộng với sức &eacute;p từ lợi nhuận ngh&igrave;n tỷ của c&aacute;c cổ đ&ocirc;ng lớn khiến cho c&aacute;c ng&acirc;n h&agrave;ng phải t&igrave;m mọi c&aacute;ch để giải ng&acirc;n số tiền huy động từ trong d&acirc;n cư (vốn c&oacute; l&atilde;i suất thấp 5,5 - 6,5%/năm; thậm ch&iacute; thấp 3,5 - 4,5%/năm cho c&aacute;c khoản vay ngắn hạn 1 - 6 th&aacute;ng) th&ocirc;ng qua c&aacute;c g&oacute;i t&iacute;n dụng thương mại cho vay mua nh&agrave; với l&atilde;i suất cạnh tranh nhau s&iacute;t sao.\r\n\r\nVới g&oacute;i l&atilde;i suất ưu đ&atilde;i 30.000 tỷ đồng, thủ tục qu&aacute; kh&oacute; khăn cũng khiến nhiều người muốn vay b&oacute; tay v&agrave; tốc độ giải ng&acirc;n rất thấp.\r\n\r\nMới đ&acirc;y, những người đ&atilde; tr&oacute;t huy động tiền để đặt cọc vay mua nh&agrave; ở x&atilde; hội theo g&oacute;i 30.000 tỷ đồng lại &ldquo;kh&oacute;c dở mếu dở&rdquo; v&igrave; c&aacute;c quy định m&acirc;u thuẫn nhau.\r\n\r\nTheo quy định của Bộ X&acirc;y dựng, chỉ người thu nhập thấp mới được vay g&oacute;i 30.000 tỷ v&agrave; thu nhập thấp được cho l&agrave; những người thuộc diện kh&ocirc;ng phải nộp thuế thu nhập c&aacute; nh&acirc;n (tức l&agrave; thu nhập dưới 9 triệu đồng/th&aacute;ng).\r\n\r\nTrong khi đ&oacute;, ng&acirc;n h&agrave;ng lại chỉ muốn cho những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tốt vay để đảm bảo an to&agrave;n nguồn vốn, tr&aacute;nh nợ xấu ph&aacute;t sinh v&agrave; nhiều ng&acirc;n h&agrave;ng y&ecirc;u cầu kh&aacute;ch vay g&oacute;i vốn n&agrave;y phải chứng minh thu nhập từ 9 triệu đồng/th&aacute;ng trở l&ecirc;n.\r\n\r\nV&igrave; &ldquo;vướng&rdquo; v&agrave;o 2 điều khoản &ldquo;đối nghịch&rdquo; nhau n&agrave;y m&agrave; một số người đ&atilde; &ldquo;lỡ&rdquo; đ&oacute;ng trước khoản tiền khoảng 20% gi&aacute; trị căn hộ cho chủ đầu tư, giờ &ldquo;dở kh&oacute;c dở mếu&rdquo; v&igrave; kh&ocirc;ng &ldquo;xin&rdquo; lại được tiền.\r\n\r\nC&acirc;u chuyện khoảng 900 kh&aacute;ch h&agrave;ng mua dự &aacute;n nh&agrave; ở x&atilde; hội HQC Plaza của C&ocirc;ng ty Địa ốc Ho&agrave;ng Qu&acirc;n đ&atilde; k&yacute; hợp đồng mua nh&agrave;, đ&oacute;ng tiền 20% nhưng kh&ocirc;ng vay được g&oacute;i 30.000 tỷ đồng, buộc phải vay từ chủ đầu tư theo h&igrave;nh thức trả chậm với l&atilde;i suất kh&aacute; cao l&agrave; điển h&igrave;nh cho sự tr&eacute;o ngoe n&agrave;y.&nbsp;\r\n\r\nV&agrave; n&oacute; cũng giải th&iacute;ch cho tốc độ giải ng&acirc;n g&oacute;i 30.000 tỷ đồng vẫn rất khi&ecirc;m tốn.&nbsp;\r\n\r\nCẩn thận khi k&yacute; hợp đồng\r\n\r\nTrước t&igrave;nh h&igrave;nh bế tắc của g&oacute;i vốn 30.000 tỷ cộng với &aacute;p lực tăng trưởng t&iacute;n dụng, rất nhiều NHTM từng bước mở cửa cho vay mua, sửa chữa nh&agrave;.\r\n\r\nTrong khi đ&oacute;, việc nhiều dự &aacute;n nh&agrave; ở đ&atilde; v&agrave; đang từng bước h&igrave;nh th&agrave;nh cộng với sự ấm l&ecirc;n của thị trường, gi&aacute; trị thực v&agrave; tiến độ của c&aacute;c dự &aacute;n ho&agrave;n th&agrave;nh, c&aacute;c k&ecirc;nh đầu tư kh&aacute;c k&eacute;m hiệu quả (chứng kho&aacute;n, v&agrave;ng, ngoại tệ, đầu tư kinh doanh&hellip;), khiến cho người mua &ldquo;xuống tiền&rdquo; l&agrave; cơ hội để ng&acirc;n h&agrave;ng đẩy vốn t&iacute;n dụng cho mảng n&agrave;y.\r\n\r\nĐể đẩy mạnh hoạt động n&agrave;y, nhiều NHTM c&oacute; ri&ecirc;ng đội ngũ nh&acirc;n vi&ecirc;n t&iacute;n dụng li&ecirc;n kết với c&aacute;c chủ đầu tư c&aacute;c dự &aacute;n bất động sản từ lớn đến b&eacute;, thậm ch&iacute; c&oacute; bộ phận thường trực tại c&aacute;c dự &aacute;n n&agrave;y để giới thiệu đến kh&aacute;ch h&agrave;ng c&aacute;c g&oacute;i vay ưu đ&atilde;i, với thời hạn vay từ ngắn hạn đến trung v&agrave; d&agrave;i hạn (10 - 20 năm).\r\n\r\nĐể l&agrave;m được điều n&agrave;y, ngo&agrave;i việc lấy th&ocirc;ng tin hoặc mua th&ocirc;ng tin về kh&aacute;ch h&agrave;ng từ ch&iacute;nh chủ đầu tư c&aacute;c dự &aacute;n bất động sản để t&igrave;m hiểu nhu cầu vay; c&aacute;c ng&acirc;n h&agrave;ng cũng đẩy mạnh việc tiếp thị, quảng c&aacute;o qua c&aacute;c k&ecirc;nh truyền th&ocirc;ng (website, b&aacute;o, phiếu khảo s&aacute;t, l&agrave;m tờ rơi; gọi điện thoại, nhắn tin&hellip;) để tiếp cận bằng được kh&aacute;ch h&agrave;ng mua nh&agrave; nhằm đẩy mạnh việc giải ng&acirc;n khoản vay cho kh&aacute;ch h&agrave;ng.\r\n\r\nC&aacute;c g&oacute;i ưu đ&atilde;i được quảng b&aacute; rất hấp dẫn. Tuy nhi&ecirc;n, lời khuy&ecirc;n đối những người c&oacute; nhu cầu mua nh&agrave; m&agrave; chưa đủ điều kiện t&agrave;i ch&iacute;nh l&agrave; việc tiếp cận c&aacute;c khoản vay n&agrave;y phải thực tỉnh t&aacute;o, đủ th&ocirc;ng tin cũng như c&oacute; nguồn tiền trả ổn định th&igrave; mới n&ecirc;n đặt b&uacute;t k&yacute; v&agrave;o hợp đồng vay (Bảng 1).\r\n\r\nMột thực tế m&agrave; nhiều người mua bất động sản (nh&agrave; đất, căn hộ chung cư) kh&ocirc;ng để &yacute; hoặc kh&ocirc;ng hỏi kỹ nh&acirc;n vi&ecirc;n tư vấn, đ&oacute; l&agrave; những hệ quả nếu như kh&ocirc;ng c&oacute; nguồn t&agrave;i ch&iacute;nh ổn định để thanh to&aacute;n theo lịch trả nợ đối với ng&acirc;n h&agrave;ng (thường điều n&agrave;y nằm trong ch&iacute;nh hợp đồng vay do ng&acirc;n h&agrave;ng soạn).\r\n\r\nTr&ecirc;n thực tế, để đẩy nhanh việc giải ng&acirc;n khoản vay cho kh&aacute;ch, nhiều nh&acirc;n vi&ecirc;n t&iacute;n dụng đ&atilde; &ldquo;lờ&rdquo; đi th&ocirc;ng tin về hệ quả ph&aacute;p l&yacute; nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả khoản vay đ&uacute;ng hạn.\r\n\r\nKhi tư vấn, họ chỉ giải th&iacute;ch c&aacute;c ưu điểm về mức l&atilde;i suất theo năm (chẳng hạn, th&aacute;ng đầu, năm đầu, l&atilde;i suất thấp hơn ng&acirc;n h&agrave;ng kh&aacute;c); mức l&atilde;i suất ch&ecirc;nh lệch giữa đi vay - cho vay (ch&ecirc;nh 3 - 4%/năm) khi so s&aacute;nh để cho kh&aacute;ch h&agrave;ng thấy vay ở ng&acirc;n h&agrave;ng của m&igrave;nh l&agrave; ưu điểm hơn, thủ tục nhanh gọn hơn; l&atilde;i suất thấp hơn (tr&ecirc;n thực tế, nếu kh&aacute;ch h&agrave;ng t&igrave;m hiểu th&igrave; thấy c&aacute;c ng&acirc;n h&agrave;ng x&acirc;y dựng biểu l&atilde;i suất n&agrave;y gần như nhau để cạnh tranh).\r\n\r\nTuy nhi&ecirc;n, c&oacute; một hệ quả ph&aacute;p l&yacute; l&agrave; nếu kh&aacute;ch h&agrave;ng chỉ cần chậm thanh to&aacute;n theo tiến độ đ&atilde; cam kết, th&igrave; d&ugrave; c&oacute; gửi th&ocirc;ng b&aacute;o, m&agrave; ng&acirc;n h&agrave;ng h&agrave;ng kh&ocirc;ng đồng &yacute;, khoản vay của kh&aacute;ch h&agrave;ng sẽ được xếp v&agrave;o khoản nợ xấu v&agrave; ngay lập tức, ng&acirc;n h&agrave;ng sẽ phối hợp với c&aacute;c c&ocirc;ng ty xử l&yacute; nợ xấu của m&igrave;nh tiến h&agrave;nh xử l&yacute; ngay t&agrave;i sản của kh&aacute;ch h&agrave;ng.\r\n\r\nThế n&ecirc;n mới c&oacute; chuyện, vay tiền ng&acirc;n h&agrave;ng mua nh&agrave; hay đầu tư kinh doanh nhưng cuối c&ugrave;ng lại mất nh&agrave;; mất cả khoản tiền t&iacute;ch c&oacute;p của m&igrave;nh.\r\n\r\nSự kiện &ldquo;xiết nợ&rdquo; của VPBank như vừa xảy ra ở căn hộ 1401 t&ograve;a nh&agrave; 17T2 phố Ho&agrave;ng Đạo Th&uacute;y (Cầu Giấy, H&agrave; Nội) hồi trung tuần th&aacute;ng 3/2015 vừa qua l&agrave; một trong nhiều vụ việc điển h&igrave;nh của việc xử l&yacute; khoản vay của kh&aacute;ch h&agrave;ng.\r\n\r\nTheo đ&oacute;, khi vay nợ ng&acirc;n h&agrave;ng, kh&aacute;ch h&agrave;ng thế chấp t&agrave;i sản nhằm đảm bảo nghĩa vụ trả nợ v&agrave; ng&acirc;n h&agrave;ng c&oacute; quyền xử l&yacute; t&agrave;i sản bảo đảm n&agrave;y để thu hồi tiền cho vay khi kh&aacute;ch h&agrave;ng kh&ocirc;ng trả được nợ.\r\n\r\nTuy nhi&ecirc;n, cụ thể việc xử l&yacute; như thế n&agrave;o th&igrave; phải tu&acirc;n thủ quy định của ph&aacute;p luật, chứ kh&ocirc;ng thể đương nhi&ecirc;n đến nh&agrave; người ta, lắp kh&oacute;a, d&aacute;n ni&ecirc;m phong, đuổi chủ nh&agrave; ra ngo&agrave;i.\r\n\r\nNếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả được nợ, ng&acirc;n h&agrave;ng c&oacute; thể thương lượng, thỏa thuận với chủ hộ để giải quyết, b&aacute;n t&agrave;i sản đ&oacute; để thu hồi nợ.\r\n\r\nNếu kh&ocirc;ng đạt được thỏa thuận, ng&acirc;n h&agrave;ng c&oacute; quyền khởi kiện đề nghị t&ograve;a &aacute;n buộc kh&aacute;ch h&agrave;ng phải trả nợ, nếu kh&aacute;ch h&agrave;ng kh&ocirc;ng trả nợ, th&igrave; ng&acirc;n h&agrave;ng c&oacute; quyền ph&aacute;t mại t&agrave;i sản thế chấp.\r\n\r\nTừ vụ việc n&agrave;y, mỗi người đi vay cần r&uacute;t ra được b&agrave;i học đ&oacute; l&agrave; phải tham khảo, đọc kỹ hợp đồng vay; t&iacute;nh to&aacute;n kỹ c&aacute;c khả năng trả nợ th&igrave; mới n&ecirc;n đặt b&uacute;t k&yacute;.\r\n\r\nBởi lẽ, th&ocirc;ng thường với c&aacute;c NHTM, th&igrave; nếu như sau 30 - 45 ng&agrave;y m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thực hiện nghĩa vụ thanh to&aacute;n theo lịch vay (hoặc đơn đề nghị gia hạn kh&ocirc;ng được chấp nhận) th&igrave; t&agrave;i sản thế chấp của kh&aacute;ch h&agrave;ng sẽ được xử l&yacute; ngay lập tức, hoặc ng&acirc;n h&agrave;ng sẽ phối hợp với chủ đầu tư xử l&yacute; ngay t&agrave;i sản của kh&aacute;ch h&agrave;ng.\r\n\r\nĐương nhi&ecirc;n, c&aacute;c ng&acirc;n h&agrave;ng cũng cần tăng cường tập huấn nghiệp vụ, đạo đức nghề nghiệp cho nh&acirc;n vi&ecirc;n để họ cung cấp th&ocirc;ng tin đầy đủ cho kh&aacute;ch h&agrave;ng, chứ kh&ocirc;ng phải đặt &aacute;p lực giải ng&acirc;n khoản vay l&ecirc;n lương thưởng để nh&acirc;n vi&ecirc;n vi phạm quy tr&igrave;nh nghiệp vụ khi tư vấn cho kh&aacute;ch h&agrave;ng dẫn đến khoản nợ xấu v&agrave; phải xử l&yacute; khoản nợ xấu đ&oacute;.\r\n\r\nĐ&atilde; c&oacute; nhiều trường hợp, kh&aacute;ch h&agrave;ng vay tiền ng&acirc;n h&agrave;ng thế chấp t&agrave;i sản, để bảo đảm thanh to&aacute;n đ&uacute;ng hạn hoặc nộp tiền v&agrave;o để r&uacute;t giấy tờ ra (Giấy chứng nhận/hợp đồng mua b&aacute;n của t&agrave;i sản thế chấp) đ&atilde; đi vay &ldquo;t&iacute;n dụng đen&rdquo; b&ecirc;n ngo&agrave;i với l&atilde;i suất cao (0,3 - 0,5%/khoản vay/ng&agrave;y).\r\n\r\nHệ quả l&agrave; &ldquo;l&atilde;i mẹ đẻ l&atilde;i con&rdquo; với t&iacute;n dụng đen cũng như trả l&atilde;i phạt của ng&acirc;n h&agrave;ng do thanh to&aacute;n trước hạn.\r\n\r\nVĩ thanh\r\n\r\nCổ đ&ocirc;ng của một NHTM cổ phần thuộc Top 10 (c&oacute; l&atilde;i khoảng 2.000 tỷ đồng năm 2014 nhưng kh&ocirc;ng chia cổ tức) kể với người viết b&agrave;i một c&acirc;u chuyện trớ tr&ecirc;u.\r\n\r\nSố l&agrave; để thực hiện khoản thanh to&aacute;n tiền mua căn hộ thuộc một dự &aacute;n ở H&agrave; Nội, kh&aacute;ch h&agrave;ng n&agrave;y đ&atilde; huy động vốn từ gia đ&igrave;nh, bạn b&egrave; v&agrave; chuyển tiền về t&agrave;i khoản của m&igrave;nh tại ch&iacute;nh NHTM cổ phần nơi &ocirc;ng l&agrave; một cổ đ&ocirc;ng.\r\n\r\nTừ H&agrave; Nội, kh&aacute;ch h&agrave;ng n&agrave;y thực hiện thanh to&aacute;n li&ecirc;n ng&acirc;n h&agrave;ng cho khoản tiền mua căn hộ l&agrave; khoảng 2,5 tỷ đồng.\r\n\r\nTuy nhi&ecirc;n, khoản ph&iacute; phải thanh to&aacute;n cho ng&acirc;n h&agrave;ng theo biểu ph&iacute; l&agrave; gần 2 triệu đồng, trong đ&oacute; c&oacute; 0,3% cho ph&iacute; nộp tiền v&agrave;o t&agrave;i khoản kh&aacute;c tỉnh; 0,3% ph&iacute; chuyển tiền li&ecirc;n ng&acirc;n h&agrave;ng; 0,12% ph&iacute; vừa nộp tiền v&agrave;o t&agrave;i khoản nhưng chuyển đi thanh to&aacute;n ngay trong ng&agrave;y (miễn ph&iacute; nếu để lại t&agrave;i khoản 2 ng&agrave;y?!).\r\n\r\nTrong khi khoảng c&aacute;ch từ nơi chuyển đến nơi nhận tiền chỉ l&agrave; 5 km v&agrave; nếu như kh&aacute;ch h&agrave;ng n&agrave;y nộp trực tiếp v&agrave;o t&agrave;i khoản của NHTM cổ phần kia th&igrave; được miễn ph&iacute; 100%.\r\n\r\nChẳng tr&aacute;ch, d&acirc;n m&igrave;nh đi mua nh&agrave;, mua xe&hellip; cứ v&aacute;c h&agrave;ng bao tải tiền đi trả v&igrave; với họ, ph&iacute; dịch vụ phải trả cho ng&acirc;n h&agrave;ng kia để thu&ecirc; taxi đi cho rẻ?'),
(100, '5 laptop bán tốt giá dưới 20 triệu đồng', '5 laptop bán tốt giá dưới 20 triệu đồng', 'Laptop dưới 20 triệu đồng l&agrave; ph&acirc;n kh&uacute;c b&aacute;n chạy tại Việt Nam nhờ cấu h&igrave;nh tốt, đa dạng cổng kết nối, ph&ugrave; hợp nhu cầu họp học trực tuyến.\r\n\r\nGhi nhận tại một số hệ thống b&aacute;n lẻ cho thấy, m&aacute;y t&iacute;nh x&aacute;ch tay b&aacute;n chạy nhất l&agrave; c&aacute;c d&ograve;ng từ 12 triệu đến 20 triệu đồng, với mức tăng trưởng 50% so với năm ngo&aacute;i. Trong đ&oacute;, c&aacute;c phi&ecirc;n bản của Acer, Dell, Asus, HP, Lenovo được nhiều người quan t&acirc;m.\r\n\r\nAcer Aspire 3 A315&nbsp;(12 triệu đồng)'),
(101, 'egaer', 'egaer', 'erg'),
(102, 'ehgrh', 'ehgrh', 'hryh'),
(103, 'Thiết bị âm Thanh-Loa VI TÍNH', 'Thiết bị âm Thanh-Loa VI TÍNH', 'frshn'),
(104, 'rthr', 'rthr', 'rt'),
(105, 'aerger', 'aerger', NULL),
(106, 'srj', 'srj', 'sruj'),
(107, 'srth', 'rth', 'stfhrt'),
(108, 'aege', 'aege', NULL),
(109, 'ẻthg', NULL, NULL),
(110, NULL, NULL, NULL),
(111, 'srth', 'srh', 'srth'),
(112, 'ểg', 'ểg', 'aerg'),
(113, 'ƯGF', 'ƯGF', 'RƯEG'),
(114, 'ĂEG', 'ĂEG', 'ỬEg'),
(115, 'ẻghe', 'ẻghe', NULL),
(116, 'ảth', 'rhrt', 'rhth'),
(117, 'rưth', 'rưth', NULL),
(118, 'ryh', 'ryh', NULL),
(119, 'rtwhr', 'rtwhr', NULL),
(120, 'aeg', 'aeg', NULL),
(121, 'rsth', 'rsth', 'rth'),
(122, 'ẳ', 'ẳ', NULL),
(123, 'ăefwg', 'ăefwg', NULL),
(124, 'teah', 'earth', 'tẻ'),
(125, 'teah', 'earth', 'tẻ'),
(126, 'ưeqfwrhsr', 'ẻgsrh', 'ẻgsrthfr'),
(127, NULL, NULL, NULL),
(128, NULL, NULL, NULL),
(129, NULL, NULL, NULL),
(130, NULL, NULL, NULL),
(131, NULL, NULL, NULL),
(132, 'ưeR', 'ƯERT', 'ƯERg'),
(133, NULL, NULL, NULL),
(134, NULL, NULL, NULL),
(135, 'srthsrythsrhagreg', 'srthsrythsrhagreg', 'srthsrythsrhagreg'),
(136, 'ừag', 'aerg', 'ẻg'),
(137, '5 MẪU MÀN HÌNH MÁY TÍNH PHÙ HỢP CHO CÔNG VIỆC', '5 MẪU MÀN HÌNH MÁY TÍNH PHÙ HỢP CHO CÔNG VIỆC', 'D&ugrave; l&agrave;m việc tại nh&agrave; hay văn ph&ograve;ng, người d&ugrave;ng cũng cần đến một chiếc m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh đủ rộng, độ ph&acirc;n giải cao v&agrave; ph&ugrave; hợp với mục đ&iacute;ch sử dụng. Dưới đ&acirc;y l&agrave; 5 mẫu m&agrave;n h&igrave;nh ph&ugrave; hợp cho c&ocirc;ng việc m&agrave; người d&ugrave;ng c&oacute; thể tham khảo.\r\n\r\nHuawei MateView - Ph&ugrave; hợp việc văn ph&ograve;ng v&agrave; in ấn\r\n\r\n\r\n	K&iacute;ch thước: 28,2 inch\r\n	Độ ph&acirc;n giải: 4K+\r\n	Tỷ lệ hiển thị: 3:2\r\n	C&oacute; cổng sạc nhanh 65W\r\n	Gi&aacute; b&aacute;n: 18 triệu đồng\r\n\r\n\r\nMateView l&agrave; d&ograve;ng m&agrave;n h&igrave;nh cao cấp của Huawei, vừa được ra mắt v&agrave;o th&aacute;ng 9. Thiết bị c&oacute; k&iacute;ch thước 28,2 inch c&ugrave;ng độ ph&acirc;n giải 4K+. Đ&acirc;y l&agrave; sản phẩm chuy&ecirc;n biệt cho nhu cầu l&agrave;m việc với tỷ lệ 3:2. So với những chiếc m&agrave;n h&igrave;nh truyền thống, MateView hiển thị nhiều th&ocirc;ng tin hơn theo chiều dọc, gi&uacute;p người d&ugrave;ng theo d&otilde;i được th&ecirc;m dữ liệu hơn trong c&aacute;c ứng dụng, website.\r\n\r\nHuawei MateView sử dụng tỷ lệ 3:2, phục vụ tốt hơn cho c&ocirc;ng việc. Ảnh: Huawei.\r\n\r\n\r\n	\r\n	&nbsp;\r\n\r\n\r\n\r\n\r\n&nbsp;\r\n\r\n\r\n	\r\n		\r\n			\r\n		\r\n		\r\n			\r\n			Huawei MateView sử dụng tỷ lệ 3:2, phục vụ tốt hơn cho c&ocirc;ng việc. Ảnh:&nbsp;Huawei.\r\n			\r\n		\r\n	\r\n\r\n\r\nMateView được đ&aacute;nh gi&aacute; cao bởi thiết kế mỏng v&agrave; khung nh&ocirc;m nguy&ecirc;n khối. B&ecirc;n cạnh đ&oacute;, hệ thống cổng kết nối đa dạng, hỗ trợ sạc nhanh 65 W bằng chuẩn Power Delivery cũng l&agrave; thế mạnh của thiết bị n&agrave;y.\r\n\r\nSử dụng tấm nền IPS chất lượng cao, MateView c&oacute; độ s&aacute;ng tốt v&agrave; đ&aacute;p ứng đầy đủ c&aacute;c phổ m&agrave;u th&ocirc;ng dụng. Nhờ đ&oacute;, người d&ugrave;ng khi l&agrave;m việc li&ecirc;n quan đến h&igrave;nh ảnh sẽ đạt độ ch&iacute;nh x&aacute;c cao hơn để in ấn.\r\n\r\nĐiểm trừ của sản phẩm l&agrave; ch&acirc;n đế kết nối cố định, người d&ugrave;ng kh&ocirc;ng thể gắn tường hoặc bắt với c&aacute;c loại tay treo. Ngo&agrave;i ta, MateView chỉ hỗ trợ tần số qu&eacute;t 60 Hz, kh&ocirc;ng đủ đ&aacute;p ứng nhu cầu chơi game của người d&ugrave;ng.\r\n\r\nDell UltraSharp U2720Q - M&agrave;n h&igrave;nh cho người l&agrave;m đồ họa\r\n\r\n\r\n	K&iacute;ch thước: 27 inch\r\n	Độ ph&acirc;n giải: 4K\r\n	Tỷ lệ hiển thị: 16:9\r\n	Gi&aacute; b&aacute;n: 14,5 triệu đồng\r\n\r\n\r\nModel của Dell l&agrave; chiếc m&agrave;n h&igrave;nh hướng đến đối tượng người d&ugrave;ng l&agrave;m c&aacute;c c&ocirc;ng việc li&ecirc;n quan đến đồ họa. Với độ ph&acirc;n giải 4K tr&ecirc;n k&iacute;ch thước 27 inch, Dell U2720Q đạt độ sắc n&eacute;t tốt với mật độ điểm ảnh cao, gi&uacute;p người d&ugrave;ng ph&acirc;n bố được nhiều cửa sổ hơn khi l&agrave;m việc đa nhiệm.\r\n\r\nRa mắt đ&atilde; l&acirc;u, Dell UltraSharp U2720Q vẫn l&agrave; thiết bị ph&ugrave; hợp với người d&ugrave;ng l&agrave;m việc thiết kế. Ảnh: Engadget.'),
(138, '\'THỢ ĐÀO\' ĐÃ KHAI THÁC HẾT 90% BITCOIN TRÊN THẾ GIỚI', '\'THỢ ĐÀO\' ĐÃ KHAI THÁC HẾT 90% BITCOIN TRÊN THẾ GIỚI', '<p>eykyrfdghj</p>'),
(139, 'aergae', 'aerge', 'egerg'),
(140, 'rưhrth', 'rưthrtgfh', 'rưhywrwyyfdgh'),
(141, 'fwfg', 'eagae', 'ẻg'),
(142, 'trí ngu', 'trí ngu', NULL),
(143, 'trí ngu', 'trí ngu', NULL),
(144, 'ưGẺGE', 'ưGẺGE', NULL),
(145, 'aergaerhgrth', 'aergaerhgrth', NULL),
(146, 'aergaerhgrth', 'aergaerhgrth', NULL),
(147, NULL, NULL, NULL),
(148, 'tutyu', 'etuetyu', 'teutyuty'),
(149, 'aerg', 'gẻg', 'earger'),
(150, NULL, NULL, NULL),
(151, NULL, NULL, NULL),
(152, NULL, NULL, NULL),
(153, NULL, NULL, NULL),
(154, 'qaergeargerg', 'qaergeargerg', NULL),
(155, NULL, NULL, NULL),
(156, NULL, NULL, NULL),
(157, 'Thiết bị âm Thanh-Loa VI TÍNH', 'Thiết bị âm Thanh-Loa VI TÍNH', NULL),
(158, NULL, NULL, NULL),
(159, NULL, NULL, NULL),
(160, NULL, NULL, NULL),
(161, NULL, NULL, NULL),
(162, NULL, NULL, NULL),
(163, NULL, NULL, NULL),
(164, NULL, NULL, NULL),
(165, NULL, NULL, NULL),
(166, 'ahrthart', 'ahrthart', NULL),
(167, 'ahrthart', 'ahrthart', NULL),
(168, 'gaegeg', 'gaegeg', NULL),
(169, 'gaegeg', 'gaegeg', NULL),
(170, 'Nhà 72m2 một lầu đúc cần tiền bán gấp', 'Nhà 72m2 một lầu đúc cần tiền bán gấp', 'Nh&agrave; hẻm B&igrave;nh th&agrave;nh ,B&igrave;nh Hưng Ho&agrave; B ,B&igrave;nh T&acirc;n&nbsp;\r\n4m x17 m 1 lầu thuận tiện l&agrave;m văn ph&ograve;ng c&ocirc;ng ty hẻm xe tải th&ocirc;ng ,s&aacute;t ngay khi d&acirc;n cư Vĩnh Lộc sầm uất nhất v&ugrave;ng&nbsp;\r\nGi&aacute; :4,8 tỷ tl\r\nLi&ecirc;n hệ m&igrave;nh :0935613986'),
(171, 'test1212313', 'test', 'test'),
(172, 'test2', 'test2', 'test2'),
(173, 'test2', 'test2', NULL),
(174, '4 lý do nên thận trọng khi đầu tư bất động sản năm 2018', '4 lý do nên thận trọng khi đầu tư bất động sản năm 2018', 'Năm 2018 là thời điểm rất nhiều dự án bất động sản bước vào giai đoạn bàn giao sản phẩm. Đây là cột mốc bắt buộc phải làm bài test kiểm tra thực tế khả năng cam kết lợi nhuận của chủ đầu tư đúng đến đâu. Nhiều năm qua, chiêu thả mồi bằng tỷ suất lợi nhuận khủng để \"đổi tép bắt tôm\" đã được rất nhiều doanh nghiệp áp dụng. Tuy nhiên, bài toán trên lý thuyết đến lúc đối mặt với thực tế không hề đơn giản và chắc chắn sẽ bị sai số ít nhiều. Bởi lẽ, khi nguồn cung sẵn sàng vận hành đồng loạt tăng cao, theo quy luật thị trường, giá thuê, giá khai thác sẽ giảm, kéo theo biên lợi nhuận thấp hơn kỳ vọng. Thị trường cần vượt qua bài test này để tìm sự cân bằng sau chuỗi thời gian dài nóng sốt.'),
(175, 'Hoàn công', 'Hoàn công', 'Hoàn công  là một thủ tục trong hoạt động xây dựng công trình nhằm xác nhận sự kiện chủ đầu tư, đơn vị thi công đã hoàn thành công trình xây dựng sau khi được cấp giấy phép xây dựng. Hoàn công có ý nghĩa là điều kiện bắt buộc để được cơ quan nhà nước có thẩm quyền cấp chứng nhận quyền sở hữu nhà ở, công trình khi có sự thay đổi do xây dựng.'),
(176, 'test', 'test', NULL),
(177, 'test', 'test', NULL),
(178, NULL, NULL, NULL),
(179, NULL, NULL, NULL),
(180, NULL, NULL, NULL),
(181, 'GIÁ TÍNH THUẾ CHUYỂN NHƯỢNG ĐẤT', 'GIÁ TÍNH THUẾ CHUYỂN NHƯỢNG ĐẤT', NULL),
(182, NULL, NULL, NULL),
(183, NULL, NULL, NULL),
(184, 'Du lịch thúc đẩy bất động sản khu Đông Hà Nội', 'Du lịch thúc đẩy bất động sản khu Đông Hà Nội', NULL),
(185, 'Đề xuất tăng hệ số điều chỉnh giá đất TP HCM lên tới 30%', 'Đề xuất tăng hệ số điều chỉnh giá đất TP HCM lên tới 30%', NULL),
(186, 'TƯ VẤN PHÁP LÝ', 'TƯ VẤN PHÁP LÝ', NULL),
(187, NULL, NULL, NULL),
(188, 'MÔI GIỚI BẤT ĐỘNG SẢN', 'MÔI GIỚI BẤT ĐỘNG SẢN', NULL),
(189, 'MÔI GIỚI BẤT ĐỘNG SẢN', 'MÔI GIỚI BẤT ĐỘNG SẢN', NULL),
(190, 'MÔI GIỚI BẤT ĐỘNG SẢN', 'MÔI GIỚI BẤT ĐỘNG SẢN', NULL),
(191, 'NHÀ ĐẤT CHO THUÊ', 'NHÀ ĐẤT CHO THUÊ', NULL),
(192, 'test', 'test', 'test'),
(193, 'test2', 'test2', 'test2'),
(194, 'test3', 'test3', 'test3'),
(195, 'test4', 'test4', 'test4'),
(196, 'test4', 'test4', 'test4'),
(197, 'test4', 'test4', 'test4'),
(198, 'test5', 'test5', 'test5'),
(199, 'test6', 'test6', 'test6'),
(200, 'test7', 'test7', 'test7'),
(201, 'test8', 'test8', 'test8'),
(202, 'test9', 'test9', 'test9'),
(203, NULL, NULL, NULL),
(204, NULL, NULL, NULL),
(205, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_advises`
--

CREATE TABLE `seo_advises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_advises`
--

INSERT INTO `seo_advises` (`id`, `image`, `seo_id`) VALUES
(1, 'logo-5206.png', 61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_estate`
--

CREATE TABLE `seo_estate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_estate`
--

INSERT INTO `seo_estate` (`id`, `image`, `seo_id`) VALUES
(1, 'images.jpeg', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_news`
--

CREATE TABLE `seo_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_news`
--

INSERT INTO `seo_news` (`id`, `content`, `image`, `seo_id`) VALUES
(1, '<p>thien23425</p>', 'logo-5206.png', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_procedure`
--

CREATE TABLE `seo_procedure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_procedure`
--

INSERT INTO `seo_procedure` (`id`, `image`, `seo_id`) VALUES
(1, 'images (3).jpeg', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_products`
--

CREATE TABLE `seo_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_products`
--

INSERT INTO `seo_products` (`id`, `image`, `seo_id`) VALUES
(1, 'images (3).jpeg', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_quotations`
--

CREATE TABLE `seo_quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_quotations`
--

INSERT INTO `seo_quotations` (`id`, `image`, `seo_id`) VALUES
(1, 'images (1).jpeg', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_real_estates`
--

CREATE TABLE `seo_real_estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `seo_real_estates`
--

INSERT INTO `seo_real_estates` (`id`, `image`, `seo_id`) VALUES
(1, 'logo-5206.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_real_estate_procedures`
--

CREATE TABLE `seo_real_estate_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `seo_real_estate_procedures`
--

INSERT INTO `seo_real_estate_procedures` (`id`, `image`, `seo_id`) VALUES
(1, 'logo-5206.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_videos`
--

CREATE TABLE `seo_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_videos`
--

INSERT INTO `seo_videos` (`id`, `image`, `seo_id`) VALUES
(1, 'images (3).jpeg', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fanpage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_product_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_posts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gg_analytic` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gg_webmaster_tool` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_js` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_js` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `tittle`, `address`, `name`, `email`, `hotline`, `zalo`, `phone`, `website`, `fanpage`, `copyright`, `map`, `link`, `time`, `product_number`, `related_product_number`, `posts`, `related_posts`, `map_iframe`, `gg_analytic`, `gg_webmaster_tool`, `head_js`, `body_js`, `seo_id`) VALUES
(1, 'VI TÍNH PHÁT NĂNG', '592 Phú Lợi, P. Phú Hoà, TP. TDM, Bình Dương', NULL, 'ngodinhnhan82@gmail.com', '00000000000', '0982 223 762464', '0982 223 7626456', 'https://nhadatminhphat.com.vn/', 'rthrt', 'VI TÍNH PHÁT NĂNG', 'hgsyhgerth', NULL, '2024-02-09', NULL, NULL, NULL, NULL, NULL, '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-4D6T9J3L9J\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-4D6T9J3L9J\');\r\n</script>', 'mmm', 'tẹht', 'etyjt', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshows`
--

CREATE TABLE `slideshows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshows`
--

INSERT INTO `slideshows` (`id`, `number`, `image`, `tittle`, `link`, `display`) VALUES
(1, 1, '558190331086902-31111.jpg', 'rhrth', 'rhtrth', 0),
(2, 2, '192328927652645-16630.jpg', 'wfqgqwer2', 'https://youtu.be/PZpO-ObhAfQ?si=IA', 1),
(4, 3, 'slider-27560.jpg', 'ưef', 'ưef', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogans`
--

CREATE TABLE `slogans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slogans`
--

INSERT INTO `slogans` (`id`, `tittle`, `display`) VALUES
(1, 'làm làm làm', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_networks`
--

CREATE TABLE `social_networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_networks`
--

INSERT INTO `social_networks` (`id`, `number`, `image`, `link`, `display`) VALUES
(2, 1, 'mxh1-1-1957.png', 'https://www.google.com/', 1),
(3, 2, 'mxh1-2-1178.png', 'https://www.google.com/', 1),
(4, 3, 'mxh1-3-4655.png', 'https://www.google.com/', 1),
(7, 4, 'mxh1-4-6766.png', 'https://www.google.com/', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag_products`
--

CREATE TABLE `tag_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outstand` tinyint(4) DEFAULT NULL,
  `display` tinyint(4) NOT NULL,
  `seo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tag_products`
--

INSERT INTO `tag_products` (`id`, `link`, `number`, `image`, `tittle`, `outstand`, `display`, `seo_id`) VALUES
(1, 'linh-kien-moi', 3, 'images.jpeg', 'Linh kiện mới', 1, 1, 1),
(7, 'srthsrythsrhagreg', 2, 'images (2).jpeg', 'srthsrythsrhagreg', NULL, 1, 135);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `role`, `address`, `email`, `sex`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `date`) VALUES
(1, 'admin', '0363008204', 'admin', '740/11 Lê Trọng Rấn, P. Bình Hưng Hòa, Bình Tân, TP HCM', 'admin@gmail.com', 1, NULL, '$2y$12$pYMzqmj0GyMFl5/6yloVSePe7tDhsOgTm31ZfDGbC3nPS3N.B6d/i', 'LsfWBW6GYtaw6za3iiPF4spu852pB0uVfaB5VSfF8bByNeB028m7v2PIesPG', '2023-12-11 01:06:48', '2024-03-03 19:21:39', '2024-01-27'),
(2, 'admin', '', '', '', 'tri@gmail.com', 2, NULL, '$2y$12$tGjvKY8VPzWi7t8uNWmsKejDEryaMUTpIhbou0Pml/tslPiXyo4Wq', 'yq7EQvdjBe3fMYm1Yufdos7ArwSoyPu6PypWeLAU2AICWGH09yjxBzGTGb4x', '2023-12-14 21:32:30', '2023-12-14 21:32:30', '0000-00-00'),
(3, 'thienbodoi', NULL, NULL, NULL, 'admin', 1, NULL, '$2y$12$1frGErL6/vG2XkpnBkMNleRupNf7P.0JyTJhwjAZQ0C2P9OepNmia', NULL, '2023-12-26 18:45:21', '2023-12-26 18:45:21', NULL),
(4, 'admin', NULL, NULL, NULL, 'admin@gmail', 2, NULL, '$2y$12$wf1pnl.BR5YbMYhAasLK0eJF79sKp7pYu0MBMHVLujnBV8jfH8AKi', NULL, '2023-12-27 05:34:38', '2023-12-27 05:34:38', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outstand` tinyint(4) NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `number`, `tittle`, `link`, `outstand`, `display`) VALUES
(1, 1, 'Khắc phục lỗi không share được máy in trong win 10', 'https://www.youtube.com/watch?v=e4kX1LbPywQ&ab_channel=EIT', 1, 1),
(3, 2, 'Hướng dẫn chia sẻ máy in trong mạng lan| cách chia sẻ máy in| chia sẻ máy in trong mạng nội bộ', 'https://youtu.be/UYlJR6cBpuk', 0, 1),
(4, 3, 'Khắc phục sự cố mở đươc file word nhưng không chỉnh sửa được', 'https://youtu.be/UYlJR6cBpuk', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `advises`
--
ALTER TABLE `advises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advises_id_seo` (`seo_id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `contact_letters`
--
ALTER TABLE `contact_letters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_supports`
--
ALTER TABLE `customer_supports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_products`
--
ALTER TABLE `detail_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_products_level2_product_id_foreign` (`level2_product_id`),
  ADD KEY `detail_products_seo_id_foreign` (`seo_id`),
  ADD KEY `detail_products_level3_products_id_foreign` (`level3_product_id`),
  ADD KEY `detail_products_level1_products_id_foreign` (`level1_product_id`),
  ADD KEY `tag_products_detail_product_foreign` (`tag_product_id`),
  ADD KEY `gallery_image_id` (`gallery_id`);

--
-- Chỉ mục cho bảng `detail_quotations`
--
ALTER TABLE `detail_quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_quotations_seo_id_foreign` (`seo_id`),
  ADD KEY `detail_quotation_level_1` (`level1_quotation_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favicons`
--
ALTER TABLE `favicons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id_product` (`product_id`);

--
-- Chỉ mục cho bảng `home_images`
--
ALTER TABLE `home_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `introduces_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `level1_products`
--
ALTER TABLE `level1_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level1_products_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `level1_quotations`
--
ALTER TABLE `level1_quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level1_quotations_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `level2_products`
--
ALTER TABLE `level2_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level2_products_level1_product_id_foreign` (`level1_product_id`),
  ADD KEY `level2_products_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `level3_products`
--
ALTER TABLE `level3_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level3_products_level2_product_id_foreign` (`level2_product_id`),
  ADD KEY `level3_products_seo_id_foreign` (`seo_id`),
  ADD KEY `level3_products_level1_product_id_foreign` (`level1_product_id`);

--
-- Chỉ mục cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liquidations_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policies_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `procedure_id_seo` (`seo_id`);

--
-- Chỉ mục cho bảng `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `real_estates_id_seo` (`seo_id`);

--
-- Chỉ mục cho bảng `register_advise`
--
ALTER TABLE `register_advise`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seo_advises`
--
ALTER TABLE `seo_advises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_id_advise` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_estate`
--
ALTER TABLE `seo_estate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_id_estate` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_news`
--
ALTER TABLE `seo_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_news_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_procedure`
--
ALTER TABLE `seo_procedure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_id_procedure` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_products`
--
ALTER TABLE `seo_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_products_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_quotations`
--
ALTER TABLE `seo_quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_quotations_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_real_estates`
--
ALTER TABLE `seo_real_estates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_real_estate_seo` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_real_estate_procedures`
--
ALTER TABLE `seo_real_estate_procedures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_real_estate_procedures_seo` (`seo_id`);

--
-- Chỉ mục cho bảng `seo_videos`
--
ALTER TABLE `seo_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_videos_seo_id_foreign` (`seo_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_id_setting` (`seo_id`);

--
-- Chỉ mục cho bảng `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogans`
--
ALTER TABLE `slogans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_networks`
--
ALTER TABLE `social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tag_products`
--
ALTER TABLE `tag_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_id_tag_product` (`seo_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `advises`
--
ALTER TABLE `advises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact_letters`
--
ALTER TABLE `contact_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer_supports`
--
ALTER TABLE `customer_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `detail_products`
--
ALTER TABLE `detail_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT cho bảng `detail_quotations`
--
ALTER TABLE `detail_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6902;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favicons`
--
ALTER TABLE `favicons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `home_images`
--
ALTER TABLE `home_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `introduces`
--
ALTER TABLE `introduces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `level1_products`
--
ALTER TABLE `level1_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `level1_quotations`
--
ALTER TABLE `level1_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `level2_products`
--
ALTER TABLE `level2_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `level3_products`
--
ALTER TABLE `level3_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `procedures`
--
ALTER TABLE `procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `register_advise`
--
ALTER TABLE `register_advise`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT cho bảng `seo_advises`
--
ALTER TABLE `seo_advises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_estate`
--
ALTER TABLE `seo_estate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_news`
--
ALTER TABLE `seo_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_procedure`
--
ALTER TABLE `seo_procedure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_products`
--
ALTER TABLE `seo_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_quotations`
--
ALTER TABLE `seo_quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_real_estates`
--
ALTER TABLE `seo_real_estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_real_estate_procedures`
--
ALTER TABLE `seo_real_estate_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seo_videos`
--
ALTER TABLE `seo_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `slogans`
--
ALTER TABLE `slogans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `social_networks`
--
ALTER TABLE `social_networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tag_products`
--
ALTER TABLE `tag_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `advises`
--
ALTER TABLE `advises`
  ADD CONSTRAINT `advises_id_seo` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `detail_products`
--
ALTER TABLE `detail_products`
  ADD CONSTRAINT `detail_products_level1_products_id_foreign` FOREIGN KEY (`level1_product_id`) REFERENCES `level1_products` (`id`),
  ADD CONSTRAINT `detail_products_level2_product_id_foreign` FOREIGN KEY (`level2_product_id`) REFERENCES `level2_products` (`id`),
  ADD CONSTRAINT `detail_products_level3_products_id_foreign` FOREIGN KEY (`level3_product_id`) REFERENCES `level3_products` (`id`),
  ADD CONSTRAINT `detail_products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`),
  ADD CONSTRAINT `gallery_image_id` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`),
  ADD CONSTRAINT `tag_products_detail_product_foreign` FOREIGN KEY (`tag_product_id`) REFERENCES `tag_products` (`id`);

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_id_product` FOREIGN KEY (`product_id`) REFERENCES `detail_products` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `detail_products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD CONSTRAINT `introduces_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `level1_products`
--
ALTER TABLE `level1_products`
  ADD CONSTRAINT `level1_products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `level1_quotations`
--
ALTER TABLE `level1_quotations`
  ADD CONSTRAINT `level1_quotations_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `level2_products`
--
ALTER TABLE `level2_products`
  ADD CONSTRAINT `level2_products_level1_product_id_foreign` FOREIGN KEY (`level1_product_id`) REFERENCES `level1_products` (`id`),
  ADD CONSTRAINT `level2_products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `level3_products`
--
ALTER TABLE `level3_products`
  ADD CONSTRAINT `level3_products_level1_product_id_foreign` FOREIGN KEY (`level1_product_id`) REFERENCES `level1_products` (`id`),
  ADD CONSTRAINT `level3_products_level2_product_id_foreign` FOREIGN KEY (`level2_product_id`) REFERENCES `level2_products` (`id`),
  ADD CONSTRAINT `level3_products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  ADD CONSTRAINT `liquidations_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `policies`
--
ALTER TABLE `policies`
  ADD CONSTRAINT `policies_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `procedures`
--
ALTER TABLE `procedures`
  ADD CONSTRAINT `procedure_id_seo` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `real_estates`
--
ALTER TABLE `real_estates`
  ADD CONSTRAINT `real_estates_id_seo` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_advises`
--
ALTER TABLE `seo_advises`
  ADD CONSTRAINT `seo_id_advise` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_estate`
--
ALTER TABLE `seo_estate`
  ADD CONSTRAINT `seo_id_estate` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_news`
--
ALTER TABLE `seo_news`
  ADD CONSTRAINT `seo_news_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_procedure`
--
ALTER TABLE `seo_procedure`
  ADD CONSTRAINT `seo_id_procedure` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_products`
--
ALTER TABLE `seo_products`
  ADD CONSTRAINT `seo_products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_quotations`
--
ALTER TABLE `seo_quotations`
  ADD CONSTRAINT `seo_quotations_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_real_estates`
--
ALTER TABLE `seo_real_estates`
  ADD CONSTRAINT `seo_real_estate_seo` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_real_estate_procedures`
--
ALTER TABLE `seo_real_estate_procedures`
  ADD CONSTRAINT `seo_real_estate_procedures_seo` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `seo_videos`
--
ALTER TABLE `seo_videos`
  ADD CONSTRAINT `seo_videos_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `seo_id_setting` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);

--
-- Các ràng buộc cho bảng `tag_products`
--
ALTER TABLE `tag_products`
  ADD CONSTRAINT `seo_id_tag_product` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
