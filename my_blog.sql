-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-04-21 11:14:26
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `my_blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE `about` (
  `Id` int(3) NOT NULL,
  `About_Tittle` varchar(50) CHARACTER SET gbk NOT NULL,
  `About_Content` text CHARACTER SET gbk NOT NULL,
  `About_Status` int(1) NOT NULL DEFAULT '1',
  `About_Img` text CHARACTER SET gbk NOT NULL,
  `About_Createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `About_Updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`Id`, `About_Tittle`, `About_Content`, `About_Status`, `About_Img`, `About_Createtime`, `About_Updatetime`) VALUES
(1, '关于我', '![event_loop.png](https://127.0.0.1:8890/api/image/public/aboutimgs/yGlnG927sV-event_loop.png)\n##### Hello，大家好，我是xiaohai，欢迎来到我的个人博客~\n\n#### Hello，大家好，我是xiaohai，欢迎来到我的个人博客~\n\n### Hello，大家好，我是xiaohai，欢迎来到我的个人博客~\n\n## Hello，大家好，我是xiaohai，欢迎来到我的个人博客~\n\n# Hello，大家好，我是xiaohai，欢迎来到我的个人博客~\n\n\n', 1, '/public/aboutimgs/yGlnG927sV-event_loop.png,', '2022-03-12 18:58:25', '2022-04-18 10:20:42');

-- --------------------------------------------------------

--
-- 表的结构 `admin_table`
--

CREATE TABLE `admin_table` (
  `Id` int(8) NOT NULL,
  `Admin_UniqueId` char(20) NOT NULL,
  `Admin_Nickname` char(15) CHARACTER SET gbk NOT NULL,
  `Admin_Account` char(15) NOT NULL,
  `Admin_Password` char(20) NOT NULL,
  `Admin_Status` int(2) NOT NULL DEFAULT '1',
  `Admin_Examined` int(1) NOT NULL DEFAULT '0',
  `Admin_Role` char(10) NOT NULL,
  `Admin_Email` char(30) NOT NULL,
  `Admin_PhoneNumber` char(14) NOT NULL,
  `Admin_Introduction` char(50) CHARACTER SET gbk NOT NULL,
  `Admin_CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Admin_UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin_table`
--

INSERT INTO `admin_table` (`Id`, `Admin_UniqueId`, `Admin_Nickname`, `Admin_Account`, `Admin_Password`, `Admin_Status`, `Admin_Examined`, `Admin_Role`, `Admin_Email`, `Admin_PhoneNumber`, `Admin_Introduction`, `Admin_CreateTime`, `Admin_UpdateTime`) VALUES
(1, '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '123456', 1, 1, 'Admin', 'qwer', '18282727137', 'Hi~大家好，我是小海，很高兴见到各位.', '2022-03-07 12:58:44', '2022-04-21 09:08:33'),
(2, 'Qe83s2xQRrtcppfY', 'xiaohong', 'editor01', '123456', 1, 1, 'Editor', 'qwer', '17378586829', '大家好，我是编辑者01', '2022-03-07 15:44:36', '2022-04-21 09:08:33'),
(3, 'tGeXOI6snN5BDf92', 'xiaoming', 'editor02', '123456', 1, 2, 'Editor', 'qwer', '17378586829', '大家好，我是编辑者02', '2022-03-07 15:45:55', '2022-03-20 10:31:57'),
(4, 'fdca9eH7hIA8bb1B', '浏览者1', 'viewer01', '123456', 1, 1, 'Viewer', 'qwer', '17378586829', '大家好，我是浏览者1', '2022-03-07 15:46:58', '2022-04-21 09:08:33'),
(5, 'XM0R99PuwQoFV3T9', '管理员测试01', 'admintester01', '123456', 1, 1, 'Editor', '123@qq.com', '10000', '0.0', '2022-04-08 07:06:04', '2022-04-21 09:08:33');

-- --------------------------------------------------------

--
-- 表的结构 `admin_table_right`
--

CREATE TABLE `admin_table_right` (
  `Id` int(11) NOT NULL,
  `Admin_Is_Creator` int(1) NOT NULL DEFAULT '0',
  `Admin_Role` char(10) CHARACTER SET gbk NOT NULL,
  `Admin_Tab_List` text CHARACTER SET gbk NOT NULL,
  `Admin_Right_List` text CHARACTER SET gbk NOT NULL,
  `Admin_Role_Id` char(20) NOT NULL,
  `Admin_Role_Status` int(2) NOT NULL DEFAULT '1',
  `Admin_Role_CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Admin_Role_UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `admin_table_right`
--

INSERT INTO `admin_table_right` (`Id`, `Admin_Is_Creator`, `Admin_Role`, `Admin_Tab_List`, `Admin_Right_List`, `Admin_Role_Id`, `Admin_Role_Status`, `Admin_Role_CreateTime`, `Admin_Role_UpdateTime`) VALUES
(1, 1, 'Admin', '0%5Bidx%5D=0&0%5Btitle%5D=DashBoard&0%5Bclass%5D=el-icon-s-grid&0%5Bpath%5D=%2Fdashboard&1%5Bidx%5D=1&1%5Btitle%5D=%E5%8F%91%E5%B8%83%E5%8D%9A%E5%AE%A2&1%5Bclass%5D=el-icon-upload&1%5Bpath%5D=%2Fpublishblog&2%5Bidx%5D=2&2%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E7%AE%A1%E7%90%86&2%5Bclass%5D=el-icon-s-order&2%5Bpath%5D=%2Fmanageblog&3%5Bidx%5D=3&3%5Btitle%5D=%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bclass%5D=el-icon-s-comment&3%5Bpath%5D=%2Fmanagecomment&3%5Bchild%5D%5B0%5D%5Bidx%5D=7&3%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagecomment%2Fblogcomment&3%5Bchild%5D%5B1%5D%5Bidx%5D=8&3%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E7%95%99%E8%A8%80%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagecomment%2Fmessagecomment&3%5Bchild%5D%5B2%5D%5Bidx%5D=9&3%5Bchild%5D%5B2%5D%5Btitle%5D=%E8%AF%84%E8%AE%BA%E5%AE%A1%E6%A0%B8&3%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagecomment%2Fexaminecomment&4%5Bidx%5D=4&4%5Btitle%5D=%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bclass%5D=el-icon-user-solid&4%5Bpath%5D=%2Fmanageuser&4%5Bchild%5D%5B0%5D%5Bidx%5D=10&4%5Bchild%5D%5B0%5D%5Btitle%5D=%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanageuser%2Fmanagenormaluser&4%5Bchild%5D%5B1%5D%5Bidx%5D=11&4%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%AE%A1%E7%90%86%E5%91%98%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanageuser%2Fmanageadminuser&4%5Bchild%5D%5B2%5D%5Bidx%5D=12&4%5Bchild%5D%5B2%5D%5Btitle%5D=%E7%94%A8%E6%88%B7%E6%B3%A8%E5%86%8C%E5%AE%A1%E6%A0%B8&4%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanageuser%2Fexamineuserandadmin&4%5Bchild%5D%5B3%5D%5Bidx%5D=13&4%5Bchild%5D%5B3%5D%5Btitle%5D=%E6%B7%BB%E5%8A%A0%E7%94%A8%E6%88%B7&4%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanageuser%2Fadduseroradmin&5%5Bidx%5D=5&5%5Btitle%5D=%E7%BD%91%E7%AB%99%E7%AE%A1%E7%90%86&5%5Bclass%5D=el-icon-s-marketing&5%5Bpath%5D=%2Fmanagewebsite&5%5Bchild%5D%5B0%5D%5Bidx%5D=14&5%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E6%A0%87%E7%AD%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagetag&5%5Bchild%5D%5B1%5D%5Bidx%5D=15&5%5Bchild%5D%5B1%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E5%88%86%E7%B1%BB%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageclass&5%5Bchild%5D%5B2%5D%5Bidx%5D=16&5%5Bchild%5D%5B2%5D%5Btitle%5D=%E5%85%B3%E4%BA%8E%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageaboutpage&5%5Bchild%5D%5B3%5D%5Bidx%5D=17&5%5Bchild%5D%5B3%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagemessagepage&5%5Bchild%5D%5B4%5D%5Bidx%5D=18&5%5Bchild%5D%5B4%5D%5Btitle%5D=%E7%BD%91%E7%AB%99%E8%83%8C%E6%99%AF%E5%9B%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B4%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagebackgroundimg&5%5Bchild%5D%5B5%5D%5Bidx%5D=19&5%5Bchild%5D%5B5%5D%5Btitle%5D=%E5%A4%B4%E5%83%8F%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B5%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageavatar&5%5Bchild%5D%5B6%5D%5Bidx%5D=20&5%5Bchild%5D%5B6%5D%5Btitle%5D=%E5%B9%BF%E5%91%8A%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B6%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageadvertisement&6%5Bidx%5D=6&6%5Btitle%5D=%E6%9D%83%E9%99%90%E7%AE%A1%E7%90%86&6%5Bclass%5D=el-icon-warning&6%5Bpath%5D=%2Fmanageprivilege', '', 'ABCD-EFGH-IJKLM-NOPQ', 1, '2022-03-09 16:38:46', '2022-04-14 08:35:43'),
(2, 0, 'Editor', '0%5Bidx%5D=1&0%5Btitle%5D=%E5%8F%91%E5%B8%83%E5%8D%9A%E5%AE%A2&0%5Bclass%5D=el-icon-upload&0%5Bpath%5D=%2Fpublishblog&1%5Bidx%5D=3&1%5Btitle%5D=%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&1%5Bclass%5D=el-icon-s-comment&1%5Bpath%5D=%2Fmanagecomment&1%5Bchild%5D%5B0%5D%5Bidx%5D=7&1%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&1%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagecomment%2Fblogcomment&1%5Bchild%5D%5B1%5D%5Bidx%5D=8&1%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E7%95%99%E8%A8%80%E7%AE%A1%E7%90%86&1%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagecomment%2Fmessagecomment&1%5Bchild%5D%5B2%5D%5Bidx%5D=9&1%5Bchild%5D%5B2%5D%5Btitle%5D=%E8%AF%84%E8%AE%BA%E5%AE%A1%E6%A0%B8&1%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagecomment%2Fexaminecomment&2%5Bidx%5D=4&2%5Btitle%5D=%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&2%5Bclass%5D=el-icon-user-solid&2%5Bpath%5D=%2Fmanageuser&2%5Bchild%5D%5B0%5D%5Bidx%5D=10&2%5Bchild%5D%5B0%5D%5Btitle%5D=%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&2%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanageuser%2Fmanagenormaluser&2%5Bchild%5D%5B2%5D%5Bidx%5D=12&2%5Bchild%5D%5B2%5D%5Btitle%5D=%E7%94%A8%E6%88%B7%E6%B3%A8%E5%86%8C%E5%AE%A1%E6%A0%B8&2%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanageuser%2Fexamineuserandadmin', '', 'ONET-WOTH-REEF-OUTF', 1, '2022-03-09 16:40:17', '2022-03-25 21:32:39'),
(3, 0, 'Viewer', '0%5Bidx%5D=0&0%5Btitle%5D=DashBoard&0%5Bclass%5D=el-icon-s-grid&0%5Bpath%5D=%2Fdashboard&1%5Bidx%5D=1&1%5Btitle%5D=%E5%8F%91%E5%B8%83%E5%8D%9A%E5%AE%A2&1%5Bclass%5D=el-icon-upload&1%5Bpath%5D=%2Fpublishblog&2%5Bidx%5D=2&2%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E7%AE%A1%E7%90%86&2%5Bclass%5D=el-icon-s-order&2%5Bpath%5D=%2Fmanageblog&3%5Bidx%5D=3&3%5Btitle%5D=%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bclass%5D=el-icon-s-comment&3%5Bpath%5D=%2Fmanagecomment&3%5Bchild%5D%5B0%5D%5Bidx%5D=7&3%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagecomment%2Fblogcomment&3%5Bchild%5D%5B1%5D%5Bidx%5D=8&3%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E7%95%99%E8%A8%80%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagecomment%2Fmessagecomment&3%5Bchild%5D%5B2%5D%5Bidx%5D=9&3%5Bchild%5D%5B2%5D%5Btitle%5D=%E8%AF%84%E8%AE%BA%E5%AE%A1%E6%A0%B8&3%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagecomment%2Fexaminecomment&4%5Bidx%5D=4&4%5Btitle%5D=%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bclass%5D=el-icon-user-solid&4%5Bpath%5D=%2Fmanageuser&4%5Bchild%5D%5B0%5D%5Bidx%5D=10&4%5Bchild%5D%5B0%5D%5Btitle%5D=%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanageuser%2Fmanagenormaluser&4%5Bchild%5D%5B1%5D%5Bidx%5D=11&4%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%AE%A1%E7%90%86%E5%91%98%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanageuser%2Fmanageadminuser&4%5Bchild%5D%5B2%5D%5Bidx%5D=12&4%5Bchild%5D%5B2%5D%5Btitle%5D=%E7%94%A8%E6%88%B7%E6%B3%A8%E5%86%8C%E5%AE%A1%E6%A0%B8&4%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanageuser%2Fexamineuserandadmin&4%5Bchild%5D%5B3%5D%5Bidx%5D=13&4%5Bchild%5D%5B3%5D%5Btitle%5D=%E6%B7%BB%E5%8A%A0%E7%94%A8%E6%88%B7&4%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanageuser%2Fadduseroradmin&5%5Bidx%5D=5&5%5Btitle%5D=%E7%BD%91%E7%AB%99%E7%AE%A1%E7%90%86&5%5Bclass%5D=el-icon-s-marketing&5%5Bpath%5D=%2Fmanagewebsite&5%5Bchild%5D%5B0%5D%5Bidx%5D=14&5%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E6%A0%87%E7%AD%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagetag&5%5Bchild%5D%5B1%5D%5Bidx%5D=15&5%5Bchild%5D%5B1%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E5%88%86%E7%B1%BB%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageclass&5%5Bchild%5D%5B2%5D%5Bidx%5D=16&5%5Bchild%5D%5B2%5D%5Btitle%5D=%E5%85%B3%E4%BA%8E%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageaboutpage&5%5Bchild%5D%5B3%5D%5Bidx%5D=17&5%5Bchild%5D%5B3%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagemessagepage&5%5Bchild%5D%5B4%5D%5Bidx%5D=18&5%5Bchild%5D%5B4%5D%5Btitle%5D=%E7%BD%91%E7%AB%99%E8%83%8C%E6%99%AF%E5%9B%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B4%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagebackgroundimg&5%5Bchild%5D%5B5%5D%5Bidx%5D=19&5%5Bchild%5D%5B5%5D%5Btitle%5D=%E5%A4%B4%E5%83%8F%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B5%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageavatar&5%5Bchild%5D%5B6%5D%5Bidx%5D=20&5%5Bchild%5D%5B6%5D%5Btitle%5D=%E5%B9%BF%E5%91%8A%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B6%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageadvertisement&6%5Bidx%5D=6&6%5Btitle%5D=%E6%9D%83%E9%99%90%E7%AE%A1%E7%90%86&6%5Bclass%5D=el-icon-warning&6%5Bpath%5D=%2Fmanageprivilege', '', 'bpmf-gkhj-qxiv-eaoo', 1, '2022-03-11 14:51:58', '2022-04-14 08:35:51');

-- --------------------------------------------------------

--
-- 表的结构 `advertisement`
--

CREATE TABLE `advertisement` (
  `Id` int(2) NOT NULL,
  `Adv_Tittle` char(30) CHARACTER SET gbk NOT NULL,
  `Adv_Introduction` varchar(500) CHARACTER SET gbk NOT NULL,
  `Adv_Img_Link_Url` varchar(500) CHARACTER SET gbk NOT NULL,
  `Adv_Createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Adv_Updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `advertisement`
--

INSERT INTO `advertisement` (`Id`, `Adv_Tittle`, `Adv_Introduction`, `Adv_Img_Link_Url`, `Adv_Createtime`, `Adv_Updatetime`) VALUES
(1, '广告位招租 :)', '兄弟们 我正在找工作，太难了。。求介绍 T T', 'https://p3-search.byteimg.com/img/labis/c8ea109ac695fbb079d311f30110637d~tplv-tt-cs0:360:360.webp*https:www.baidu.com,https://p3-search.byteimg.com/img/labis/5bf2cf215c39105b3456558c26627148~tplv-tt-cs0:360:360.webp*https://www.toutiao.com/', '2022-04-14 09:33:40', '2022-04-15 14:53:18');

-- --------------------------------------------------------

--
-- 表的结构 `blogs`
--

CREATE TABLE `blogs` (
  `Blog_Id` int(8) NOT NULL,
  `Blog_Title` char(50) CHARACTER SET gbk NOT NULL,
  `Blog_SummaryImg` char(150) CHARACTER SET gbk NOT NULL,
  `Blog_Summary` text CHARACTER SET gbk NOT NULL,
  `Blog_Content` mediumtext CHARACTER SET gbk NOT NULL,
  `Blog_Tags` char(50) CHARACTER SET gbk NOT NULL,
  `Blog_Class` char(50) CHARACTER SET gbk NOT NULL,
  `Blog_Likes` int(6) NOT NULL,
  `Blog_Views` int(6) NOT NULL,
  `Blog_Collected` int(6) NOT NULL,
  `Blog_Comments` int(6) NOT NULL,
  `Blog_Author_Role` char(10) NOT NULL,
  `Blog_Author_UniqueId` char(20) NOT NULL,
  `Blog_Author` char(15) CHARACTER SET gbk NOT NULL,
  `Blog_Author_Account` char(15) NOT NULL,
  `Blog_Author_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Blog_Imgs` varchar(5000) CHARACTER SET gbk NOT NULL,
  `Blog_Status` int(2) NOT NULL DEFAULT '1',
  `Blog_Createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Blog_Updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `blogs`
--

INSERT INTO `blogs` (`Blog_Id`, `Blog_Title`, `Blog_SummaryImg`, `Blog_Summary`, `Blog_Content`, `Blog_Tags`, `Blog_Class`, `Blog_Likes`, `Blog_Views`, `Blog_Collected`, `Blog_Comments`, `Blog_Author_Role`, `Blog_Author_UniqueId`, `Blog_Author`, `Blog_Author_Account`, `Blog_Author_Avatar`, `Blog_Imgs`, `Blog_Status`, `Blog_Createtime`, `Blog_Updatetime`) VALUES
(10000, '1测试博客标题', '', '#### 标题（用底线的形式）Heading (underline)\r\n\r\nThis is an H1\r\n=============\r\n\r\nThis is an H2\r\n-------------\r\n\r\n### 字符效果和横线等\r\n                \r\n----\r\n\r\n~~删除线~~ <s>删除线（开启识别HTML标签时）</s>\r\n*斜体字*      _斜体字_\r\n**粗体**  __粗体__\r\n***粗斜体*** ___粗斜体___\r\n\r\n上标：X<sub>2</sub>，下标：O<sup>2</sup>\r\n\r\n**缩写(同HTML的abbr标签)**\r\n\r\n> 即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启\r\n\r\nThe <abbr title=\"Hyper Text Markup Language\">HTML</abbr> specification is maintained by the <abbr title=\"World Wide Web Consortium\">W3C</abbr>.\r\n\r\n### 引用 Blockquotes\r\n\r\n> 引用文本 Blockquotes\r\n\r\n引用的行内混合 Blockquotes\r\n                    \r\n> 引用：如果想要插入空白换行`即<br />标签`，在插入处先键入两个以上的空格然后回车即可，[普通链接](http://localhost/)。\r\n\r\n### 锚点与链接 Links\r\n\r\n[普通链接](http://localhost/)\r\n\r\n[普通链接带标题](http://localhost/ \"普通链接带标题\")\r\n\r\n直接链接：<https://github.com>\r\n\r\n[锚点链接][anchor-id] \r\n\r\n[anchor-id]: http://www.this-anchor-link.com/\r\n\r\n[mailto:test.test@gmail.com](mailto:test.test@gmail.com)\r\n\r\nGFM a-tail link @pandao  邮箱地址自动链接 test.test@gmail.com  www@vip.qq.com\r\n\r\n> @pandao\r\n\r\n### 多语言代码高亮 Codes\r\n\r\n#### 行内代码 Inline code\r\n\r\n执行命令：`npm install marked`\r\n\r\n#### 缩进风格\r\n\r\n即缩进四个空格，也做为实现类似 `<pre>` 预格式化文本 ( Preformatted Text ) 的功能。\r\n\r\n    <?php\r\n        echo \"Hello world!\";\r\n    ?>\r\n    \r\n预格式化文本：\r\n\r\n    | First Header  | Second Header |\r\n    | ------------- | ------------- |\r\n    | Content Cell  | Content Cell  |\r\n    | Content Cell  | Content Cell  |\r\n', '#### JS代码　\r\n\r\n```javascript\r\nfunction test() {\r\n	console.log(\"Hello world!\");\r\n}\r\n \r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(\'box.init()\');\r\n\r\n			return this;\r\n        },\r\n\r\n		add : function(str) {\r\n			alert(\"add\", str);\r\n\r\n			return this;\r\n		},\r\n\r\n		remove : function(str) {\r\n			alert(\"remove\", str);\r\n\r\n			return this;\r\n		}\r\n    };\r\n    \r\n    box.fn.init.prototype = box.fn;\r\n    \r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(\"jQuery\").remove(\"jQuery\");\r\n```\r\n\r\n#### HTML 代码 HTML codes\r\n\r\n```html\r\n<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <mate charest=\"utf-8\" />\r\n        <meta name=\"keywords\" content=\"Editor.md, Markdown, Editor\" />\r\n        <title>Hello world!</title>\r\n        <style type=\"text/css\">\r\n            body{font-size:14px;color:#444;font-family: \"Microsoft Yahei\", Tahoma, \"Hiragino Sans GB\", Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        </style>\r\n    </head>\r\n    <body>\r\n        <h1 class=\"text-xxl\">Hello world!</h1>\r\n        <p class=\"text-green\">Plain text</p>\r\n    </body>\r\n</html>\r\n```\r\n\r\n### 图片 Images\r\n\r\nImage:\r\n> Follow your heart.\r\n\r\n![](http://127.0.0.2:3333/api/user/public/test/g5iI-4IaB-BggA-c9FH-2.jpeg)\r\n\r\n> 图为：本人桌面', 'JavaScript,Vue,Nodejs', '技术帖', 58, 280, 10, 1, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2020-12-28 00:16:14', '2022-04-18 17:11:11'),
(10001, '2测试博客标题2', '', '----\r\n\r\n### 列表 Lists\r\n#### 无序列表（加号和嵌套）Unordered Lists (+)\r\n                \r\n+ 列表一\r\n+ 列表二\r\n    + 列表二-1\r\n    + 列表二-2\r\n    + 列表二-3\r\n+ 列表三\r\n    * 列表一\r\n    * 列表二\r\n    * 列表三\r\n![唯美乡村田园风光图片桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/fgbc-I48g-1E7g-75gH-唯美乡村田园风光图片桌面壁纸.jpg)', '测试博客内容2（修改测试Blog_Updatetime时间戳是否正常）\r\n![Webpic2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/c0I1-GEG6-7G29-6ehG-Webpic2.jpg)\r\n![唯美朦胧花卉高清桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/FAee-3DBf-Ebb6-8eg8-唯美朦胧花卉高清桌面壁纸.jpg)', 'Nodejs,React', '技术帖', 70, 161, 13, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/c0I1-GEG6-7G29-6ehG-Webpic2.jpg,', 1, '2020-12-28 00:16:31', '2022-04-14 15:13:39'),
(10002, '3博客标题测试更新测试', '', '---- #### 有序列表 Ordered Lists (-)                  1. 第一行 2. 第二行 3. 第三行  #### GFM task list  - [x] GFM task list 1 - [x] GFM task list 2 - [ ] GFM task list 3     - [ ] GFM task list 3-1     - [ ] GFM task list 3-2     - [ ] GFM task list 3-3 - [ ] GFM task list 4     - [ ] GFM task list 4-1     - [ ] GFM task list 4-2                 ', '---- \r\n#### 有序列表 Ordered Lists (-)                  \r\n1. 第一行 \r\n2. 第二行 \r\n3. 第三行  \r\n#### GFM task list  - [x] GFM task list \r\n1 - [x] GFM task list \r\n2 - [ ] GFM task list \r\n3     - [ ] GFM task list \r\n3-1     - [ ] GFM task list \r\n3-2     - [ ] GFM task list \r\n3-3 - [ ] GFM task list \r\n4     - [ ] GFM task list \r\n4-1     - [ ] GFM task list \r\n4-2                  \r\n----', 'Vue,Java', '随笔', 48, 129, 5, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2020-12-28 00:21:45', '2022-04-15 16:11:32'),
(10003, '4博客标题更新测试5', '', '----\r\n                    \r\n### 绘制表格 Tables\r\n\r\n| 项目        | 价格   |  数量  |\r\n| --------   | -----:  | :----:  |\r\n| 计算机      | $1600   |   5     |\r\n| 手机        |   $12   |   12   |\r\n| 管线        |    $1    |  234  |\r\n                    \r\nFirst Header  | Second Header\r\n------------- | -------------\r\nContent Cell  | Content Cell\r\nContent Cell  | Content Cell \r\n\r\n| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n\r\n| Function name | Description                    |\r\n| ------------- | ------------------------------ |\r\n| `help()`      | Display the help window.       |\r\n| `destroy()`   | **Destroy your computer!**     |\r\n\r\n| Left-Aligned  | Center Aligned  | Right Aligned |\r\n| :------------ |:---------------:| -----:|\r\n| col 3 is      | some wordy text | $1600 |\r\n| col 2 is      | centered        |   $12 |\r\n| zebra stripes | are neat        |    $1 |\r\n\r\n| Item      | Value |\r\n| --------- | -----:|\r\n| Computer  | $1600 |\r\n| Phone     |   $12 |\r\n| Pipe      |    $1 |\r\n                \r\n----\r\n', '博客内容测试4\n', 'React,Python,Java', '技术帖', 8, 37, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2020-12-28 00:21:59', '2022-04-15 17:08:12'),
(10004, '5内容长度测试', '', '#### 特殊符号 HTML Entities Codes  &copy; &  &uml; &trade; &iexcl; &pound; &amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;   X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;  18&ordm;C  &quot;  &apos;  [========]', '这是随便写的内容客服让你看估计你太累咯买了黄毛丫头您看嘛可以推荐明天有空免费更换模板可以了，利空莫i节目麦克马洪一体撒地方呢我能否接口还是你看你房间广播呢日哦公牛额吗还要退款吗joy他们赶紧发你是那个截图看让那个i突然就好你们快点发那么贵通', 'React,C++', '实验', 9, 47, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2021-01-05 21:05:45', '2022-04-14 15:13:39'),
(10005, '6内容长度测试2氪', '', '            \r\n### 科学公式 TeX(KaTeX)\r\n\r\n$$E=mc^2$$\r\n\r\n行内的公式$$E=mc^2$$行内的公式，行内的$$E=mc^2$$公式。\r\n\r\n$$x > y$$\r\n\r\n$$\\(\\sqrt{3x-1}+(1+x)^2\\)$$\r\n                    \r\n$$\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))$$\r\n\r\n多行公式：\r\n\r\n```math\r\n\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)\r\n```\r\n\r\n```katex\r\n\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }\r\n```\r\n\r\n```latex\r\nf(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi\r\n```', '麦克风你发给不能扔吧面临困境码云官方不能考几分谈话内容听FBI u你听日好明天有空航空煤油看好你明天看美国和捷克罗姆没看过么如果没记录备份的三个副本了好几遍都是跨行汇款给发的客人了好看来监督的接口借款借款还款压力看记录以柔克刚疯狂过后客户看看刚回来今天要来咯大概，逻辑，没有投放规模，规划plot已经没哦令人恐慌，莫怕好看，让他 美国坦克了干嘛让天空和媒体人没进来看没机库门可怜的父母会让他们好人GMT人类毁灭人类看父母打工i让他们会令人，韩国佛还款日联合，人太好了让他们后发个号码，突然扑克牌，教育，刻录音乐链接，他哟普，看见他了，和肉体和，Orth，让他', 'Vue,Nodejs,SpringBoot', '日记', 8, 33, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2021-01-05 21:40:25', '2022-04-18 16:55:08'),
(10006, 'Test Editormd氪', '', '### 多语言代码高亮 Codes\r\n\r\n#### 行内代码 Inline code\r\n\r\n执行命令：`npm install marked`\r\n\r\n#### 缩进风格\r\n\r\n即缩进四个空格，也做为实现类似 `<pre>` 预格式化文本 ( Preformatted Text ) 的功能。\r\n\r\n    <?php\r\n        echo \"Hello world!\";\r\n    ?>\r\n    \r\n预格式化文本：\r\n\r\n    | First Header  | Second Header |\r\n    | ------------- | ------------- |\r\n    | Content Cell  | Content Cell  |\r\n    | Content Cell  | Content Cell  |\r\n', '### 关于 Editor.md\r\n    \r\n    **Editor.md**  是一款开源的、可嵌入的 Markdown 在线编辑器', 'Vue', '日记', 12, 47, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2021-04-11 16:50:09', '2022-04-14 15:13:39'),
(10007, '发布博客测试', '', '摘要测试', '内容测试', 'Vue,Python,React', '实验', 0, 1, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2022-03-02 23:34:13', '2022-04-14 15:13:39'),
(10008, '草稿箱不传图片测试', '', '草稿箱不传图片测试摘要', '草稿箱不传图片测试内容', 'Nodejs,React', '实验', 0, 5, 1, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2022-03-02 23:35:36', '2022-04-14 15:13:39'),
(10009, '草稿箱传图片测试1', '', '草稿箱传图片测试1摘要', '草稿箱传图片测试1内容\r\n先传图片，不保存草稿\r\n![唯美朦胧花卉高清桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/E3b0-E4Gg-4hbG-6DDI-唯美朦胧花卉高清桌面壁纸.jpg)', 'JavaScript', '实验', 0, 6, 1, 1, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/E3b0-E4Gg-4hbG-6DDI-唯美朦胧花卉高清桌面壁纸.jpg,', 1, '2022-03-02 23:38:20', '2022-04-15 15:34:05'),
(10010, '新建草稿箱', '', '', '', '', '', 0, 0, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 3, '2022-03-02 23:38:28', '2022-04-14 15:13:39'),
(10011, '上传图片保存草稿测试2', '', '123\r\n![Webpic2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/8HaA-3iCB-idb9-fGg5-Webpic2.jpg)', '233', 'Nodejs', '实验', 1, 15, 1, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 1, '2022-03-02 23:53:54', '2022-04-21 09:11:25'),
(10012, '添加草稿箱标题', '', '摘要', '![重写（覆盖），重载.PNG](http://127.0.0.2:3333/api/image/public/blogimgs/6323-e63E-bHh7-589e-重写（覆盖），重载.PNG)', 'Nodejs', '实验', 0, 10, 1, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/6323-e63E-bHh7-589e-重写（覆盖），重载.PNG,', 1, '2022-03-03 00:00:45', '2022-04-21 09:11:40'),
(10013, '上传图片保存草稿测试5', '', '![森林1.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/Ag3a-7Ii2-2bbb-8g8D-森林1.jpg)', '内容\r\n![yz23libzoe2yz23libzoe2.jpg](http://127.0.0.2:3333/image/user/public/blogimgs/FiIB-F0Gb-FFdH-bfi5-yz23libzoe2yz23libzoe2.jpg)\r\n![唯美朦胧花卉高清桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/2ciB-ab5g-eccc-Gc5g-唯美朦胧花卉高清桌面壁纸.jpg)\r\n![唯美乡村田园风光图片桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/7ag1-7Ha9-da26-hGCh-唯美乡村田园风光图片桌面壁纸.jpg)![timg.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/A6AC-dg1a-CDCb-If31-timg.jpg)\r\n![森林2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/813f-6fhe-F0H1-fG0D-森林2.jpg)', 'Python,SpringBoot', '实验', 7, 7, 1, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/FiIB-F0Gb-FFdH-bfi5-yz23libzoe2yz23libzoe2.jpg,/public/blogimgs/2ciB-ab5g-eccc-Gc5g-唯美朦胧花卉高清桌面壁纸.jpg,/public/blogimgs/7ag1-7Ha9-da26-hGCh-唯美乡村田园风光图片桌面壁纸.jpg,/public/blogimgs/A6AC-dg1a-CDCb-If31-timg.jpg,/public/blogimgs/813f-6fhe-F0H1-fG0D-森林2.jpg,', 1, '2022-03-03 00:03:38', '2022-04-21 09:11:40'),
(10014, '测试标题3', '', '测试摘要\r\n![唯美朦胧花卉高清桌面壁纸.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/EAa2-A86g-7DIa-g6Hg-唯美朦胧花卉高清桌面壁纸.jpg)', '测试内容2\r\n\r\n![yz23libzoe2yz23libzoe2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/E54e-3G20-F48g-iBee-yz23libzoe2yz23libzoe2.jpg)\r\n![森林2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/cg60-d31I-bBgg-F1DD-森林2.jpg)\r\n![Webpic2.jpg](http://127.0.0.2:3333/api/image/public/blogimgs/EG27-2bHG-E70b-46eC-Webpic2.jpg)', 'Vue,React', '实验', 10, 17, 2, 2, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/E54e-3G20-F48g-iBee-yz23libzoe2yz23libzoe2.jpg,/public/blogimgs/EG27-2bHG-E70b-46eC-Webpic2.jpg,', 1, '2022-03-03 00:43:15', '2022-04-21 09:11:40'),
(10015, '发布测试视图更新2', '', '摘要', '内容\r\n![存储机制.PNG](http://127.0.0.2:3333/api/image/public/blogimgs/aBG9-8D95-DAcf-bbEc-存储机制.PNG)', 'SpringBoot', '实验', 2, 46, 0, 2, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '/public/blogimgs/aBG9-8D95-DAcf-bbEc-存储机制.PNG,', 1, '2022-03-03 01:21:43', '2022-04-15 15:52:49'),
(10016, '尚未完成功能', '', '```\n**需要完善、实现的功能记录**\n', '\n1. **后台权限分配**：\n	后台未使用动态路由，使用每个角色存储的sidebar数据渲染sidebar，进入后台预定进入主页面，如果是未分配主页权限，那么还是会跳转到主页\n	解决：\n	1：使用动态路由，并且定义index为默认共有路由\n	2：依然使用sidebar，但是在定义权限树形图设置index为默认选中且不可更改路由，让所有权限都预分配到这个路由\n\n	>后台接口权限尚未实现，需要为每个角色配置可访问接口表，每次请求时查询当前接口名是否存在于当前角色所属的接口表里，存在为有权限，不存在即无权限；管理员角色应设置增删改查功能	\n2. **面包屑导航**\n3. **前台、后台广告位未完成**\n4. **前台 实验室 未设计**', 'Vue,JavaScript', '日记', 0, 3, 0, 0, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '', 2, '2022-03-07 03:49:55', '2022-04-14 15:13:39');

-- --------------------------------------------------------

--
-- 表的结构 `comments_blogs`
--

CREATE TABLE `comments_blogs` (
  `Id` int(6) NOT NULL,
  `Blog_Id` int(6) NOT NULL,
  `Blog_Title` char(50) CHARACTER SET gbk NOT NULL,
  `Comment_Level` int(1) NOT NULL,
  `Root_Comment_Id` char(20) NOT NULL,
  `Father_Comment_Id` char(20) NOT NULL,
  `Comment_Id` char(20) NOT NULL,
  `Comment_Person_Role` char(10) NOT NULL,
  `Comment_Person_Id` char(20) NOT NULL,
  `Comment_Person_Acc` char(15) NOT NULL,
  `Comment_Person_Name` char(15) CHARACTER SET gbk NOT NULL,
  `Comment_Person_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Parent_Person_Role` char(10) NOT NULL,
  `Parent_Person_Acc` char(15) NOT NULL,
  `Parent_Person_Name` char(15) CHARACTER SET gbk NOT NULL,
  `Parent_Person_Id` char(20) NOT NULL,
  `Parent_Person_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Comment_Content` varchar(300) CHARACTER SET gbk NOT NULL,
  `IsRead` int(1) NOT NULL DEFAULT '0',
  `IsClear` int(1) NOT NULL DEFAULT '0',
  `Likes_Count` int(6) NOT NULL DEFAULT '0',
  `Comment_Status` int(1) NOT NULL DEFAULT '1',
  `Top_Status` int(1) NOT NULL DEFAULT '0',
  `Comment_Examined` int(1) NOT NULL DEFAULT '0',
  `Comment_Examined_Person_Role` char(10) NOT NULL,
  `Comment_Examined_Person_UniqueId` char(20) NOT NULL,
  `Comment_Examined_Person_Account` char(15) NOT NULL,
  `Comment_Examined_Person_NickNme` char(15) CHARACTER SET gbk NOT NULL,
  `Comment_Report` int(1) NOT NULL DEFAULT '0',
  `Create_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `comments_blogs`
--

INSERT INTO `comments_blogs` (`Id`, `Blog_Id`, `Blog_Title`, `Comment_Level`, `Root_Comment_Id`, `Father_Comment_Id`, `Comment_Id`, `Comment_Person_Role`, `Comment_Person_Id`, `Comment_Person_Acc`, `Comment_Person_Name`, `Comment_Person_Avatar`, `Parent_Person_Role`, `Parent_Person_Acc`, `Parent_Person_Name`, `Parent_Person_Id`, `Parent_Person_Avatar`, `Comment_Content`, `IsRead`, `IsClear`, `Likes_Count`, `Comment_Status`, `Top_Status`, `Comment_Examined`, `Comment_Examined_Person_Role`, `Comment_Examined_Person_UniqueId`, `Comment_Examined_Person_Account`, `Comment_Examined_Person_NickNme`, `Comment_Report`, `Create_Time`) VALUES
(1, 10015, '发布测试视图更新2', 1, '', '', '580qsD3b0MIdDptQ', 'Tourist', 'KlHsd7hG7dKaSimz', 'o857554Lu3U6Ihw', '游客DIETG94vxQ', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '此博客第一条游客评论，测试Notification功能', 1, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 13:52:21'),
(2, 10015, '发布测试视图更新2', 2, '580qsD3b0MIdDptQ', '580qsD3b0MIdDptQ', '1HWxK5v5Rp7qU1P4', 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai1999', 'xiaohai', '/public/avatars/0r5YES27ac-avatar20.jpg', 'Tourist', 'o857554Lu3U6Ihw', '游客DIETG94vxQ', 'KlHsd7hG7dKaSimz', '', '你好游客，我收到了这条信息', 0, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 13:56:41'),
(3, 10014, '测试标题3', 1, '', '', 'gdq5t1rN6GkPsQ7A', 'Tourist', 'KlHsd7hG7dKaSimz', 'o857554Lu3U6Ihw', '游客DIETG94vxQ', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', 'hello~', 1, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 14:03:06'),
(4, 10014, '测试标题3', 2, 'gdq5t1rN6GkPsQ7A', 'gdq5t1rN6GkPsQ7A', '0nC5Pu7daH9c2Ge4', 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai1999', 'xiaohai', '/public/avatars/0r5YES27ac-avatar20.jpg', 'Tourist', 'o857554Lu3U6Ihw', '游客DIETG94vxQ', 'KlHsd7hG7dKaSimz', '', '晚上好~', 0, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 14:03:56'),
(5, 10009, '草稿箱传图片测试1', 1, '', '', 'gCzms2H9hVDRuuXC', 'Tourist', 'O452PuE6IAO2lRtv', '8Wqmec7KPvXnsg4', '游客3Xf654p885', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '？', 0, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-15 15:34:05'),
(6, 10000, '1测试博客标题', 1, '', '', 'y1W3F0H86YIGKGi9', 'Tourist', 'OpUgpsgdlXWkNxTb', '9nxsf3pg5s03pnX', '游客29u8474Mqd', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '?', 0, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-15 17:08:33');

-- --------------------------------------------------------

--
-- 表的结构 `comments_message`
--

CREATE TABLE `comments_message` (
  `Id` int(6) NOT NULL,
  `Comment_Level` int(1) NOT NULL,
  `Root_Comment_Id` char(20) NOT NULL,
  `Father_Comment_Id` char(20) NOT NULL,
  `Comment_Id` char(20) NOT NULL,
  `Comment_Person_Role` char(10) NOT NULL,
  `Comment_Person_Acc` char(15) NOT NULL,
  `Comment_Person_Name` char(15) CHARACTER SET gbk NOT NULL,
  `Comment_Person_Id` char(20) NOT NULL,
  `Comment_Person_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Parent_Person_Role` char(10) NOT NULL,
  `Parent_Person_Acc` char(15) NOT NULL,
  `Parent_Person_Name` char(15) CHARACTER SET gbk NOT NULL,
  `Parent_Person_Id` char(20) NOT NULL,
  `Parent_Person_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Comment_Content` varchar(300) CHARACTER SET gbk NOT NULL,
  `IsRead` int(1) NOT NULL DEFAULT '0',
  `IsClear` int(1) NOT NULL DEFAULT '0',
  `Likes_Count` int(6) NOT NULL DEFAULT '0',
  `Comment_Status` int(1) NOT NULL DEFAULT '1',
  `Top_Status` int(1) NOT NULL DEFAULT '0',
  `Comment_Examined` int(1) NOT NULL DEFAULT '0',
  `Comment_Examined_Person_Role` char(10) NOT NULL,
  `Comment_Examined_Person_UniqueId` char(20) NOT NULL,
  `Comment_Examined_Person_Account` char(15) NOT NULL,
  `Comment_Examined_Person_NickNme` char(15) CHARACTER SET gbk NOT NULL,
  `Comment_Report` int(1) NOT NULL DEFAULT '0',
  `Create_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `comments_message`
--

INSERT INTO `comments_message` (`Id`, `Comment_Level`, `Root_Comment_Id`, `Father_Comment_Id`, `Comment_Id`, `Comment_Person_Role`, `Comment_Person_Acc`, `Comment_Person_Name`, `Comment_Person_Id`, `Comment_Person_Avatar`, `Parent_Person_Role`, `Parent_Person_Acc`, `Parent_Person_Name`, `Parent_Person_Id`, `Parent_Person_Avatar`, `Comment_Content`, `IsRead`, `IsClear`, `Likes_Count`, `Comment_Status`, `Top_Status`, `Comment_Examined`, `Comment_Examined_Person_Role`, `Comment_Examined_Person_UniqueId`, `Comment_Examined_Person_Account`, `Comment_Examined_Person_NickNme`, `Comment_Report`, `Create_Time`) VALUES
(1, 1, '', '', '5hiW6L165DN0Yp9f', 'Tourist', 'uNIEPvh09oo0k00', '游客fKo4p1h97Y', 'dwKSW3M1RYZX3T06', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '游客留言，第一条留言板评论', 0, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 13:50:01'),
(2, 1, '', '', 'hg7Ziv767FV58Pc2', 'User', 'test01abc', 'Tester1', 'u4uFb5wP7scZTH2G', '/public/avatars/8U50r80Z6e-avatar35.jpg', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '用户登录留言测试', 1, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 14:05:13'),
(3, 2, 'hg7Ziv767FV58Pc2', 'hg7Ziv767FV58Pc2', 'dA3GNqK6ByI2LU9G', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', 'User', 'test01abc', 'Tester1', 'u4uFb5wP7scZTH2G', '/public/avatars/8U50r80Z6e-avatar35.jpg', '你好用户，我收到了你的信息，你可以在你的个人空间看到这条回复', 1, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 14:06:11'),
(4, 2, 'hg7Ziv767FV58Pc2', 'dA3GNqK6ByI2LU9G', '0pV0l3NdNWg18458', 'User', 'test01abc', 'Tester1', 'u4uFb5wP7scZTH2G', '/public/avatars/8U50r80Z6e-avatar35.jpg', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', 'yes！我收到了你的回复', 1, 0, 0, 1, 0, 1, '', '', '', '', 0, '2022-04-11 14:07:34'),
(5, 1, '', '', 'fTqub3DUG7VnCHuc', 'Tourist', '8VnnuhZA0uIaLl0', '游客B4Qn4Nx6E6', 'q9Du5yqwn7A730MY', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '作者你好，我是游客，这条信息你会在一分钟内收到！', 1, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-14 15:11:48'),
(6, 2, 'fTqub3DUG7VnCHuc', 'fTqub3DUG7VnCHuc', '7Xtlhl20EwNyVmIE', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', 'Tourist', '8VnnuhZA0uIaLl0', '游客B4Qn4Nx6E6', 'q9Du5yqwn7A730MY', '', '好的，我收到了', 0, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-14 15:12:59'),
(7, 1, '', '', '5X42RSUOe78iR1u5', 'Tourist', 'BLk8Xa0rWeibXA7', '游客Kagd44gdAV', 'o89473Dw0Xyy22If', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', 'hello', 0, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-15 16:14:43'),
(8, 1, '', '', '1R3o2H5w9tYIKl35', 'Tourist', 'BLk8Xa0rWeibXA7', '游客Kagd44gdAV', 'o89473Dw0Xyy22If', '', 'Admin', 'xiaohai1999', 'xiaohai', '22MEbKoWMZgXCoVe', '/public/avatars/0r5YES27ac-avatar20.jpg', '0.0', 0, 0, 0, 1, 0, 0, '', '', '', '', 0, '2022-04-15 16:14:51');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `Id` int(5) NOT NULL,
  `Message_Title` varchar(50) CHARACTER SET gbk NOT NULL,
  `Message_Content` text CHARACTER SET gbk NOT NULL,
  `Message_Img` text CHARACTER SET gbk NOT NULL,
  `Message_Status` int(2) NOT NULL DEFAULT '1',
  `Message_Author_Role` char(10) NOT NULL,
  `Message_Author_UniqueId` char(20) NOT NULL,
  `Message_Author` char(15) CHARACTER SET gbk NOT NULL,
  `Message_Author_Account` char(15) NOT NULL,
  `Message_Author_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `Message_Createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Message_Updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`Id`, `Message_Title`, `Message_Content`, `Message_Img`, `Message_Status`, `Message_Author_Role`, `Message_Author_UniqueId`, `Message_Author`, `Message_Author_Account`, `Message_Author_Avatar`, `Message_Createtime`, `Message_Updatetime`) VALUES
(1, '欢迎大家留言~', '这里是留言板\n\n![vuex.png](http://127.0.0.2:3333/api/image/public/messageimgs/TvD4inpG6e-vuex.png)', '/public/messageimgs/TvD4inpG6e-vuex.png,', 1, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '/public/avatars/0r5YES27ac-avatar20.jpg', '2022-02-11 05:39:31', '2022-04-15 12:42:41');

-- --------------------------------------------------------

--
-- 表的结构 `user_table`
--

CREATE TABLE `user_table` (
  `Id` int(8) NOT NULL,
  `Role` char(10) NOT NULL DEFAULT 'User',
  `User_UniqueId` char(20) NOT NULL,
  `User_Nickname` char(15) CHARACTER SET gbk NOT NULL,
  `User_Account` char(15) NOT NULL,
  `User_Password` char(20) NOT NULL,
  `User_Avatar` char(50) CHARACTER SET gbk NOT NULL,
  `User_Gender` int(1) NOT NULL,
  `User_Email` char(30) NOT NULL,
  `User_PhoneNumber` char(14) NOT NULL,
  `User_Introduction` char(50) CHARACTER SET gbk NOT NULL,
  `User_Status` int(1) NOT NULL DEFAULT '1',
  `User_Examined` int(1) NOT NULL DEFAULT '0',
  `User_Examined_Person_Role` char(10) NOT NULL,
  `User_Examined_Person_Id` char(20) NOT NULL,
  `User_Examined_Person_Acc` char(15) NOT NULL,
  `User_Examined_Person_Name` char(15) CHARACTER SET gbk NOT NULL,
  `User_Unread` text CHARACTER SET gbk NOT NULL,
  `User_Unread_Count` int(3) NOT NULL DEFAULT '0',
  `User_Collection` text NOT NULL,
  `User_CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_UpdateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user_table`
--

INSERT INTO `user_table` (`Id`, `Role`, `User_UniqueId`, `User_Nickname`, `User_Account`, `User_Password`, `User_Avatar`, `User_Gender`, `User_Email`, `User_PhoneNumber`, `User_Introduction`, `User_Status`, `User_Examined`, `User_Examined_Person_Role`, `User_Examined_Person_Id`, `User_Examined_Person_Acc`, `User_Examined_Person_Name`, `User_Unread`, `User_Unread_Count`, `User_Collection`, `User_CreateTime`, `User_UpdateTime`) VALUES
(1, 'Admin', '22MEbKoWMZgXCoVe', 'xiaohai', 'xiaohai1999', '123456', '/avatars/0r5YES27ac-avatar20.jpg', 1, '1256215927@qq.com', '18282727137', '大家好，我叫小海', 1, 1, '', '', '', '', '', 0, '', '2022-03-07 12:55:22', '2022-04-21 09:09:50'),
(2, 'User', 'Qe83s2xQRrtcppfY', 'xiaohong', 'xiaohong123', '123456', '', 0, '1256215927@qq.com', '10086', '大家好，我叫小红', 1, 1, '', '', '', '', '', 0, '', '2022-03-07 12:55:22', '2022-04-15 13:29:25'),
(3, 'User', 'tGeXOI6snN5BDf92', 'xiaoming', 'xiaoming123', '123456', '/avatars/Hv132gvS09-avatar25.jpg', 0, '1256215927@qq.com', '10000', '用户编辑测试', 1, 1, '', '', '', '', '', 0, '', '2022-03-07 12:55:22', '2022-04-21 09:09:22'),
(4, 'User', 'u4uFb5wP7scZTH2G', 'Tester1', 'test01abc', '123456', '/avatars/8U50r80Z6e-avatar35.jpg', 1, '123456@qq.com', '10086', '大家好。。。', 1, 1, '', '', '', '', '', 0, ',10014,10009,10008,10001,10011', '2022-03-21 11:31:58', '2022-04-21 09:09:29'),
(5, 'User', '9N4QwyT8ZmavURBP', '新用户1', 'newuser1', '123456', '/avatars/M2S7bi5bPc-avatar18.jpg', 2, '123456@qq.com', '', '', 1, 1, '', '', '', '', '', 0, '', '2022-03-21 12:09:12', '2022-04-21 09:09:35'),
(6, 'User', 'd5a0a12pAq5GqLoV', '测试者2', 'test02abc', '123456', '', 0, '123456@qq.com', '1008611', 'hello', 1, 0, '', '', '', '', '', 0, '', '2022-04-08 06:47:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `website`
--

CREATE TABLE `website` (
  `Id` int(11) NOT NULL,
  `Tag_List` varchar(100) CHARACTER SET gbk NOT NULL,
  `Class_List` char(100) CHARACTER SET gbk NOT NULL,
  `Right_List` text NOT NULL,
  `Tab_List` text NOT NULL,
  `Avatars` text CHARACTER SET gbk NOT NULL,
  `Backgroung_Img` char(150) CHARACTER SET gbk NOT NULL,
  `Viewer_Count` int(6) NOT NULL,
  `Likes_Count` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `website`
--

INSERT INTO `website` (`Id`, `Tag_List`, `Class_List`, `Right_List`, `Tab_List`, `Avatars`, `Backgroung_Img`, `Viewer_Count`, `Likes_Count`) VALUES
(1, 'Vue,React,Nodejs,Java,JavaScript,SpringBoot,Python', '技术帖,日记,随笔,实验,总结', '', '0%5Bidx%5D=0&0%5Btitle%5D=DashBoard&0%5Bclass%5D=el-icon-s-grid&0%5Bpath%5D=%2Fdashboard&1%5Bidx%5D=1&1%5Btitle%5D=%E5%8F%91%E5%B8%83%E5%8D%9A%E5%AE%A2&1%5Bclass%5D=el-icon-upload&1%5Bpath%5D=%2Fpublishblog&2%5Bidx%5D=2&2%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E7%AE%A1%E7%90%86&2%5Bclass%5D=el-icon-s-order&2%5Bpath%5D=%2Fmanageblog&3%5Bidx%5D=3&3%5Btitle%5D=%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bclass%5D=el-icon-s-comment&3%5Bpath%5D=%2Fmanagecomment&3%5Bchild%5D%5B0%5D%5Bidx%5D=7&3%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E8%AF%84%E8%AE%BA%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagecomment%2Fblogcomment&3%5Bchild%5D%5B1%5D%5Bidx%5D=8&3%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E7%95%99%E8%A8%80%E7%AE%A1%E7%90%86&3%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagecomment%2Fmessagecomment&3%5Bchild%5D%5B2%5D%5Bidx%5D=9&3%5Bchild%5D%5B2%5D%5Btitle%5D=%E8%AF%84%E8%AE%BA%E5%AE%A1%E6%A0%B8&3%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagecomment%2Fexaminecomment&4%5Bidx%5D=4&4%5Btitle%5D=%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bclass%5D=el-icon-user-solid&4%5Bpath%5D=%2Fmanageuser&4%5Bchild%5D%5B0%5D%5Bidx%5D=10&4%5Bchild%5D%5B0%5D%5Btitle%5D=%E6%99%AE%E9%80%9A%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanageuser%2Fmanagenormaluser&4%5Bchild%5D%5B1%5D%5Bidx%5D=11&4%5Bchild%5D%5B1%5D%5Btitle%5D=%E7%AE%A1%E7%90%86%E5%91%98%E7%AE%A1%E7%90%86&4%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanageuser%2Fmanageadminuser&4%5Bchild%5D%5B2%5D%5Bidx%5D=12&4%5Bchild%5D%5B2%5D%5Btitle%5D=%E7%94%A8%E6%88%B7%E6%B3%A8%E5%86%8C%E5%AE%A1%E6%A0%B8&4%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanageuser%2Fexamineuserandadmin&4%5Bchild%5D%5B3%5D%5Bidx%5D=13&4%5Bchild%5D%5B3%5D%5Btitle%5D=%E6%B7%BB%E5%8A%A0%E7%94%A8%E6%88%B7&4%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanageuser%2Fadduseroradmin&5%5Bidx%5D=5&5%5Btitle%5D=%E7%BD%91%E7%AB%99%E7%AE%A1%E7%90%86&5%5Bclass%5D=el-icon-s-marketing&5%5Bpath%5D=%2Fmanagewebsite&5%5Bchild%5D%5B0%5D%5Bidx%5D=14&5%5Bchild%5D%5B0%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E6%A0%87%E7%AD%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B0%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagetag&5%5Bchild%5D%5B1%5D%5Bidx%5D=15&5%5Bchild%5D%5B1%5D%5Btitle%5D=%E5%8D%9A%E5%AE%A2%E5%88%86%E7%B1%BB%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B1%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageclass&5%5Bchild%5D%5B2%5D%5Bidx%5D=16&5%5Bchild%5D%5B2%5D%5Btitle%5D=%E5%85%B3%E4%BA%8E%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B2%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageaboutpage&5%5Bchild%5D%5B3%5D%5Bidx%5D=17&5%5Bchild%5D%5B3%5D%5Btitle%5D=%E7%95%99%E8%A8%80%E6%9D%BF%E9%A1%B5%E9%9D%A2%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B3%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagemessagepage&5%5Bchild%5D%5B4%5D%5Bidx%5D=18&5%5Bchild%5D%5B4%5D%5Btitle%5D=%E7%BD%91%E7%AB%99%E8%83%8C%E6%99%AF%E5%9B%BE%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B4%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanagebackgroundimg&5%5Bchild%5D%5B5%5D%5Bidx%5D=19&5%5Bchild%5D%5B5%5D%5Btitle%5D=%E5%A4%B4%E5%83%8F%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B5%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageavatar&5%5Bchild%5D%5B6%5D%5Bidx%5D=20&5%5Bchild%5D%5B6%5D%5Btitle%5D=%E5%B9%BF%E5%91%8A%E7%AE%A1%E7%90%86&5%5Bchild%5D%5B6%5D%5Bpath%5D=%2Fmanagewebsite%2Fmanageadvertisement&6%5Bidx%5D=6&6%5Btitle%5D=%E6%9D%83%E9%99%90%E7%AE%A1%E7%90%86&6%5Bclass%5D=el-icon-warning&6%5Bpath%5D=%2Fmanageprivilege', '/public/avatars/XpEaQ2sbun-avatar1.jpg,/public/avatars/XOg84fV2tY-avatar2.jpg,/public/avatars/UxSbgPE25G-avatar3.jpg,/public/avatars/okg5D0KbSS-avatar4.jpg,/public/avatars/HEUpG6S53U-avatar5.jpg,/public/avatars/iCx0ob93BK-avatar6.jpg,/public/avatars/45N9w3lcdA-avatar7.jpg,/public/avatars/Qpgp07FQda-avatar8.jpg,/public/avatars/Hrw8v92tkC-avatar9.jpg,/public/avatars/y8C0evl8Q6-avatar10.jpg,/public/avatars/y7tS9LWW80-avatar11.jpg,/public/avatars/vlFx082vtA-avatar12.jpg,/public/avatars/5nDB2fys0U-avatar13.jpg,/public/avatars/694Qsb51Q6-avatar14.jpg,/public/avatars/V0Q5m670Xd-avatar15.jpg,/public/avatars/30TEYp3812-avatar16.jpg,/public/avatars/9FNlN223rl-avatar17.jpg,/public/avatars/M2S7bi5bPc-avatar18.jpg,/public/avatars/PGN9r4Cfot-avatar19.jpg,/public/avatars/0r5YES27ac-avatar20.jpg,/public/avatars/IqpyQmGg49-avatar21.jpg,/public/avatars/bZIL534038-avatar22.jpg,/public/avatars/UtNcm7UR1u-avatar23.jpg,/public/avatars/74A77MRZq0-avatar24.jpg,/public/avatars/Hv132gvS09-avatar25.jpg,/public/avatars/0FzsYEwgNB-avatar26.jpg,/public/avatars/C4B2fNE1X0-avatar27.jpg,/public/avatars/9dr1dLxb5B-avatar28.jpg,/public/avatars/R31U1o69Wl-avatar29.jpg,/public/avatars/s4pYQB222b-avatar30.jpg,/public/avatars/a0DDk4KtpX-avatar31.jpg,/public/avatars/2OiUgshtkW-avatar32.jpg,/public/avatars/vaqgo1W75g-avatar33.jpg,/public/avatars/97tT56rPc9-avatar34.jpg,/public/avatars/8U50r80Z6e-avatar35.jpg,/public/avatars/f9Y1u47tgg-avatar36.jpg,/public/avatars/yuuvOFie67-avatar37.jpg,/public/avatars/MAZh70D9CP-avatar38.jpg,/public/avatars/gg0pA3GRXT-avatar39.jpg,/public/avatars/64qRMCAR8L-avatar40.jpg,/public/avatars/8r8F363gyU-avatar41.jpg,/public/avatars/7aBGE2qa9F-avatar42.jpg,/public/avatars/Cw4NZU81N0-avatar43.jpg,/public/avatars/166pu8dh3q-avatar44.jpg,/public/avatars/gkEYt66CtD-avatar45.jpg,/public/avatars/qBnMbM6R6Q-avatar46.jpg,/public/avatars/R2CG2iaTGb-avatar47.jpg,/public/avatars/7YwS34Vo1E-avatar48.jpg,', '/public/backgroundimgs/R4Og49dUDG-唯美朦胧花卉高清桌面壁纸.jpg,', 2170, 0);

--
-- 转储表的索引
--

--
-- 表的索引 `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `admin_table_right`
--
ALTER TABLE `admin_table_right`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`Blog_Id`);

--
-- 表的索引 `comments_blogs`
--
ALTER TABLE `comments_blogs`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `comments_message`
--
ALTER TABLE `comments_message`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`Id`);

--
-- 表的索引 `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`Id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `about`
--
ALTER TABLE `about`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `admin_table_right`
--
ALTER TABLE `admin_table_right`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `blogs`
--
ALTER TABLE `blogs`
  MODIFY `Blog_Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;

--
-- 使用表AUTO_INCREMENT `comments_blogs`
--
ALTER TABLE `comments_blogs`
  MODIFY `Id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `comments_message`
--
ALTER TABLE `comments_message`
  MODIFY `Id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `Id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `website`
--
ALTER TABLE `website`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
