-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- 主机： 172.17.0.1:3306
-- 生成日期： 2020-06-07 02:50:33
-- 服务器版本： 5.6.46
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `online_questions`
--

DELIMITER $$
--
-- 函数
--
CREATE DEFINER=`root`@`localhost` FUNCTION `urlDecode` (`original_text` TEXT CHARSET utf8mb4) RETURNS TEXT CHARSET utf8mb4 BEGIN  
    DECLARE new_text TEXT DEFAULT NULL;  
    DECLARE pointer INT DEFAULT 1;  
    DECLARE end_pointer INT DEFAULT 1;  
    DECLARE encoded_text TEXT DEFAULT NULL;  
    DECLARE result_text TEXT DEFAULT NULL;  
    DECLARE rep_text TEXT DEFAULT NULL;  
    DECLARE unhex_text TEXT DEFAULT NULL;  
   
    SET new_text = REPLACE(original_text,'+',' ');  
    SET new_text = REPLACE(new_text,'%0A','\r\n');  
   
    SET pointer = LOCATE('%', new_text);  
    WHILE pointer <> 0 && pointer < (CHAR_LENGTH(new_text) - 1) DO  
        SET end_pointer = pointer + 3;  
        WHILE MID(new_text, end_pointer, 1) = '%' DO  
            SET end_pointer = end_pointer+3;  
        END WHILE;  
   
        SET encoded_text = MID(new_text, pointer, end_pointer - pointer);  
		SET rep_text = REPLACE(encoded_text, '%', '');
		SET unhex_text = UNHEX(rep_text);
        SET result_text = CONVERT(unhex_text USING utf8mb4);  
        SET new_text = REPLACE(new_text, encoded_text, result_text);  
        SET pointer = LOCATE('%', new_text, pointer + CHAR_LENGTH(result_text)); 
				
    END WHILE;  
   
    RETURN new_text;  
  
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_accounts`
--

CREATE TABLE `oc_accounts` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_activity`
--

CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `app` varchar(32) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `subjectparams` longtext COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageparams` longtext COLLATE utf8_bin,
  `file` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_activity`
--

INSERT INTO `oc_activity` (`activity_id`, `timestamp`, `priority`, `type`, `user`, `affecteduser`, `app`, `subject`, `subjectparams`, `message`, `messageparams`, `file`, `link`, `object_type`, `object_id`) VALUES
(1, 1590041043, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"7\":\"\\/Documents\"}]', '', '[]', '/Documents', 'http://172.17.0.9/index.php/apps/files/?dir=/', 'files', 7),
(2, 1590041043, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"8\":\"\\/Documents\\/Example.md\"}]', '', '[]', '/Documents/Example.md', 'http://172.17.0.9/index.php/apps/files/?dir=/Documents', 'files', 8),
(3, 1590041043, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"9\":\"\\/Documents\\/Example.odt\"}]', '', '[]', '/Documents/Example.odt', 'http://172.17.0.9/index.php/apps/files/?dir=/Documents', 'files', 9),
(4, 1590041044, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"10\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]', '', '[]', '/Documents/Nextcloud flyer.pdf', 'http://172.17.0.9/index.php/apps/files/?dir=/Documents', 'files', 10),
(5, 1590041044, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"11\":\"\\/Documents\\/Readme.md\"}]', '', '[]', '/Documents/Readme.md', 'http://172.17.0.9/index.php/apps/files/?dir=/Documents', 'files', 11),
(6, 1590041044, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"12\":\"\\/Photos\"}]', '', '[]', '/Photos', 'http://172.17.0.9/index.php/apps/files/?dir=/', 'files', 12),
(7, 1590041044, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"13\":\"\\/Photos\\/Birdie.jpg\"}]', '', '[]', '/Photos/Birdie.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 13),
(8, 1590041045, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"14\":\"\\/Photos\\/Frog.jpg\"}]', '', '[]', '/Photos/Frog.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 14),
(9, 1590041045, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"15\":\"\\/Photos\\/Gorilla.jpg\"}]', '', '[]', '/Photos/Gorilla.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 15),
(10, 1590041045, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"16\":\"\\/Photos\\/Library.jpg\"}]', '', '[]', '/Photos/Library.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 16),
(11, 1590041045, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"17\":\"\\/Photos\\/Nextcloud community.jpg\"}]', '', '[]', '/Photos/Nextcloud community.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 17),
(12, 1590041045, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"18\":\"\\/Photos\\/Readme.md\"}]', '', '[]', '/Photos/Readme.md', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 18),
(13, 1590041046, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"19\":\"\\/Photos\\/Steps.jpg\"}]', '', '[]', '/Photos/Steps.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 19),
(14, 1590041046, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"20\":\"\\/Photos\\/Toucan.jpg\"}]', '', '[]', '/Photos/Toucan.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 20),
(15, 1590041046, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"21\":\"\\/Photos\\/Vineyard.jpg\"}]', '', '[]', '/Photos/Vineyard.jpg', 'http://172.17.0.9/index.php/apps/files/?dir=/Photos', 'files', 21),
(16, 1590041046, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"22\":\"\\/Nextcloud Manual.pdf\"}]', '', '[]', '/Nextcloud Manual.pdf', 'http://172.17.0.9/index.php/apps/files/?dir=/', 'files', 22),
(17, 1590041047, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"23\":\"\\/Nextcloud intro.mp4\"}]', '', '[]', '/Nextcloud intro.mp4', 'http://172.17.0.9/index.php/apps/files/?dir=/', 'files', 23),
(18, 1590041047, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"24\":\"\\/Nextcloud.png\"}]', '', '[]', '/Nextcloud.png', 'http://172.17.0.9/index.php/apps/files/?dir=/', 'files', 24),
(19, 1590041048, 30, 'calendar', 'admin', 'admin', 'dav', 'calendar_add_self', '{\"actor\":\"admin\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}', '', '[]', '', '', 'calendar', 1),
(20, 1590041896, 30, 'file_created', 'admin', 'admin', 'files', 'created_self', '[{\"142\":\"\\/001.txt\"}]', '', '[]', '/001.txt', 'http://172.17.0.9/apps/files/?dir=/', 'files', 142);

-- --------------------------------------------------------

--
-- 表的结构 `oc_activity_mq`
--

CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `amq_appid` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL,
  `object_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_addressbookchanges`
--

CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_addressbooks`
--

CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_addressbooks`
--

INSERT INTO `oc_addressbooks` (`id`, `principaluri`, `displayname`, `uri`, `description`, `synctoken`) VALUES
(1, 'principals/users/admin', 'Contacts', 'contacts', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_appconfig`
--

CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_appconfig`
--

INSERT INTO `oc_appconfig` (`appid`, `configkey`, `configvalue`) VALUES
('accessibility', 'enabled', 'yes'),
('accessibility', 'installed_version', '1.4.0'),
('accessibility', 'types', ''),
('activity', 'enabled', 'yes'),
('activity', 'installed_version', '2.11.0'),
('activity', 'types', 'filesystem'),
('backgroundjob', 'lastjob', '7'),
('cloud_federation_api', 'enabled', 'yes'),
('cloud_federation_api', 'installed_version', '1.1.0'),
('cloud_federation_api', 'types', 'filesystem'),
('comments', 'enabled', 'yes'),
('comments', 'installed_version', '1.8.0'),
('comments', 'types', 'logging'),
('core', 'installedat', '1590040909.8572'),
('core', 'lastcron', '1590041639'),
('core', 'lastupdatedat', '1590040909.9699'),
('core', 'oc.integritycheck.checker', '[]'),
('core', 'public_files', 'files_sharing/public.php'),
('core', 'public_webdav', 'dav/appinfo/v1/publicwebdav.php'),
('core', 'theming.variables', 'b92d206521717ac032f8aa58d3c7ff2f'),
('core', 'vendor', 'nextcloud'),
('dav', 'enabled', 'yes'),
('dav', 'installed_version', '1.14.0'),
('dav', 'types', 'filesystem'),
('federatedfilesharing', 'enabled', 'yes'),
('federatedfilesharing', 'installed_version', '1.8.0'),
('federatedfilesharing', 'types', ''),
('federation', 'enabled', 'yes'),
('federation', 'installed_version', '1.8.0'),
('federation', 'types', 'authentication'),
('files', 'enabled', 'yes'),
('files', 'installed_version', '1.13.1'),
('files', 'types', 'filesystem'),
('files_pdfviewer', 'enabled', 'yes'),
('files_pdfviewer', 'installed_version', '1.7.0'),
('files_pdfviewer', 'types', ''),
('files_rightclick', 'enabled', 'yes'),
('files_rightclick', 'installed_version', '0.15.2'),
('files_rightclick', 'types', ''),
('files_sharing', 'enabled', 'yes'),
('files_sharing', 'installed_version', '1.10.1'),
('files_sharing', 'types', 'filesystem'),
('files_trashbin', 'enabled', 'yes'),
('files_trashbin', 'installed_version', '1.8.0'),
('files_trashbin', 'types', 'filesystem,dav'),
('files_versions', 'enabled', 'yes'),
('files_versions', 'installed_version', '1.11.0'),
('files_versions', 'types', 'filesystem,dav'),
('files_videoplayer', 'enabled', 'yes'),
('files_videoplayer', 'installed_version', '1.7.0'),
('files_videoplayer', 'types', ''),
('firstrunwizard', 'enabled', 'yes'),
('firstrunwizard', 'installed_version', '2.7.0'),
('firstrunwizard', 'types', 'logging'),
('logreader', 'enabled', 'yes'),
('logreader', 'installed_version', '2.3.0'),
('logreader', 'types', ''),
('lookup_server_connector', 'enabled', 'yes'),
('lookup_server_connector', 'installed_version', '1.6.0'),
('lookup_server_connector', 'types', 'authentication'),
('nextcloud_announcements', 'enabled', 'yes'),
('nextcloud_announcements', 'installed_version', '1.7.0'),
('nextcloud_announcements', 'types', 'logging'),
('notifications', 'enabled', 'yes'),
('notifications', 'installed_version', '2.6.0'),
('notifications', 'types', 'logging'),
('oauth2', 'enabled', 'yes'),
('oauth2', 'installed_version', '1.6.0'),
('oauth2', 'types', 'authentication'),
('password_policy', 'enabled', 'yes'),
('password_policy', 'installed_version', '1.8.0'),
('password_policy', 'types', ''),
('photos', 'enabled', 'yes'),
('photos', 'installed_version', '1.0.0'),
('photos', 'types', ''),
('privacy', 'enabled', 'yes'),
('privacy', 'installed_version', '1.2.0'),
('privacy', 'types', ''),
('provisioning_api', 'enabled', 'yes'),
('provisioning_api', 'installed_version', '1.8.0'),
('provisioning_api', 'types', 'prevent_group_restriction'),
('recommendations', 'enabled', 'yes'),
('recommendations', 'installed_version', '0.6.0'),
('recommendations', 'types', ''),
('serverinfo', 'enabled', 'yes'),
('serverinfo', 'installed_version', '1.8.0'),
('serverinfo', 'types', ''),
('settings', 'enabled', 'yes'),
('settings', 'installed_version', '1.0.0'),
('settings', 'types', ''),
('sharebymail', 'enabled', 'yes'),
('sharebymail', 'installed_version', '1.8.0'),
('sharebymail', 'types', 'filesystem'),
('support', 'enabled', 'yes'),
('support', 'installed_version', '1.1.0'),
('support', 'types', 'session'),
('survey_client', 'enabled', 'yes'),
('survey_client', 'installed_version', '1.6.0'),
('survey_client', 'types', ''),
('systemtags', 'enabled', 'yes'),
('systemtags', 'installed_version', '1.8.0'),
('systemtags', 'types', 'logging'),
('text', 'enabled', 'yes'),
('text', 'installed_version', '2.0.0'),
('text', 'types', 'dav'),
('theming', 'enabled', 'yes'),
('theming', 'installed_version', '1.9.0'),
('theming', 'types', 'logging'),
('twofactor_backupcodes', 'enabled', 'yes'),
('twofactor_backupcodes', 'installed_version', '1.7.0'),
('twofactor_backupcodes', 'types', ''),
('updatenotification', 'enabled', 'yes'),
('updatenotification', 'installed_version', '1.8.0'),
('updatenotification', 'types', ''),
('viewer', 'enabled', 'yes'),
('viewer', 'installed_version', '1.2.0'),
('viewer', 'types', ''),
('workflowengine', 'enabled', 'yes'),
('workflowengine', 'installed_version', '2.0.0'),
('workflowengine', 'types', 'filesystem');

-- --------------------------------------------------------

--
-- 表的结构 `oc_authtoken`
--

CREATE TABLE `oc_authtoken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `login_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8_bin,
  `name` longtext COLLATE utf8_bin NOT NULL,
  `token` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `remember` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scope` longtext COLLATE utf8_bin,
  `expires` int(10) UNSIGNED DEFAULT NULL,
  `private_key` longtext COLLATE utf8_bin,
  `public_key` longtext COLLATE utf8_bin,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `password_invalid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_authtoken`
--

INSERT INTO `oc_authtoken` (`id`, `uid`, `login_name`, `password`, `name`, `token`, `type`, `remember`, `last_activity`, `last_check`, `scope`, `expires`, `private_key`, `public_key`, `version`, `password_invalid`) VALUES
(1, 'admin', 'admin', 'IvBwZRD2qCQ/N/xMK1DFRLmqL79gfWxMA8Epx1fDo7G3vJ7W5G2CvmkKyY+iFtRsYy5dm8w4umdv7GaKmjkkbo9vGVVxqmZyHXbdveFbpWC9eQFpFHJ65n6akazvkImgOCjOeJbtAPCqMeyW9eQAm+cSAgSdX3qZ4JRWack5S9+DzLEPvIBuXmhTXy3pr/b7bwNUqjQhRGDL1iGpy0G0pHsNjGImoZ3Vje55aIRg8dQ01jpPY4tFMJXIWsmx5m2gkGpjU2R11E2vwQl2BsCN12WPAxW8kkZQ8U5nzIwZ/5l304k3W5tmCqXS+fGqcYtBot0BA6sFL76b0TFObcG67A==', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', '83707438126d425bd53ac50611282db501bae526e87799a8c3f044aee261de4d23ead4d2dd64a3d4871dd3288d9aba7ac588f5abf03716e6301f25e83a272506', 0, 0, 1590043079, 1590042890, NULL, NULL, '8667f0909bf53dfdef0beeb602dd5bd9bf527c9aeeb6f4086c8ca66ae324c70ec9ddb46851fd8ae5a35dc6d3dfbad83d96bbb5533c882ffbdf1a328f67986a721aa9e2424248803e324f00267c4317c2ae2ad522a9fb88ac0d0e42cb5438ce7b0a15a55b83191bf85b0bd937b5a24b6065a236d13e8c3e85e5cd5b7ab3e0b403db56c58aa724cacdc28dfd54c94dfe1f9305f503a9d70daf35fb826b56be4a14b1e63c90167dc5720bc945fc18d184c5a00f17aa84e1cf32f97cf2ca184a6f7790dcd93131612fa254e64a93ae6c2fe1208eb4f737a1d32200bd2da94929a48ad4321dfef390684478b43fa0c069176f030b74b89db5aabb2020567eecac32ff087c1295dec7590a1ff3fd07a2d81bcdd904c440c70023dbfac2685d568ad1a617715b1c1df122fc5c6245ad103f27747572d75cf7c413ac77e326d61e1157bb4d6d98fd5153bc325b64ecd0f1838861f0b45dd39c486ad780e2a2a678becfca21cb8b68297220e5caf2dfd064af809f087de5941971396f65ccecc165289e9a31ce901bfefacedcee74436c8eec1281f4107d998949cc6fec223ed133a2ea6772d8d4395bcc95e4391251ef3d3252653e3c2c2d889573ed0150ce819e35e7739a09bdc46994baf7b334043aa4ffcd2d94a1575dc76fb8b2e0717ce5fdeef98493c54c519821952949f08278d470f0d2f8fc797d85412cdc0ac228f58267a75f26fece218835e57b23d22f5968d35f6c6806eaec4815b70e520e18bf223d8d432c67620900c18ae407d13d79c5098fed6a3961af19ca47b6f8b78c4957f8782e14f9aa5d5902d4d0f602ac7bb90cf9831d659c2916c021e26df3ce9981b93fc24c01f54bb8464d044035c4a45cda305205de488dc8aa673d56be27859f1ad7e1db11ed7e48c3c9364b1c8783234a4357f93d022fd336c3ab5af467b5204ef559fd8cf50319e1df75f35303a64f3ae2fcc6e5096cabeef7665038a08aa5837ab31cc0fb09c25a004bc78e3185538d0ca556b4b33aaac8340a90de87efe45c5ea12bed48428049bdf84068c943048288678eaaec8cff244480291b4b9dcc947cf991bc84563209c007554197ee0abb661091740f14860f05e637fba71e3e49bb044371d9b7a11a9c6ee36b509dcfff1911171dc77cd5c8384ec69bb2e9e14447fdba0805d8437158232fa2ef1bfb73c1c3ce0e0e9a09c1c086c89fe4cf4d22b5f53a9c7f7ff2b1c61de79a262ba981e185bdbee1cacf54a6378c7b7c8bf84b7e0073ba7564d46906005a0cc540cd23f6320a70d2a76f073283336bb2c1a8565f4781319c3a01b64df70a04571c9da2fc6d822fddf3c8e40bb72c13bd0fa37ddf5edf94970ba12ca3df541c728231f927fc476583c96b1a2b709cfbebaff98252cabe0812c7a9a8646601b5bcf37e6be0211003a93ae4471fbf3f722e4516880757c587dc960e56ea54a356ff54fd7d6b28d240ebc416b94949433ab9b84e11a392cf99241f78b3ebd66115db6c38854ba09b7f7f064d47102a5a4b1c59175452fb774be2c7138eae3abcc021d3dd2c285b4fe9fd7796fe93cc08dbfeac22144f70594975f07dcaa2c45b0135d91fa14b33086feb45884036ffe16025ae52a26698a031697ae5898cb3269a1ff2c177db71a64cd5c1720f752b035f92c2accce096b8fb222000d03795b0d0b35807b0a9e5e0780a3826690828b23190f8fd5aaf98db5880195be343bffe153cdace10b18660fea36b6e899be7b1b95ff784e42721026f8916c0e47c333e28e1ffc2db5c5a5fc04b5d0826e3a8aa8e9b36beae7548d67cb9d972def8beca150f1f7aea258e1553ef5221e70be9dc201ff32f64ff25a32092f3aef3acf4dfbcddeb3ec20ec1d486f7fec1d0f4d66ba4d77d8838676d121286c86981e386712f35b70d5bd4f03af73c5c2a2f00fb5980b930888d2865dc17f0c7c934d583e5c5493c71644157f931c17fe06d20d317ded7ff35cffb444dea8399e11c28e489b16ad24c60ad521258c0396a3a75cb561dcb96f653d3c33662444a9e02464384198ec2bcc72a2d0806974019d447305ecff5e5bf539b8eeb62f8bd51f213276b3e1da062ad2ba4177fed7f1330bb47589e75e7d0815eb2344189b8f26e473f6b07e5cb7f12096bdd9c108cf16a645f6cb0d932e916971890e608f8ca3c74285eb6e7f9970b191bdad03fd443337699bd3ac27ed2f0aa1adfa81c6f226beefdde18924c7e146dc80e87ac2aa81e8450d46a5937749d93bb84a25a5b192f99a9d57e28f749f646340514ea85effb51a0a8295ce43698fdf6b243ea661775cfc2544262d7950fda3969463c2b8444be3436c5180b09f0f845c7eab20cb64d7c331f35ddf384b9e9f8eaab1a9b74e5b1dddf12e789a20c48b3d8089de42cdd388fd2a47057098ba531|EwrB1bsOSawd5+0e|6e678b26557382c2cf69f9bd37351ef079e7009ba83c7d5e32f1d367b210b5fb70191f7fbd308e6efef1b82429e953aeb5044afa32f4fd0c344e841edc5f1fcb', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2GRqSpzzaV2LgzGHuass\nYPe5BcBsic76pDEnDX3o+7xqMJfvmH6Of76AzHggH4JqqL9dy1dAzW7CtxW1y9y7\n4jfZTkRVev7DncyKzNOSooLXzDMub4G2rhjHYGQ0/gWVQy+8m5qM0bQ5mLmNoRJl\nSIbOUrQWkMT/FyEFrBVpLHYJmS6zd9KhVBAjVQPEMkoQzfACEwQIxvQeYQpfMDSQ\nuFIAeb1lPxQs+X67L1TI/0S2zCl5425O99984iP328VqZOQSKghjW785BoC4tDpn\nfIaeZ2W70aU6TRSgzOZb0xWh4XLLEkH43Nk4Onx5fawaohOpJJgtbdEZWYR2NFCg\nNQIDAQAB\n-----END PUBLIC KEY-----\n', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_bruteforce_attempts`
--

CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `occurred` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `metadata` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendarchanges`
--

CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendarobjects`
--

CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendarid` bigint(20) UNSIGNED NOT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `componenttype` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `firstoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `lastoccurence` bigint(20) UNSIGNED DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `classification` int(11) DEFAULT '0',
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendarobjects_props`
--

CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendarid` bigint(20) NOT NULL DEFAULT '0',
  `objectid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `parameter` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendars`
--

CREATE TABLE `oc_calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8_bin,
  `components` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_calendars`
--

INSERT INTO `oc_calendars` (`id`, `principaluri`, `displayname`, `uri`, `synctoken`, `description`, `calendarorder`, `calendarcolor`, `timezone`, `components`, `transparent`) VALUES
(1, 'principals/users/admin', 'Personal', 'personal', 1, NULL, 0, NULL, NULL, 'VEVENT,VTODO', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendarsubscriptions`
--

CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `calendarorder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `source` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_invitations`
--

CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `recurrenceid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attendee` varchar(255) COLLATE utf8_bin NOT NULL,
  `organizer` varchar(255) COLLATE utf8_bin NOT NULL,
  `sequence` bigint(20) UNSIGNED DEFAULT NULL,
  `token` varchar(60) COLLATE utf8_bin NOT NULL,
  `expiration` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_reminders`
--

CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `recurrence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `alarm_hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) UNSIGNED NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_resources`
--

CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backend_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_resources_md`
--

CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_rooms`
--

CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `backend_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_calendar_rooms_md`
--

CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_cards`
--

CREATE TABLE `oc_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `carddata` longblob,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` bigint(20) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_cards_properties`
--

CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `cardid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_collres_accesscache`
--

CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `collection_id` bigint(20) DEFAULT '0',
  `resource_type` varchar(64) COLLATE utf8_bin DEFAULT '',
  `resource_id` varchar(64) COLLATE utf8_bin DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_collres_collections`
--

CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_collres_resources`
--

CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `resource_id` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_comments`
--

CREATE TABLE `oc_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `topmost_parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `children_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `actor_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8_bin,
  `verb` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_comments_read_markers`
--

CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_credentials`
--

CREATE TABLE `oc_credentials` (
  `user` varchar(64) COLLATE utf8_bin NOT NULL,
  `identifier` varchar(64) COLLATE utf8_bin NOT NULL,
  `credentials` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_dav_cal_proxy`
--

CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `proxy_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `permissions` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_dav_shares`
--

CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) UNSIGNED NOT NULL,
  `publicuri` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_directlink`
--

CREATE TABLE `oc_directlink` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `expiration` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_direct_edit`
--

CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL,
  `editor_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `accessed` tinyint(1) NOT NULL DEFAULT '0',
  `file_path` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_federated_reshares`
--

CREATE TABLE `oc_federated_reshares` (
  `share_id` int(11) NOT NULL,
  `remote_id` int(11) NOT NULL COMMENT 'share ID at the remote server'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filecache`
--

CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL,
  `storage` bigint(20) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT '0',
  `mimepart` bigint(20) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` bigint(20) NOT NULL DEFAULT '0',
  `storage_mtime` bigint(20) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0',
  `checksum` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_filecache`
--

INSERT INTO `oc_filecache` (`fileid`, `storage`, `path`, `path_hash`, `parent`, `name`, `mimetype`, `mimepart`, `size`, `mtime`, `storage_mtime`, `encrypted`, `unencrypted_size`, `etag`, `permissions`, `checksum`) VALUES
(1, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 0, 1590041079, 1590041079, 0, 0, '5ec619f7a37cd', 23, ''),
(2, 1, 'appdata_ocjjg99g1c9f', 'cba2dd6cfd0d833498bd28c87374ad95', 1, 'appdata_ocjjg99g1c9f', 2, 1, 0, 1590041121, 1590041121, 0, 0, '5ec619c51a24e', 31, ''),
(3, 1, 'appdata_ocjjg99g1c9f/appstore', '2934353015735d1d2d02bf7ad1e5ed97', 2, 'appstore', 2, 1, 0, 1590041161, 1590041161, 0, 0, '5ec619c5728c0', 31, ''),
(4, 1, 'appdata_ocjjg99g1c9f/appstore/apps.json', 'ea0b367138008589d3411021d5094e3c', 3, 'apps.json', 4, 3, 0, 1590041029, 1590041029, 0, 0, '0f0ad615cc4c31113ecfffa3a00cf592', 27, ''),
(5, 2, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 19449512, 1590041896, 1590041042, 0, 0, '5ec61d28cef6d', 23, ''),
(6, 2, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 5, 'files', 2, 1, 19449512, 1590041896, 1590041896, 0, 0, '5ec61d28cef6d', 31, ''),
(7, 2, 'files/Documents', '0ad78ba05b6961d92f7970b2b3922eca', 6, 'Documents', 2, 1, 405265, 1590041044, 1590041044, 0, 0, '5ec619d44b4a9', 31, ''),
(8, 2, 'files/Documents/Example.md', 'efe0853470dd0663db34818b444328dd', 7, 'Example.md', 6, 5, 1059, 1590041043, 1590041043, 0, 0, 'c5e9999aafae1b6e1cbbfa1a2301c534', 27, ''),
(9, 2, 'files/Documents/Example.odt', 'c89c560541b952a435783a7d51a27d50', 7, 'Example.odt', 7, 3, 30062, 1590041043, 1590041043, 0, 0, '1536003487d4d0ecdef062c1c1e6f9e4', 27, ''),
(10, 2, 'files/Documents/Nextcloud flyer.pdf', '9c5b4dc7182a7435767708ac3e8d126c', 7, 'Nextcloud flyer.pdf', 8, 3, 374008, 1590041044, 1590041044, 0, 0, 'cb5000a210113a55b0d924f144a4130f', 27, ''),
(11, 2, 'files/Documents/Readme.md', '51ec9e44357d147dd5c212b850f6910f', 7, 'Readme.md', 6, 5, 136, 1590041044, 1590041044, 0, 0, 'b6d5bb05412d946d9fc8d0951f139b2f', 27, ''),
(12, 2, 'files/Photos', 'd01bb67e7b71dd49fd06bad922f521c9', 6, 'Photos', 2, 1, 5656463, 1590041046, 1590041046, 0, 0, '5ec619d686fa5', 31, ''),
(13, 2, 'files/Photos/Birdie.jpg', 'cd31c7af3a0ec6e15782b5edd2774549', 12, 'Birdie.jpg', 10, 9, 593508, 1590041045, 1590041045, 0, 0, '3649e70d9fc1a76cf68d6273083873ab', 27, ''),
(14, 2, 'files/Photos/Frog.jpg', 'd6219add1a9129ed0c1513af985e2081', 12, 'Frog.jpg', 10, 9, 457744, 1590041045, 1590041045, 0, 0, '3b9eec725c29d295802c2d63ffa21b64', 27, ''),
(15, 2, 'files/Photos/Gorilla.jpg', '6d5f5956d8ff76a5f290cebb56402789', 12, 'Gorilla.jpg', 10, 9, 474653, 1590041045, 1590041045, 0, 0, '30a166b259e7b69e31bf4dbe3053a1e7', 27, ''),
(16, 2, 'files/Photos/Library.jpg', '0b785d02a19fc00979f82f6b54a05805', 12, 'Library.jpg', 10, 9, 2170375, 1590041045, 1590041045, 0, 0, '03a46566475f94111b6253853d9a86e2', 27, ''),
(17, 2, 'files/Photos/Nextcloud community.jpg', 'b9b3caef83a2a1c20354b98df6bcd9d0', 12, 'Nextcloud community.jpg', 10, 9, 797325, 1590041045, 1590041045, 0, 0, 'fb59ca01e4df8ebc217d629da6f684fa', 27, ''),
(18, 2, 'files/Photos/Readme.md', '2a4ac36bb841d25d06d164f291ee97db', 12, 'Readme.md', 6, 5, 150, 1590041046, 1590041046, 0, 0, '238a4c62ea7e4c8ba43f4cbf1fbbc49d', 27, ''),
(19, 2, 'files/Photos/Steps.jpg', '7b2ca8d05bbad97e00cbf5833d43e912', 12, 'Steps.jpg', 10, 9, 567689, 1590041046, 1590041046, 0, 0, '916354a24aff46c29ab6426a0e5d9c06', 27, ''),
(20, 2, 'files/Photos/Toucan.jpg', '681d1e78f46a233e12ecfa722cbc2aef', 12, 'Toucan.jpg', 10, 9, 167989, 1590041046, 1590041046, 0, 0, 'ac9c99ad554f35f4815c68dbe41ca5df', 27, ''),
(21, 2, 'files/Photos/Vineyard.jpg', '14e5f2670b0817614acd52269d971db8', 12, 'Vineyard.jpg', 10, 9, 427030, 1590041046, 1590041046, 0, 0, 'bd634d737b6fbb8ac01a4ac8a210dbc3', 27, ''),
(22, 2, 'files/Nextcloud Manual.pdf', '2bc58a43566a8edde804a4a97a9c7469', 6, 'Nextcloud Manual.pdf', 8, 3, 6988379, 1590041046, 1590041046, 0, 0, 'f78257ea8b0934b74ed67d322dd50db5', 27, ''),
(23, 2, 'files/Nextcloud intro.mp4', 'e4919345bcc87d4585a5525daaad99c0', 6, 'Nextcloud intro.mp4', 12, 11, 3963036, 1590041047, 1590041047, 0, 0, '043310fbfc83d5d01c0474f29b8c9c67', 27, ''),
(24, 2, 'files/Nextcloud.png', '2bcc0ff06465ef1bfc4a868efde1e485', 6, 'Nextcloud.png', 13, 9, 50598, 1590041047, 1590041047, 0, 0, 'bcaac9aeb7ec794ae398f64a3ee38afa', 27, ''),
(25, 1, 'appdata_ocjjg99g1c9f/js', 'a57c437ed9da7cb8c9a5ea49a74517a4', 2, 'js', 2, 1, 0, 1590041102, 1590041102, 0, 0, '5ec619e67e01f', 31, ''),
(26, 1, 'appdata_ocjjg99g1c9f/js/core', '87ecb96a2c6fafa0e3118466b32850b7', 25, 'core', 2, 1, 0, 1590041063, 1590041063, 0, 0, '5ec619e6a5cb1', 31, ''),
(27, 1, 'appdata_ocjjg99g1c9f/js/core/merged-template-prepend.js', '9eeb1c7faccb6b0a3c976d39e7a9037c', 26, 'merged-template-prepend.js', 14, 3, 11258, 1590041063, 1590041063, 0, 0, '75247040470fa6b11228ada0417dc57d', 27, ''),
(28, 1, 'appdata_ocjjg99g1c9f/js/core/merged-template-prepend.js.deps', '0f0de6fea70c964dcaf73de1b1062bdb', 26, 'merged-template-prepend.js.deps', 15, 3, 246, 1590041063, 1590041063, 0, 0, '0d49e4ba06f544b9f7bf62c0862c2545', 27, ''),
(29, 1, 'appdata_ocjjg99g1c9f/js/core/merged-template-prepend.js.gzip', '92d79473b04290fe2022bfc86feb62bd', 26, 'merged-template-prepend.js.gzip', 16, 3, 2950, 1590041063, 1590041063, 0, 0, '2b2bab9d679edcd39295163f5cc020b3', 27, ''),
(30, 1, 'appdata_ocjjg99g1c9f/text', '4d1b7787222239d613223a7fa4b12612', 2, 'text', 2, 1, 0, 1590041063, 1590041063, 0, 0, '5ec619e78ab89', 31, ''),
(31, 1, 'appdata_ocjjg99g1c9f/text/documents', '49a888eadf99de90b1ad9ba402bf1c41', 30, 'documents', 2, 1, 0, 1590041063, 1590041063, 0, 0, '5ec619e7b61d3', 31, ''),
(32, 1, 'appdata_ocjjg99g1c9f/css', '312a1608ac396555a47f63138531a01d', 2, 'css', 2, 1, 0, 1590041192, 1590041192, 0, 0, '5ec619e800bca', 31, ''),
(33, 1, 'appdata_ocjjg99g1c9f/css/icons', 'c3a1c18e64b91f6cb5ef45d64adafb7f', 32, 'icons', 2, 1, 0, 1590041068, 1590041068, 0, 0, '5ec619e8448d4', 31, ''),
(34, 1, 'appdata_ocjjg99g1c9f/css/core', '7b72094d852243e803a714cd7c786394', 32, 'core', 2, 1, 0, 1590041071, 1590041071, 0, 0, '5ec619e8ab14c', 31, ''),
(35, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-server.css', 'c8f55c93bb7f56c9fa3c8035c8846cd4', 34, '7681-ec62-server.css', 17, 5, 139244, 1590041069, 1590041069, 0, 0, 'b2d4e26e36e155812a673422381649c1', 27, ''),
(36, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-server.css.deps', '8aedf6399ef9ee301cd7d5d4f4b6668f', 34, '7681-ec62-server.css.deps', 15, 3, 759, 1590041069, 1590041069, 0, 0, '562298f091b5efd5d248faa4d0283996', 27, ''),
(37, 1, 'appdata_ocjjg99g1c9f/css/icons/icons-list.template', 'd764a14b0dc527aa7dacedbca1d7414b', 33, 'icons-list.template', 15, 3, 15825, 1590041192, 1590041192, 0, 0, '07c63cddcf5dd15d4f7b407db5aad059', 27, ''),
(38, 1, 'appdata_ocjjg99g1c9f/css/icons/icons-vars.css', '7ccc1ab1fdad07c9ca2249d964193961', 33, 'icons-vars.css', 17, 5, 156763, 1590041192, 1590041192, 0, 0, '9a7aad22b57064c9c42e419f9ce1fb63', 27, ''),
(39, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-server.css.gzip', '70c249109980668bbd446d413387031d', 34, '7681-ec62-server.css.gzip', 16, 3, 19632, 1590041069, 1590041069, 0, 0, '84c6f2c640037afc1ffcf1d8b21be1d1', 27, ''),
(40, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-css-variables.css', 'afe81ada4ab7676e500ae77cb8f6e407', 34, '7681-ec62-css-variables.css', 17, 5, 1235, 1590041069, 1590041069, 0, 0, 'bccf7c58fba8b27c709c614b0cbfbdee', 27, ''),
(41, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-css-variables.css.deps', 'dea6fad62afc1a51b4c047bed5d9817d', 34, '7681-ec62-css-variables.css.deps', 15, 3, 176, 1590041069, 1590041069, 0, 0, 'f0ebb189406c2f903a0cb97382e2fe04', 27, ''),
(42, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-css-variables.css.gzip', '394bc2f23f38aee1274469744059a495', 34, '7681-ec62-css-variables.css.gzip', 16, 3, 530, 1590041070, 1590041070, 0, 0, '69c51dbf73f099d47bd25c45fb4eca35', 27, ''),
(43, 1, 'appdata_ocjjg99g1c9f/css/notifications', '41bf063b08d2514a52b609f1640107b5', 32, 'notifications', 2, 1, 0, 1590041070, 1590041070, 0, 0, '5ec619ee16925', 31, ''),
(44, 1, 'appdata_ocjjg99g1c9f/css/notifications/783c-ec62-styles.css', '1cde398a15f92beb1f77e2a772f6c12e', 43, '783c-ec62-styles.css', 17, 5, 3670, 1590041070, 1590041070, 0, 0, '31e4eac8731f6c7bc784b11de372b6aa', 27, ''),
(45, 1, 'appdata_ocjjg99g1c9f/css/notifications/783c-ec62-styles.css.deps', 'ef545696c55063887b602833bc80b575', 43, '783c-ec62-styles.css.deps', 15, 3, 184, 1590041070, 1590041070, 0, 0, '7f2921551dad6eb46b2eb376f04082d1', 27, ''),
(46, 1, 'appdata_ocjjg99g1c9f/css/notifications/783c-ec62-styles.css.gzip', '2457f0ee6267133edfaef067f8d86572', 43, '783c-ec62-styles.css.gzip', 16, 3, 903, 1590041070, 1590041070, 0, 0, 'ded295b52f2192de5b299efecb1a93eb', 27, ''),
(47, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-results.css', '55febfe6428acbb046732d65546e8116', 34, '7681-ec62-results.css', 17, 5, 1274, 1590041071, 1590041071, 0, 0, 'd2778c3e416206487330e80e349331eb', 27, ''),
(48, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-results.css.deps', '08cd6b19a7ee911191b48abd2364be9c', 34, '7681-ec62-results.css.deps', 15, 3, 178, 1590041071, 1590041071, 0, 0, 'fc5c2c57b3df165dfd3029b04e79ad6e', 27, ''),
(49, 1, 'appdata_ocjjg99g1c9f/css/core/7681-ec62-results.css.gzip', 'ee3b9425ab3e5f8158bde4107bc68aa7', 34, '7681-ec62-results.css.gzip', 16, 3, 520, 1590041071, 1590041071, 0, 0, 'eabc7c4d09f41b70d63de9bbfa308fdd', 27, ''),
(50, 1, 'appdata_ocjjg99g1c9f/css/theming', 'cdc75bfa460735b65b14fe48e3d4cdf2', 32, 'theming', 2, 1, 0, 1590041074, 1590041074, 0, 0, '5ec619f21fa2b', 31, ''),
(51, 1, 'appdata_ocjjg99g1c9f/css/theming/d16b-ec62-theming.css', '5dc7f7a520e3999e1ccf441209f76fbd', 50, 'd16b-ec62-theming.css', 17, 5, 1267, 1590041075, 1590041075, 0, 0, '12a3cded976e5936e9f7b9f9de3cbf4e', 27, ''),
(52, 1, 'appdata_ocjjg99g1c9f/css/theming/d16b-ec62-theming.css.deps', '7576b2ba344f9c6660f3b7bfa18311dc', 50, 'd16b-ec62-theming.css.deps', 15, 3, 179, 1590041075, 1590041075, 0, 0, '62ddec81d794f66762da6857fa383eb5', 27, ''),
(53, 1, 'appdata_ocjjg99g1c9f/css/theming/d16b-ec62-theming.css.gzip', 'feff9defeeae9f1e1186e7d34f3566ec', 50, 'd16b-ec62-theming.css.gzip', 16, 3, 432, 1590041075, 1590041075, 0, 0, '25c194c6de8a86b7c8cd004beb30984f', 27, ''),
(54, 1, 'files_external', 'c270928b685e7946199afdfb898d27ea', 1, 'files_external', 2, 1, 0, 1590041079, 1590041079, 0, 0, '5ec619f7a37cd', 31, ''),
(55, 1, 'appdata_ocjjg99g1c9f/avatar', '7c27edb4fe0edbc071031de1bc54ec5e', 2, 'avatar', 2, 1, 0, 1590041101, 1590041101, 0, 0, '5ec61a0ce3be0', 31, ''),
(56, 1, 'appdata_ocjjg99g1c9f/avatar/admin', '3229517670b97ab1d2552e645e45e4a7', 55, 'admin', 2, 1, 0, 1590041101, 1590041101, 0, 0, '5ec61a0d3651e', 31, ''),
(57, 1, 'appdata_ocjjg99g1c9f/js/files', '230d181ace8999413d59e76bc26b18b0', 25, 'files', 2, 1, 0, 1590041101, 1590041101, 0, 0, '5ec61a0d6661f', 31, ''),
(58, 1, 'appdata_ocjjg99g1c9f/js/files/merged-index.js', '69c8fe9d926767df4f29bb520dc6e0ba', 57, 'merged-index.js', 14, 3, 410833, 1590041101, 1590041101, 0, 0, 'dab2d8d06a2c787eaf8817141f8ee13b', 27, ''),
(59, 1, 'appdata_ocjjg99g1c9f/js/files/merged-index.js.deps', '89df5657c4d323cae040fcb24b1e7f19', 57, 'merged-index.js.deps', 15, 3, 2082, 1590041101, 1590041101, 0, 0, '051ca1183632a44c9cecf62484f6124f', 27, ''),
(60, 1, 'appdata_ocjjg99g1c9f/js/files/merged-index.js.gzip', 'aaed5f7877c848be6918f484291ddf86', 57, 'merged-index.js.gzip', 16, 3, 92694, 1590041102, 1590041102, 0, 0, 'dfc8854ff7e3a68f0e1de2fa1ddfdbac', 27, ''),
(61, 1, 'appdata_ocjjg99g1c9f/js/activity', 'f9919a42b99c96dbaa8e394da72f881d', 25, 'activity', 2, 1, 0, 1590041102, 1590041102, 0, 0, '5ec61a0e30043', 31, ''),
(62, 1, 'appdata_ocjjg99g1c9f/js/activity/activity-sidebar.js', '1c306b7e65d0ee4144e20a7b45aaf8ec', 61, 'activity-sidebar.js', 14, 3, 36041, 1590041102, 1590041102, 0, 0, '5da97f75986f6fbb05196d38b3dd8a37', 27, ''),
(63, 1, 'appdata_ocjjg99g1c9f/js/activity/activity-sidebar.js.deps', '6f91fab1f03810e21e49aa70524bec35', 61, 'activity-sidebar.js.deps', 15, 3, 492, 1590041102, 1590041102, 0, 0, 'd6c3443ae8e73afb67562d414dec9b75', 27, ''),
(64, 1, 'appdata_ocjjg99g1c9f/js/activity/activity-sidebar.js.gzip', '718f2e8fbc56d18748bf27d0f76dc385', 61, 'activity-sidebar.js.gzip', 16, 3, 5559, 1590041102, 1590041102, 0, 0, '99cbbea5505a8b2fbb7c55db75278971', 27, ''),
(65, 1, 'appdata_ocjjg99g1c9f/css/files', '2199c45686a24eb81ed2528f3d405eb3', 32, 'files', 2, 1, 0, 1590041104, 1590041104, 0, 0, '5ec61a0eb9726', 31, ''),
(66, 1, 'appdata_ocjjg99g1c9f/css/files/9eeb-ec62-merged.css', '65473a3ba96f67783914d78b8bdb51af', 65, '9eeb-ec62-merged.css', 17, 5, 28221, 1590041104, 1590041104, 0, 0, 'b56286690962ba57775da5e4c4765b65', 27, ''),
(67, 1, 'appdata_ocjjg99g1c9f/css/files/9eeb-ec62-merged.css.deps', 'e06fe174e2d554b6378a28df247b5ed7', 65, '9eeb-ec62-merged.css.deps', 15, 3, 480, 1590041104, 1590041104, 0, 0, '79a54965a4e7bfa6ca7ffbb32035c8ab', 27, ''),
(68, 1, 'appdata_ocjjg99g1c9f/css/files/9eeb-ec62-merged.css.gzip', '6d00525c53125744d2f99d4703ab33a2', 65, '9eeb-ec62-merged.css.gzip', 16, 3, 5585, 1590041104, 1590041104, 0, 0, '44de5aecc72e909635f174d37f153704', 27, ''),
(69, 1, 'appdata_ocjjg99g1c9f/css/text', '76ae406bcb7bba7f4654fb4735e408ea', 32, 'text', 2, 1, 0, 1590041105, 1590041105, 0, 0, '5ec61a10e334c', 31, ''),
(70, 1, 'appdata_ocjjg99g1c9f/css/text/d233-ec62-icons.css', 'fbe2a967131e9720d244cd3de976aa49', 69, 'd233-ec62-icons.css', 17, 5, 2710, 1590041105, 1590041105, 0, 0, 'b38020a0ed802ff09b1b91a569fe148e', 27, ''),
(71, 1, 'appdata_ocjjg99g1c9f/css/text/d233-ec62-icons.css.deps', '9f90452140d3405f3e44ce88201750fb', 69, 'd233-ec62-icons.css.deps', 15, 3, 174, 1590041105, 1590041105, 0, 0, '2a952610ae7739d49ff04faa963371b6', 27, ''),
(72, 1, 'appdata_ocjjg99g1c9f/css/text/d233-ec62-icons.css.gzip', '906d19354fd43f411f388b45bc2a035b', 69, 'd233-ec62-icons.css.gzip', 16, 3, 417, 1590041105, 1590041105, 0, 0, '8c8cbd89764ba8bf0b285ef22f87cc93', 27, ''),
(73, 1, 'appdata_ocjjg99g1c9f/css/files_sharing', '2a93d11576dede962926f6deecdf5e33', 32, 'files_sharing', 2, 1, 0, 1590041106, 1590041106, 0, 0, '5ec61a11cb081', 31, ''),
(74, 1, 'appdata_ocjjg99g1c9f/css/files_sharing/c5f2-ec62-icons.css', '16676b809ba1b55763bbac735afff81d', 73, 'c5f2-ec62-icons.css', 17, 5, 174, 1590041106, 1590041106, 0, 0, 'cdba6c5a0a4cecbc864a3e2eb4d4f4d7', 27, ''),
(75, 1, 'appdata_ocjjg99g1c9f/css/files_sharing/c5f2-ec62-icons.css.deps', 'd0a828dd47403ed5345ebe3a62cfebd1', 73, 'c5f2-ec62-icons.css.deps', 15, 3, 183, 1590041106, 1590041106, 0, 0, '8fafa9e3f21680ae139cd588230cc9e9', 27, ''),
(76, 1, 'appdata_ocjjg99g1c9f/css/files_sharing/c5f2-ec62-icons.css.gzip', '3b9c723970275d4378fbdf0ae445a417', 73, 'c5f2-ec62-icons.css.gzip', 16, 3, 102, 1590041106, 1590041106, 0, 0, '8f2ba35a1ef873fe918ea4f70d1b21a4', 27, ''),
(77, 1, 'appdata_ocjjg99g1c9f/css/activity', '01378a26b7183a0f243b8b216d4b1ed3', 32, 'activity', 2, 1, 0, 1590041107, 1590041107, 0, 0, '5ec61a1290c6d', 31, ''),
(78, 1, 'appdata_ocjjg99g1c9f/css/activity/6c1e-ec62-style.css', '5fd6a5895b84652ee706fab436ceb326', 77, '6c1e-ec62-style.css', 17, 5, 3465, 1590041107, 1590041107, 0, 0, 'b3ebbfd9c2091383be4e5af7fb3b19e8', 27, ''),
(79, 1, 'appdata_ocjjg99g1c9f/css/activity/6c1e-ec62-style.css.deps', 'bae7d4d35079830351c41140606372ce', 77, '6c1e-ec62-style.css.deps', 15, 3, 178, 1590041107, 1590041107, 0, 0, '8078c8cb72556d2933401c0a21c3eb43', 27, ''),
(80, 1, 'appdata_ocjjg99g1c9f/css/activity/6c1e-ec62-style.css.gzip', 'f44fa2d502dc438141168678949f90a9', 77, '6c1e-ec62-style.css.gzip', 16, 3, 1109, 1590041107, 1590041107, 0, 0, '996e778ec7eaa4ad513ba1c2ea513e28', 27, ''),
(81, 1, 'appdata_ocjjg99g1c9f/theming', '93ea515812af89cd5c79168646fd2841', 2, 'theming', 2, 1, 0, 1590041120, 1590041120, 0, 0, '5ec61a2098d7f', 31, ''),
(82, 1, 'appdata_ocjjg99g1c9f/theming/0', 'e018fe9a7a5c24fc608569c8a9c5fda4', 81, '0', 2, 1, 0, 1590041219, 1590041219, 0, 0, '5ec61a20af354', 31, ''),
(83, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_application-pdf.svg', '0bac84b6488d0ffb73f148a68fc2d14a', 82, 'icon-core-filetypes_application-pdf.svg', 18, 9, 1054, 1590041121, 1590041121, 0, 0, 'd4122968ecd1cb6326dc4750ee133900', 27, ''),
(84, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_video.svg', '6df33243820cc4691bba81c2fe234de7', 82, 'icon-core-filetypes_video.svg', 18, 9, 277, 1590041121, 1590041121, 0, 0, '9a81c5016f69bb44f44ecd871d3800fd', 27, ''),
(85, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_folder.svg', 'b29f0426757f28f3395b6663cd2f22bc', 82, 'icon-core-filetypes_folder.svg', 18, 9, 255, 1590041121, 1590041121, 0, 0, '8ab9ffee7282c07b68c1c7150a2bdbd8', 27, ''),
(86, 1, 'appdata_ocjjg99g1c9f/preview', 'ce3cf2495492e61a4e24db63d6a66686', 2, 'preview', 2, 1, 0, 1590041225, 1590041225, 0, 0, '5ec61a212f510', 31, ''),
(87, 1, 'appdata_ocjjg99g1c9f/preview/24', 'f0401bbeab4f28b296298b5a38c73227', 86, '24', 2, 1, 0, 1590041200, 1590041200, 0, 0, '5ec61a2164f54', 31, ''),
(88, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_text.svg', '9cfed3320e6b7f73380a6b2d7e6f47ce', 82, 'icon-core-filetypes_text.svg', 18, 9, 295, 1590041121, 1590041121, 0, 0, '19d6e7bc56c7779ca4f471fd184ad7cd', 27, ''),
(90, 1, 'appdata_ocjjg99g1c9f/preview/18', '912ac80feac4d283e990cc06db5ee693', 86, '18', 2, 1, 0, 1590041225, 1590041225, 0, 0, '5ec61a21d8997', 31, ''),
(91, 1, 'appdata_ocjjg99g1c9f/preview/19', '2d6d7a22c13ac81f7a51fd8ce8e1c970', 86, '19', 2, 1, 0, 1590041850, 1590041850, 0, 0, '5ec61a2207873', 31, ''),
(92, 1, 'appdata_ocjjg99g1c9f/preview/20', '5b7b1f0f197616010b11eb53e2cdda1c', 86, '20', 2, 1, 0, 1590041219, 1590041219, 0, 0, '5ec61a226e852', 31, ''),
(93, 1, 'appdata_ocjjg99g1c9f/preview/19/1200-1800-max.jpg', '6cf4b0f547708f9ca3540e469e5e99f6', 91, '1200-1800-max.jpg', 10, 9, 425594, 1590041122, 1590041122, 0, 0, 'b3f61c67f9c2284fd1ddf97806bae640', 27, ''),
(94, 1, 'appdata_ocjjg99g1c9f/preview/21', '73481581373415134255979dc1a3edf9', 86, '21', 2, 1, 0, 1590041220, 1590041220, 0, 0, '5ec61a2292f31', 31, ''),
(95, 1, 'appdata_ocjjg99g1c9f/preview/18/4096-4096-max.png', '93adbdad99a691aa09f6376ca4340e86', 90, '4096-4096-max.png', 13, 9, 33843, 1590041123, 1590041123, 0, 0, 'df9bb00bd74cfd9026e1d6f85d690ca3', 27, ''),
(96, 1, 'appdata_ocjjg99g1c9f/preview/20/1600-1067-max.jpg', '06a13747e7c60763de0597f4fcf232b5', 92, '1600-1067-max.jpg', 10, 9, 231870, 1590041123, 1590041123, 0, 0, '15ad4644094a337118c131d93ddc30f2', 27, ''),
(97, 1, 'appdata_ocjjg99g1c9f/preview/21/1920-1281-max.jpg', 'a0a0a158d05cb40ed93e3fe19235778a', 94, '1920-1281-max.jpg', 10, 9, 428184, 1590041123, 1590041123, 0, 0, 'f974493e0ce72754ac9bf34c7585da9f', 27, ''),
(98, 1, 'appdata_ocjjg99g1c9f/preview/19/64-64-crop.jpg', '6fa54f67d74a3dec272d73a81d1a39d4', 91, '64-64-crop.jpg', 10, 9, 1792, 1590041123, 1590041123, 0, 0, '8d30fede35dd70ece7c3474a4b4c7192', 27, ''),
(99, 1, 'appdata_ocjjg99g1c9f/preview/20/64-64-crop.jpg', '6e24b37bd995abe47c27b6e7ab4382bc', 92, '64-64-crop.jpg', 10, 9, 2942, 1590041123, 1590041123, 0, 0, 'e9522cecbd4660324c9b6a339277a6ea', 27, ''),
(100, 1, 'appdata_ocjjg99g1c9f/preview/21/64-64-crop.jpg', '23e65a0b5ecd74f63f564d37ed3cfa49', 94, '64-64-crop.jpg', 10, 9, 2737, 1590041124, 1590041124, 0, 0, '8d4eef3071e1ae97eee887310437ca5c', 27, ''),
(101, 1, 'appdata_ocjjg99g1c9f/preview/18/64-64-crop.png', '084a7adf31992132d3d7bdbeb5a7b474', 90, '64-64-crop.png', 13, 9, 868, 1590041126, 1590041126, 0, 0, 'a648f2c37601f4219a5dd4ce908bd174', 27, ''),
(102, 1, 'appdata_ocjjg99g1c9f/css/settings', 'f20475aee893f7e46ca4e7bebb361d39', 32, 'settings', 2, 1, 0, 1590041158, 1590041158, 0, 0, '5ec61a44d3d60', 31, ''),
(103, 1, 'appdata_ocjjg99g1c9f/css/settings/47cd-ec62-settings.css', 'ff959c50fcc7c796efe4afca2264c57e', 102, '47cd-ec62-settings.css', 17, 5, 32097, 1590041158, 1590041158, 0, 0, 'cc15b2812887a31cdcc9fe55916914b2', 27, ''),
(104, 1, 'appdata_ocjjg99g1c9f/css/settings/47cd-ec62-settings.css.deps', 'db0729df97479e59b247d086ed5284c2', 102, '47cd-ec62-settings.css.deps', 15, 3, 181, 1590041158, 1590041158, 0, 0, '2da8c5732216d0afba49a757afdfa6f4', 27, ''),
(105, 1, 'appdata_ocjjg99g1c9f/css/settings/47cd-ec62-settings.css.gzip', '1d7272fbcc117c5e7410e56c74bb8da3', 102, '47cd-ec62-settings.css.gzip', 16, 3, 5952, 1590041158, 1590041158, 0, 0, '8a3d3af0fa16cd7dc42a7ee3e1f736d3', 27, ''),
(106, 1, 'appdata_ocjjg99g1c9f/appstore/categories.json', 'd6d83693c38a1d75e669755c8e7751c9', 3, 'categories.json', 4, 3, 132192, 1590041641, 1590041641, 0, 0, '9ad4c5b411d8463f1965c98cd779353d', 27, ''),
(107, 1, 'appdata_ocjjg99g1c9f/css/photos', '79bc9eb49141169573f4a9893424257b', 32, 'photos', 2, 1, 0, 1590041192, 1590041192, 0, 0, '5ec61a681a922', 31, ''),
(108, 1, 'appdata_ocjjg99g1c9f/css/photos/47cd-ec62-icons.css', 'e972505836352bfc4b16c22e726ecbda', 107, '47cd-ec62-icons.css', 17, 5, 383, 1590041192, 1590041192, 0, 0, 'd2cf4991aa28a97bfe235011f766af78', 27, ''),
(109, 1, 'appdata_ocjjg99g1c9f/css/photos/47cd-ec62-icons.css.deps', '432e6d1c97908ebf75f2425b1fc820b4', 107, '47cd-ec62-icons.css.deps', 15, 3, 176, 1590041192, 1590041192, 0, 0, '5288520def88fa03117c403c51a0cb7d', 27, ''),
(110, 1, 'appdata_ocjjg99g1c9f/css/photos/47cd-ec62-icons.css.gzip', 'b10e1ff05c704858ff1608cf367cf6ef', 107, '47cd-ec62-icons.css.gzip', 16, 3, 130, 1590041192, 1590041192, 0, 0, 'ce0279c0ee9d1ab69fb14fbdf5be8511', 27, ''),
(111, 1, 'appdata_ocjjg99g1c9f/preview/24/500-500-max.png', '3b4d74ce698dfb99779708764e6d80c5', 87, '500-500-max.png', 13, 9, 50545, 1590041200, 1590041200, 0, 0, 'e222f3718beaaa83b430fcfaa4aa8160', 27, ''),
(112, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_image.svg', '5f4d1446e107f5b4a12122a9b0bed256', 82, 'icon-core-filetypes_image.svg', 18, 9, 352, 1590041200, 1590041200, 0, 0, 'ddd8358edb71878927710197ed8b31c2', 27, ''),
(113, 1, 'appdata_ocjjg99g1c9f/preview/24/64-64-crop.png', '9b550d2f9e74841b0ad1513a362db7f9', 87, '64-64-crop.png', 13, 9, 4026, 1590041200, 1590041200, 0, 0, '8090feb49b59939e345cf36a90ccb1a8', 27, ''),
(114, 1, 'appdata_ocjjg99g1c9f/preview/24/256-256-crop.png', 'f85347620acfba9f3b45891969b0aab3', 87, '256-256-crop.png', 13, 9, 25434, 1590041200, 1590041200, 0, 0, '3502ead07bd1cac23c19a876f57def50', 27, ''),
(115, 1, 'appdata_ocjjg99g1c9f/theming/0/icon-core-filetypes_x-office-document.svg', '8fd4100bc45823498cb2f879984d6801', 82, 'icon-core-filetypes_x-office-document.svg', 18, 9, 295, 1590041219, 1590041219, 0, 0, '50b52ed1a0679b232102bf880125a1b4', 27, ''),
(116, 1, 'appdata_ocjjg99g1c9f/preview/20/256-256-crop.jpg', '4f2a5586e0234048062b89b382253728', 92, '256-256-crop.jpg', 10, 9, 20845, 1590041219, 1590041219, 0, 0, 'abbe0d599fbd3bf542a3a2208fceb05e', 27, ''),
(117, 1, 'appdata_ocjjg99g1c9f/preview/21/256-256-crop.jpg', 'a6ff04fb4e659d9036e7b2db512af89a', 94, '256-256-crop.jpg', 10, 9, 24508, 1590041220, 1590041220, 0, 0, 'de34b14b8432ceeb062aceccc62861a2', 27, ''),
(118, 1, 'appdata_ocjjg99g1c9f/preview/13', '3a1195cbc0eda7cc009c4b51de44358e', 86, '13', 2, 1, 0, 1590041223, 1590041223, 0, 0, '5ec61a848d1c6', 31, ''),
(119, 1, 'appdata_ocjjg99g1c9f/preview/14', '4ba787be6420a340ad0131634d358fc1', 86, '14', 2, 1, 0, 1590041223, 1590041223, 0, 0, '5ec61a84cc2df', 31, ''),
(120, 1, 'appdata_ocjjg99g1c9f/preview/19/256-256-crop.jpg', 'b76ee0b2cbd47a031205ae9481acae7c', 91, '256-256-crop.jpg', 10, 9, 13669, 1590041221, 1590041221, 0, 0, 'f8b242a254ac240218b6b31b9619b84f', 27, ''),
(121, 1, 'appdata_ocjjg99g1c9f/preview/13/1600-1067-max.jpg', '5b8f43b37d1a3a1991eb5741a019bd2e', 118, '1600-1067-max.jpg', 10, 9, 253158, 1590041221, 1590041221, 0, 0, 'dee7e5541085195e49b75f79035494c1', 27, ''),
(122, 1, 'appdata_ocjjg99g1c9f/preview/14/1600-1067-max.jpg', 'c4e941693eb3b28d666d8d610e934aa1', 119, '1600-1067-max.jpg', 10, 9, 349624, 1590041221, 1590041221, 0, 0, '8b61b62068b087b987b39d328b8cc7a8', 27, ''),
(123, 1, 'appdata_ocjjg99g1c9f/preview/15', '87a305c2b40555bcceed9d9dbe0f18bd', 86, '15', 2, 1, 0, 1590041224, 1590041224, 0, 0, '5ec61a85d25f5', 31, ''),
(124, 1, 'appdata_ocjjg99g1c9f/preview/16', '133c559b4fd44a73b3d271b2ba3fcbf3', 86, '16', 2, 1, 0, 1590041224, 1590041224, 0, 0, '5ec61a864f8e3', 31, ''),
(125, 1, 'appdata_ocjjg99g1c9f/preview/15/1600-1067-max.jpg', '10a4f35faf233fa051a3e30e1ceca4e6', 123, '1600-1067-max.jpg', 10, 9, 427204, 1590041222, 1590041222, 0, 0, '09a089222ca66cb587079a04a5fe411b', 27, ''),
(126, 1, 'appdata_ocjjg99g1c9f/preview/17', 'b966f51a27896e9582c0189622b802d9', 86, '17', 2, 1, 0, 1590041226, 1590041226, 0, 0, '5ec61a86c03f2', 31, ''),
(127, 1, 'appdata_ocjjg99g1c9f/preview/14/256-256-crop.jpg', '01e6fc7f6fc61df17e182ab66147ba68', 119, '256-256-crop.jpg', 10, 9, 13243, 1590041223, 1590041223, 0, 0, 'a0b223eb069f330fd2578cdc4b37583a', 27, ''),
(128, 1, 'appdata_ocjjg99g1c9f/preview/13/256-256-crop.jpg', '36479c322ed7864f6a5a9df554403d98', 118, '256-256-crop.jpg', 10, 9, 20013, 1590041223, 1590041223, 0, 0, '7f2505fcaf70b6e1b158665ef0300e69', 27, ''),
(129, 1, 'appdata_ocjjg99g1c9f/preview/16/1600-1066-max.jpg', 'ffb5cd3da06d6096104e7975499aa19e', 124, '1600-1066-max.jpg', 10, 9, 533329, 1590041224, 1590041224, 0, 0, 'bc27689dae5c8a8a9097c53ac8d30eac', 27, ''),
(130, 1, 'appdata_ocjjg99g1c9f/preview/15/256-256-crop.jpg', 'e9300a33dab4bf154f9c079aa19ad1fc', 123, '256-256-crop.jpg', 10, 9, 21514, 1590041224, 1590041224, 0, 0, '2901ed0a8ada015c62f0960033f84b77', 27, ''),
(131, 1, 'appdata_ocjjg99g1c9f/preview/17/3000-2000-max.jpg', 'a9559286d5df728e9e62664ef057b948', 126, '3000-2000-max.jpg', 10, 9, 1203830, 1590041224, 1590041224, 0, 0, '1c3a62434c9995e55a4c100bf31cd072', 27, ''),
(132, 1, 'appdata_ocjjg99g1c9f/preview/11', '61a0f2791049441a7eca8b6bee0dc625', 86, '11', 2, 1, 0, 1590041228, 1590041228, 0, 0, '5ec61a881f7be', 31, ''),
(133, 1, 'appdata_ocjjg99g1c9f/preview/16/256-256-crop.jpg', '161ac96dbddd2f84a6ffb20c49ca0572', 124, '256-256-crop.jpg', 10, 9, 27059, 1590041224, 1590041224, 0, 0, 'e96d88349d87f7054c97ba6c33d31705', 27, ''),
(134, 1, 'appdata_ocjjg99g1c9f/preview/11/4096-4096-max.png', '04abe49a450d54142446adebfdd5ed1d', 132, '4096-4096-max.png', 13, 9, 33851, 1590041225, 1590041225, 0, 0, 'dc0c686a08a3f9fcf66c11ae275bcb63', 27, ''),
(135, 1, 'appdata_ocjjg99g1c9f/preview/8', 'cad5d9cffe3df21f8e84bffd88706257', 86, '8', 2, 1, 0, 1590041230, 1590041230, 0, 0, '5ec61a89134fe', 31, ''),
(136, 1, 'appdata_ocjjg99g1c9f/preview/18/256-256-crop.png', '987e8dc57945f0af8ce86591fc267af9', 90, '256-256-crop.png', 13, 9, 6019, 1590041225, 1590041225, 0, 0, '8bbe055f1cf016c1f09218adab6f5a29', 27, ''),
(137, 1, 'appdata_ocjjg99g1c9f/preview/8/4096-4096-max.png', '868861e4e9f5aaf17c0adee7a83c4b35', 135, '4096-4096-max.png', 13, 9, 224906, 1590041227, 1590041227, 0, 0, 'b733e80572e5fc8412e041fe2539a23d', 27, ''),
(138, 1, 'appdata_ocjjg99g1c9f/preview/17/256-256-crop.jpg', '6adc4b17101a1367462ae966f17a537e', 126, '256-256-crop.jpg', 10, 9, 32345, 1590041226, 1590041226, 0, 0, 'd38073e243ce1cac711f135dccff2363', 27, ''),
(139, 1, 'appdata_ocjjg99g1c9f/preview/11/256-256-crop.png', '8490e2b5edbb3a86462a32958b48747c', 132, '256-256-crop.png', 13, 9, 6018, 1590041228, 1590041228, 0, 0, '7e24d88c128b837bf699458da6b00c7e', 27, ''),
(140, 1, 'appdata_ocjjg99g1c9f/preview/8/256-256-crop.png', 'a75b026b1e5d4a3130f8067079bd09c3', 135, '256-256-crop.png', 13, 9, 37961, 1590041230, 1590041230, 0, 0, '38f84cfb363a8f97b54022f87ad34bfe', 27, ''),
(141, 1, 'appdata_ocjjg99g1c9f/preview/19/1024-1536.jpg', '351c502be6493afdd632f21eb3b3df5c', 91, '1024-1536.jpg', 10, 9, 257019, 1590041850, 1590041850, 0, 0, '4cd950b4218e94501752fffea76aadbb', 27, ''),
(142, 2, 'files/001.txt', '01aebd3f44937d80eec3ef8638618a43', 6, '001.txt', 19, 5, 2385771, 1589807987, 1589807987, 0, 0, '9dcd1a42f0c7faf5e3f9ca4af8e9883b', 27, '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_filecache_extended`
--

CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) UNSIGNED NOT NULL,
  `metadata_etag` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT '0',
  `upload_time` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_filecache_extended`
--

INSERT INTO `oc_filecache_extended` (`fileid`, `metadata_etag`, `creation_time`, `upload_time`) VALUES
(142, NULL, 0, 1590041896);

-- --------------------------------------------------------

--
-- 表的结构 `oc_files_trash`
--

CREATE TABLE `oc_files_trash` (
  `auto_id` int(11) NOT NULL,
  `id` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_file_locks`
--

CREATE TABLE `oc_file_locks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lock` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_file_locks`
--

INSERT INTO `oc_file_locks` (`id`, `lock`, `key`, `ttl`) VALUES
(1, 0, 'files/0bcf776322b017bc4dd9e9ec9c78aa73', 1590044679),
(2, 0, 'files/38d3fc13a505a341da34815c5ccc8b3d', 1590044825),
(3, 0, 'files/84fc6d08ed3bd071bcdab33a99d2d7d9', 1590044722),
(5, 0, 'files/b6ef755cfc70b5eb94f5d3aad8ba833d', 1590044825),
(6, 0, 'files/3513aba8aa4305d3ad33fc7122d4af30', 1590044722),
(7, 0, 'files/cbc6f4e337332b94c2e02444d64b1c16', 1590044824),
(10, 0, 'files/2c7eaecb9090bd89cef1dcd4d0d5881a', 1590044825),
(11, 0, 'files/83f44a83c313ebf8afb1ece18b387c24', 1590044825),
(15, 0, 'files/ffa8b01491fafe4496ddf6fc6eaaa8dc', 1590045038),
(16, 0, 'files/9b92f494ac6630fb7ce23368ff2cae48', 1590045496),
(17, 0, 'files/9e7d86ec8cd30452dcb20aecef963681', 1590045478),
(18, 0, 'files/aef894266018a34f48c5bfd4a5c1de5a', 1590045478),
(19, 0, 'files/992d299d65c32f6c9045148c430ef1b9', 1590045478);

-- --------------------------------------------------------

--
-- 表的结构 `oc_flow_checks`
--

CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `operator` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_bin,
  `hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_flow_operations`
--

CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL,
  `class` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `checks` longtext COLLATE utf8_bin,
  `operation` longtext COLLATE utf8_bin,
  `entity` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `events` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_flow_operations_scope`
--

CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL,
  `operation_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `value` varchar(64) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_groups`
--

CREATE TABLE `oc_groups` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_groups`
--

INSERT INTO `oc_groups` (`gid`, `displayname`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `oc_group_admin`
--

CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_group_user`
--

CREATE TABLE `oc_group_user` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_group_user`
--

INSERT INTO `oc_group_user` (`gid`, `uid`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `oc_jobs`
--

CREATE TABLE `oc_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0',
  `last_checked` int(11) DEFAULT '0',
  `reserved_at` int(11) DEFAULT '0',
  `execution_duration` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_jobs`
--

INSERT INTO `oc_jobs` (`id`, `class`, `argument`, `last_run`, `last_checked`, `reserved_at`, `execution_duration`) VALUES
(1, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1590041078, 1590041078, 0, 0),
(2, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 1590041119, 1590041119, 0, 0),
(3, 'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob', 'null', 1590041160, 1590041160, 0, 0),
(4, 'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob', 'null', 1590041194, 1590041194, 0, 0),
(5, 'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob', 'null', 1590041199, 1590041199, 0, 0),
(6, 'OCA\\DAV\\BackgroundJob\\EventReminderJob', 'null', 1590041450, 1590041450, 0, 0),
(7, 'OCA\\Federation\\SyncJob', 'null', 1590041639, 1590041639, 0, 0),
(8, 'OCA\\Files\\BackgroundJob\\ScanFiles', 'null', 0, 1590040975, 0, 0),
(9, 'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems', 'null', 0, 1590040975, 0, 0),
(10, 'OCA\\Files\\BackgroundJob\\CleanupFileLocks', 'null', 0, 1590040975, 0, 0),
(11, 'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens', 'null', 0, 1590040975, 0, 0),
(12, 'OCA\\Files_Sharing\\DeleteOrphanedSharesJob', 'null', 0, 1590040977, 0, 0),
(13, 'OCA\\Files_Sharing\\ExpireSharesJob', 'null', 0, 1590040977, 0, 0),
(14, 'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob', 'null', 0, 1590040977, 0, 0),
(15, 'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash', 'null', 0, 1590040978, 0, 0),
(16, 'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions', 'null', 0, 1590040979, 0, 0),
(17, 'OCA\\NextcloudAnnouncements\\Cron\\Crawler', 'null', 0, 1590040983, 0, 0),
(18, 'OCA\\Support\\BackgroundJobs\\CheckSubscription', 'null', 0, 1590041002, 0, 0),
(19, 'OCA\\Survey_Client\\BackgroundJobs\\AdminNotification', 'null', 0, 1590041003, 0, 0),
(20, 'OCA\\Text\\Cron\\Cleanup', 'null', 0, 1590041008, 0, 0),
(21, 'OCA\\UpdateNotification\\Notification\\BackgroundJob', 'null', 0, 1590041023, 0, 0),
(22, 'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate', 'null', 0, 1590041028, 0, 0),
(23, 'OC\\Authentication\\Token\\DefaultTokenCleanupJob', 'null', 0, 1590041040, 0, 0),
(24, 'OC\\Log\\Rotate', 'null', 0, 1590041040, 0, 0),
(25, 'OC\\Preview\\BackgroundCleanupJob', 'null', 0, 1590041040, 0, 0),
(26, 'OCA\\FirstRunWizard\\Notification\\BackgroundJob', '{\"uid\":\"admin\"}', 0, 1590041100, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_login_flow_v2`
--

CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `started` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `poll_token` varchar(255) COLLATE utf8_bin NOT NULL,
  `login_token` varchar(255) COLLATE utf8_bin NOT NULL,
  `public_key` text COLLATE utf8_bin NOT NULL,
  `private_key` text COLLATE utf8_bin NOT NULL,
  `client_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `login_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `server` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `app_password` varchar(1024) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_migrations`
--

CREATE TABLE `oc_migrations` (
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_migrations`
--

INSERT INTO `oc_migrations` (`app`, `version`) VALUES
('activity', '2006Date20170808154933'),
('activity', '2006Date20170808155040'),
('activity', '2006Date20170919095939'),
('activity', '2007Date20181107114613'),
('activity', '2008Date20181011095117'),
('activity', '2010Date20190416112817'),
('core', '13000Date20170705121758'),
('core', '13000Date20170718121200'),
('core', '13000Date20170814074715'),
('core', '13000Date20170919121250'),
('core', '13000Date20170926101637'),
('core', '14000Date20180129121024'),
('core', '14000Date20180404140050'),
('core', '14000Date20180516101403'),
('core', '14000Date20180518120534'),
('core', '14000Date20180522074438'),
('core', '14000Date20180626223656'),
('core', '14000Date20180710092004'),
('core', '14000Date20180712153140'),
('core', '15000Date20180926101451'),
('core', '15000Date20181015062942'),
('core', '15000Date20181029084625'),
('core', '16000Date20190207141427'),
('core', '16000Date20190212081545'),
('core', '16000Date20190427105638'),
('core', '16000Date20190428150708'),
('core', '17000Date20190514105811'),
('core', '18000Date20190920085628'),
('core', '18000Date20191014105105'),
('core', '18000Date20191204114856'),
('dav', '1004Date20170825134824'),
('dav', '1004Date20170919104507'),
('dav', '1004Date20170924124212'),
('dav', '1004Date20170926103422'),
('dav', '1005Date20180413093149'),
('dav', '1005Date20180530124431'),
('dav', '1006Date20180619154313'),
('dav', '1006Date20180628111625'),
('dav', '1008Date20181030113700'),
('dav', '1008Date20181105104826'),
('dav', '1008Date20181105104833'),
('dav', '1008Date20181105110300'),
('dav', '1008Date20181105112049'),
('dav', '1008Date20181114084440'),
('dav', '1011Date20190725113607'),
('dav', '1011Date20190806104428'),
('dav', '1012Date20190808122342'),
('files', '11301Date20191205150729'),
('notifications', '2004Date20190107135757'),
('oauth2', '010401Date20181207190718'),
('oauth2', '010402Date20190107124745'),
('privacy', '100Date20190217131943'),
('text', '010000Date20190617184535'),
('twofactor_backupcodes', '1002Date20170607104347'),
('twofactor_backupcodes', '1002Date20170607113030'),
('twofactor_backupcodes', '1002Date20170919123342'),
('twofactor_backupcodes', '1002Date20170926101419'),
('twofactor_backupcodes', '1002Date20180821043638'),
('workflowengine', '2000Date20190808074233');

-- --------------------------------------------------------

--
-- 表的结构 `oc_mimetypes`
--

CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL,
  `mimetype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_mimetypes`
--

INSERT INTO `oc_mimetypes` (`id`, `mimetype`) VALUES
(3, 'application'),
(14, 'application/javascript'),
(4, 'application/json'),
(15, 'application/octet-stream'),
(8, 'application/pdf'),
(7, 'application/vnd.oasis.opendocument.text'),
(16, 'application/x-gzip'),
(1, 'httpd'),
(2, 'httpd/unix-directory'),
(9, 'image'),
(10, 'image/jpeg'),
(13, 'image/png'),
(18, 'image/svg+xml'),
(5, 'text'),
(17, 'text/css'),
(6, 'text/markdown'),
(19, 'text/plain'),
(11, 'video'),
(12, 'video/mp4');

-- --------------------------------------------------------

--
-- 表的结构 `oc_mounts`
--

CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `root_id` int(11) NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8_bin NOT NULL,
  `mount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_mounts`
--

INSERT INTO `oc_mounts` (`id`, `storage_id`, `root_id`, `user_id`, `mount_point`, `mount_id`) VALUES
(1, 2, 5, 'admin', '/admin/', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oc_notifications`
--

CREATE TABLE `oc_notifications` (
  `notification_id` int(11) NOT NULL,
  `app` varchar(32) COLLATE utf8_bin NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `object_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `subject` varchar(64) COLLATE utf8_bin NOT NULL,
  `subject_parameters` longtext COLLATE utf8_bin,
  `message` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `message_parameters` longtext COLLATE utf8_bin,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_notifications`
--

INSERT INTO `oc_notifications` (`notification_id`, `app`, `user`, `timestamp`, `object_type`, `object_id`, `subject`, `subject_parameters`, `message`, `message_parameters`, `link`, `icon`, `actions`) VALUES
(1, 'firstrunwizard', 'admin', 1590041100, 'app', 'groupfolders', 'apphint-groupfolders', '[]', '', '[]', '', '', '[]'),
(2, 'firstrunwizard', 'admin', 1590041100, 'app', 'social', 'apphint-social', '[]', '', '[]', '', '', '[]'),
(3, 'firstrunwizard', 'admin', 1590041100, 'app', 'notes', 'apphint-notes', '[]', '', '[]', '', '', '[]'),
(4, 'firstrunwizard', 'admin', 1590041100, 'app', 'deck', 'apphint-deck', '[]', '', '[]', '', '', '[]'),
(5, 'firstrunwizard', 'admin', 1590041100, 'app', 'tasks', 'apphint-tasks', '[]', '', '[]', '', '', '[]');

-- --------------------------------------------------------

--
-- 表的结构 `oc_notifications_pushtokens`
--

CREATE TABLE `oc_notifications_pushtokens` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL,
  `token` int(11) NOT NULL DEFAULT '0',
  `deviceidentifier` varchar(128) COLLATE utf8_bin NOT NULL,
  `devicepublickey` varchar(512) COLLATE utf8_bin NOT NULL,
  `devicepublickeyhash` varchar(128) COLLATE utf8_bin NOT NULL,
  `pushtokenhash` varchar(128) COLLATE utf8_bin NOT NULL,
  `proxyserver` varchar(256) COLLATE utf8_bin NOT NULL,
  `apptype` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_oauth2_access_tokens`
--

CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) COLLATE utf8_bin NOT NULL,
  `encrypted_token` varchar(786) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_oauth2_clients`
--

CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_bin NOT NULL,
  `client_identifier` varchar(64) COLLATE utf8_bin NOT NULL,
  `secret` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_preferences`
--

CREATE TABLE `oc_preferences` (
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_preferences`
--

INSERT INTO `oc_preferences` (`userid`, `appid`, `configkey`, `configvalue`) VALUES
('admin', 'activity', 'configured', 'yes'),
('admin', 'core', 'lang', 'en'),
('admin', 'firstrunwizard', 'apphint', '18'),
('admin', 'firstrunwizard', 'show', '0'),
('admin', 'login', 'lastLogin', '1590041041');

-- --------------------------------------------------------

--
-- 表的结构 `oc_privacy_admins`
--

CREATE TABLE `oc_privacy_admins` (
  `id` int(11) NOT NULL,
  `displayname` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_properties`
--

CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyvalue` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_schedulingobjects`
--

CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `principaluri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastmodified` int(10) UNSIGNED DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_share`
--

CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0',
  `share_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password_by_talk` tinyint(1) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8_bin,
  `hide_download` smallint(6) NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_share_external`
--

CREATE TABLE `oc_share_external` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '-1',
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `remote_id` int(11) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_storages`
--

CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL,
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_storages`
--

INSERT INTO `oc_storages` (`numeric_id`, `id`, `available`, `last_checked`) VALUES
(1, 'local::/var/www/html/data/', 1, NULL),
(2, 'home::admin', 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oc_systemtag`
--

CREATE TABLE `oc_systemtag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT '1',
  `editable` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_systemtag_group`
--

CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_systemtag_object_mapping`
--

CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `systemtagid` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_text_documents`
--

CREATE TABLE `oc_text_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `current_version` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_saved_version` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_saved_version_time` bigint(20) UNSIGNED NOT NULL,
  `last_saved_version_etag` varchar(64) COLLATE utf8_bin DEFAULT '',
  `base_version_etag` varchar(64) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_text_sessions`
--

CREATE TABLE `oc_text_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `guest_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `color` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_bin NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_text_steps`
--

CREATE TABLE `oc_text_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_bin NOT NULL,
  `version` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_trusted_servers`
--

CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL,
  `url` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'Url of trusted server',
  `url_hash` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'sha1 hash of the url without the protocol',
  `token` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'token used to exchange the shared secret',
  `shared_secret` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'shared secret used to authenticate',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT 'current status of the connection',
  `sync_token` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT 'cardDav sync token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_twofactor_backupcodes`
--

CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(128) COLLATE utf8_bin NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_twofactor_providers`
--

CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL,
  `enabled` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_twofactor_providers`
--

INSERT INTO `oc_twofactor_providers` (`provider_id`, `uid`, `enabled`) VALUES
('backup_codes', 'admin', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_users`
--

CREATE TABLE `oc_users` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid_lower` varchar(64) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_users`
--

INSERT INTO `oc_users` (`uid`, `displayname`, `password`, `uid_lower`) VALUES
('admin', NULL, '2|$argon2i$v=19$m=65536,t=4,p=1$OExtLzhaR1VoU3U1UkhQbg$r3KzwtaOBKAb1onLNYrXxDEw1XBJLO+60IwRoS+H/l0', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `oc_user_transfer_owner`
--

CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_user` varchar(64) COLLATE utf8_bin NOT NULL,
  `target_user` varchar(64) COLLATE utf8_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_vcategory`
--

CREATE TABLE `oc_vcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_vcategory_to_object`
--

CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `categoryid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_whats_new`
--

CREATE TABLE `oc_whats_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '11',
  `etag` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_check` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `t_admin_user`
--

CREATE TABLE `t_admin_user` (
  `id` varchar(36) NOT NULL COMMENT '用户登录ID',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(32) NOT NULL DEFAULT '' COMMENT '盐',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '邮箱',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0-未启用 1-启用',
  `create_time` varchar(20) NOT NULL DEFAULT '' COMMENT '创建时间（申请时间）',
  `update_time` varchar(20) NOT NULL DEFAULT '' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_admin_user`
--

INSERT INTO `t_admin_user` (`id`, `name`, `password`, `salt`, `phone`, `email`, `status`, `create_time`, `update_time`) VALUES
('11', 'string', 'string', 'string', 'string', 'string', 0, 'string', 'string'),
('111', '11', '11', '', '', '', 11, '', ''),
('12', '12', '12', '', '', '', 12, '', ''),
('2', '2', '2', '', '', '', 1, '', ''),
('3', '3', '', '', '', '', 1, '', ''),
('4', '4', '4', '', '', '', 1, '', ''),
('5', '5', '55', '', '', '', 5, '', ''),
('6', '6', '6', '', '', '', 6, '', ''),
('7', '7', '7', '', '', '', 7, '', ''),
('8', '8', '8', '', '', '', 8, '', ''),
('9', '9', '9', '', '', '', 9, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `t_answer`
--

CREATE TABLE `t_answer` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '回答的uuid',
  `user_name` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '回答用户的Name',
  `question_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的id',
  `question_title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的title',
  `content` blob COMMENT '问题的内容',
  `delete_flag` int(10) DEFAULT NULL COMMENT '是否删除',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `black_flag` int(10) DEFAULT NULL COMMENT '是否黑名单',
  `time` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '创建时间',
  `answer_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '回答的问题id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='回答时间';

--
-- 转存表中的数据 `t_answer`
--

INSERT INTO `t_answer` (`id`, `user_name`, `question_id`, `question_title`, `content`, `delete_flag`, `status`, `black_flag`, `time`, `answer_id`) VALUES
('08da99a0-4502-4c05-8f94-e96cb0461c5b', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x25334370253345353535353525334325324670253345, NULL, NULL, 0, '2020-05-24 22:49:31', NULL),
('09171029-8c39-4703-8cee-0e566b557ea2', 'aaaaaa123', '9ded3e2f-9002-4482-8ec2-c87eebd99c6c', '将进酒的文章是啥？', 0x253343702533452545342542442539432545382538302538352545462542432538432545362539442538452545372539392542442125334325324670253345, NULL, NULL, 0, '2020-05-18 22:03:29', NULL),
('0ae41849-fc0c-4e4e-b5df-ba414a38ec39', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x2533437025334525453625423525384225453825414625393525453525423125384625453825393425424425454625424325383125334325324670253345, NULL, NULL, 1, '2020-05-19 00:50:15', NULL),
('1ff3d842-6922-417b-9e0e-c2dc5d913c81', 'chao6667', '7b6cc698-b243-49ad-935d-49b3dde985c5', '如风的少年', 0x2533437025334525453625423525384225453825414625393525453525383025393225453525424125384625454625424325383125334325324670253345, NULL, NULL, NULL, '2020-05-18 21:29:25', NULL),
('22d9f2fe-e481-4f08-aa25-caf578135e74', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x2533437025334531313125334325324670253345, NULL, NULL, NULL, '2020-05-18 23:51:54', NULL),
('24ce9eab-acb9-4ad9-852f-171f82427129', 'chao6667', '7b6cc698-b243-49ad-935d-49b3dde985c5', '如风的少年', 0x253343702533456861686168616825334325324670253345, NULL, NULL, 0, '2020-05-20 23:42:15', NULL),
('2b9dd5e0-43b4-4ad2-b7bc-5bef6be534e8', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x2533437025334534343425334325324670253345, NULL, NULL, NULL, '2020-05-18 23:52:03', NULL),
('2cb8f4a2-d3ad-4e95-8090-c99b4969c168', 'yy01', '45065586-2b17-4b19-894e-d96a90674eb3', '全聚德烤鸭好吃吗？', 0x25334370253345254539254131254236254535254238253936254546254243253831253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e2532467433352532467374796c65253246696d61676573253246636f6d6d6f6e253246666163652532466578742532466e6f726d616c2532463630253246686f727365325f7468756d622e676966253232253230616c74253344253232253542254537254135253945254539254139254143253544253232253230646174612d772d652533442532323125323225334525334325324670253345, NULL, NULL, 0, '2020-05-18 22:40:04', NULL),
('2d9e9f23-5cd1-472e-bffd-431ebdeec3c3', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x2533437025334525453625423525384225453825414625393525453525423125384625453825393425424425453525394225394525453525413425384425334325324670253345, NULL, NULL, NULL, '2020-05-19 00:48:58', NULL),
('313d09cf-9e83-4b68-8b30-3ad53ba5bd0d', 'chao6667', '7b6cc698-b243-49ad-935d-49b3dde985c5', '如风的少年', 0x253343702533452545362538392539332545372541302542343025453525394225394525453525413425384425334325324670253345, NULL, NULL, NULL, '2020-05-18 03:41:48', NULL),
('3268c73c-5232-4540-b4aa-9654ababff92', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x25334370253345717171712533432532467025334525334370253345253343627225334525334325324670253345, NULL, NULL, 0, '2020-05-20 23:41:27', NULL),
('36f65fa1-7634-4b57-80bb-037836d73d98', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, 1, '2020-05-16 13:09:55', 'null'),
('372f893b-e9ac-401e-83f7-9d21da67d136', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246353025324670636d6f72656e5f687561697869616f5f6f72672e706e67253232253230616c74253344253232253542254535253944253846254537254143253931253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:03:09', NULL),
('42467781-8f27-42a9-8fa6-82af8cba659f', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x2533437025334531313125334325324670253345, NULL, NULL, 0, '2020-05-19 22:40:55', NULL),
('56bceecc-1fb8-4752-972b-2fea98c64e0d', 'aaaaaa123', '9ded3e2f-9002-4482-8ec2-c87eebd99c6c', '将进酒的文章是啥？', 0x253343702533452532366e6273702533422532302532366e6273702533422532302532366e62737025334225323025453525393025394225453425423825384425453825413725383125454625424325384325453925424225383425453625423225423325453425423925384225453625423025423425453525413425413925453425423825384125453625394425413525454625424325384325453525413525393425453625423525383125453525383825423025453625423525423725453425423825384425453525413425384425453525394225394525453325383025383225334362722533452545332538302538302545332538302538302545352539302539422545342542382538442545382541372538312545462542432538432545392541422539382545352541302538322545362539382538452545392539352539432545362538322542322545372539392542442545352538462539312545462542432538432545362539432539442545352541362538322545392539442539322545342542382539442545362539412541452545362538382539302545392539422541412545462542432538312533436272253345254533253830253830254533253830253830254534254241254241254537253934253946254535254245253937254536253834253846254539254131254242254535254230254244254536254143254132254546254243253843254538253845254142254534254244254246254539253837253931254536254138254244254537254139254241254535254146254239254536253943253838254533253830253832253343627225334525453325383025383025453325383025383025453525413425413925453725393425394625453625383825393125453625394425393025453525424625383525453625394325383925453725393425413825454625424325384325453525384425383325453925383725393125453625393525413325453525423025424425453825424625393825453525413425384425453625394425413525453325383025383225334362722533452545332538302538302545332538302538302545372538332542392545372542452538412545352541452542302545372538392539422545342542382539342545342542382542412545342542392539302545462542432538432545342542432539412545392541312542422545342542382538302545392541352541452545342542382538392545372539392542452545362539442541462545332538302538322533436272253345254533253830253830254533253830253830254535254232253931254535254134254142254535254144253930254546254243253843254534254238254239254534254238253938254537253934253946254546254243253843254535254230253836254538254246253942254539253835253932254546254243253843254536253944254146254538253845254142254535253831253943254533253830253832253343627225334525453325383025383025453325383025383025453425423825384525453525393025394225453625414425384325453425423825383025453625394225423225454625424325384325453825414625423725453525393025394225453425423825424125453625383825393125453525383025424525453825383025423325453525393025414325453325383025383225334362722533452545332538302538302545332538302538302545392539322539462545392542432539332545392541362539342545372538452538392545342542382538442545382542362542332545382542342542352545462542432538432545342542442538362545362538342542462545392539352542462545392538362538392545342542382538442545352541342538442545392538362539322545332538302538322533436272253345254533253830253830254533253830253830254535253846254134254536253944254135254535253943254133254538254234254134254537253941253836254535254146253832254535254146253945254546254243253843254536253833253946254536253943253839254539254135254145254538253830253835254537253935253939254535253835254236254535253930253844254533253830253832253343627225334525453325383025383025453325383025383025453925393925383825453725384525384225453625393825393425453625393725423625453525414525423425453525423925423325453425423925393025454625424325384325453625393625393725453925383525393225453525384425383125453525384425383325453625383125413325453625414325413225453825423025393125453325383025383225334362722533452545332538302538302545332538302538302545342542382542422545342542412542412545342542442539352545342542382542412545382541382538302545352542302539312545392539322542312545462542432538432545352542452538342545392541312542422545362542322542442545352538462539362545352541462542392545352539302539422545392538352538432545332538302538322533436272253345254533253830253830254533253830253830254534254241253934254538253841254231254539254139254143254533253830253831254535253844253833254539253837253931254538254133253938254546254243253843254535253931254243254535253834254246254535254230253836254535253837254241254536253844254132254537254245253845254539253835253932254546254243253843254534254238253845254535254230253934254535253930253843254539253934253830254534254238253837254535253846254134254536253834253831254546254243253831253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:03:40', NULL),
('58b2ae3f-26bc-4c67-88ac-dc7dc6c597bf', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345313125334325324670253345, NULL, NULL, NULL, '2020-05-19 00:47:28', NULL),
('5b8643a6-7afb-4490-961a-ab9737a28c98', 'yy01', '45065586-2b17-4b19-894e-d96a90674eb3', '全聚德烤鸭好吃吗？', 0x2533437025334532323225334325324670253345, NULL, NULL, 1, '2020-05-18 22:59:26', NULL),
('5d337b6d-09f5-4184-8562-bb8552c29723', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:09:55', NULL),
('62ac61fa-1499-42c7-ab50-ef7608655049', 'chao313', 'ecdaaa8a-aaf2-4b9c-ba72-86437ba5ac20', '生与死，轮回不止！', 0x2533437025334525453625423525384225453825414625393525453525383825413025453925393925413425453525394225394525453525413425384425334325324670253345, NULL, NULL, NULL, '2020-05-17 13:14:45', NULL),
('6652ba89-4d83-42de-8c0c-2a2bf24e1d01', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x2533437025334531313125334325324670253345, NULL, NULL, NULL, '2020-05-19 00:29:49', NULL),
('79356084-b83a-42e1-91ba-9de8c4d98cbc', 'aaaaaa123', 'e316b08f-c1d2-449a-8322-7e70de08ddd2', 'Linux电脑如何定时启动', 0x253343702533453131313125334325324670253345, NULL, NULL, NULL, '2020-05-16 13:37:18', NULL),
('8ba3ff87-462a-4827-bd37-a166f4205d40', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x253343702533453125334325324670253345, NULL, NULL, NULL, '2020-05-18 23:38:53', NULL),
('8ebb6392-c222-4c8e-a383-f386447072fe', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345676767672533432532467025334525334370253345253343627225334525334325324670253345, NULL, NULL, 0, '2020-05-19 22:41:03', NULL),
('903570ea-b973-42bb-b0e8-59080c39aacc', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x2533437025334536363625334325324670253345, NULL, NULL, NULL, '2020-05-18 23:52:16', NULL),
('90598967-8407-4207-8dfe-0561b43cbbd0', 'aaaaaa123', 'e316b08f-c1d2-449a-8322-7e70de08ddd2', 'Linux电脑如何定时启动', 0x253343702533453131313125334325324670253345, NULL, NULL, NULL, '2020-05-16 13:37:21', NULL),
('9684c491-8824-4dee-9648-baecfb801a74', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:09:55', NULL),
('974aae8a-22b7-4d67-aef8-9545980dcc0d', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:09:55', NULL),
('a5637920-ef6f-4bc6-8058-998564cd45b6', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:09:33', NULL),
('a6c2d1c2-c8cc-46f0-97fe-77da54213b10', 'yy01', '45065586-2b17-4b19-894e-d96a90674eb3', '全聚德烤鸭好吃吗？', 0x2533437025334521212125334325324670253345, NULL, NULL, 0, '2020-05-18 22:56:10', NULL),
('af07079d-a78f-42fc-b736-b84cdfa81fc9', 'chao313', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', '岁月如歌', 0x2533437025334531313125334325324670253345, NULL, NULL, NULL, '2020-05-17 22:00:37', NULL),
('afc01c7c-b8b3-4d02-8000-e5e5d54fc379', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x2533437025334531313125334325324670253345, NULL, NULL, NULL, '2020-05-18 23:50:37', NULL),
('d2884061-236b-49a4-82eb-4be236c8f8ba', 'aaaaaa123', 'e316b08f-c1d2-449a-8322-7e70de08ddd2', 'Linux电脑如何定时启动', 0x253343702533453131313125334325324670253345, NULL, NULL, NULL, '2020-05-16 13:37:18', NULL),
('dd19ec01-8d36-4ce0-8867-66c1ca9caa32', 'chao313', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345313131313131313131313125334325324670253345, NULL, NULL, NULL, '2020-05-17 18:08:45', NULL),
('e29a993c-d711-48da-87bf-40a26dfdac45', 'chao6667', 'b68f0a10-b8c6-48f6-8fad-ccc31867300d', '你猜我是谁', 0x2533437025334531313125334325324670253345, NULL, NULL, 0, '2020-05-19 22:38:47', NULL),
('e2c29643-570c-457a-b2f2-4ecbea133e5e', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, NULL, '2020-05-16 13:10:00', NULL),
('ecd272b2-b2d8-4c62-b6db-1a8cd69fb176', 'chao6667', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', '武汉大学生什么时候可以返校', 0x253343702533452545362538382539312545342542422541432545352541442541362545362541302541312545362539432538392545372539412538342545352541442541362545392539392541322545392538302539412545372539462541352545362539432541432545352541442541362545362539432539462545342542382538442545352542432538302545352541442541362545342542412538362545462542432538432545352542302538362545352539432541383925453625394325383825453525424325383025453525414425413625334325324670253345, NULL, NULL, 0, '2020-05-26 11:30:59', NULL),
('ee63712e-f618-4b0c-892c-e88d8365fbc0', 'chao6667', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', '武汉大学生什么时候可以返校', 0x2533437025334525453725414425383925453525424525383525453625413025413125453625393625423925453725394125383425453925383025394125453725394625413525453525393025413725334325324670253345, NULL, NULL, 0, '2020-05-26 11:32:11', NULL),
('f20992ef-2be4-4c36-81d5-cda798b49919', 'chao313', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', '武汉大学生什么时候可以返校', 0x25334370253345254535253846253931254539253830253941254537253946254135254534254241253836254546254243253843362545362539432538383825453525384625423725453525424325383025453525413725384225453625414625393525453425423825394125453525423925423425453725424125413725453525414425413625453625413025413125453525384625414625453425424225413525453525414525383925453625384525393225453525414425413625453725393425394625453925393925383625453725424225414425453825424625393425453625413025413125453425424125383625334325324670253345, NULL, NULL, 0, '2020-05-26 11:29:10', NULL),
('f23b672e-a169-4111-88c9-f58752bd5157', 'aaaaaa123', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', 0x25334370253345253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e25324674342532466170707374796c6525324665787072657373696f6e2532466578742532466e6f726d616c253246343025324670636d6f72656e5f7469616e5f6f72672e706e67253232253230616c74253344253232253542254538253838253934254535254231253846253544253232253230646174612d772d6525334425323231253232253345253343627225334525334325324670253345, NULL, NULL, 0, '2020-05-16 13:09:56', NULL),
('feb709e9-a9a2-4906-9b84-5149b72d30b2', 'aaaaaa123', 'e316b08f-c1d2-449a-8322-7e70de08ddd2', 'Linux电脑如何定时启动', 0x253343702533453131313125334325324670253345, NULL, NULL, NULL, '2020-05-16 13:37:18', NULL);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `t_answer_max_time`
-- （参见下面的实际视图）
--
CREATE TABLE `t_answer_max_time` (
`last_answer_time` varchar(20)
,`question_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 表的结构 `t_answer_second`
--

CREATE TABLE `t_answer_second` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '回答的uuid',
  `user_name` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '回答用户的Name',
  `question_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的id',
  `question_title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的title',
  `content` blob COMMENT '问题的内容',
  `delete_flag` int(10) DEFAULT NULL COMMENT '是否删除',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `black_flag` int(10) DEFAULT NULL COMMENT '是否黑名单',
  `time` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '创建时间',
  `answer_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '回答的问题id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='回答时间';

--
-- 转存表中的数据 `t_answer_second`
--

INSERT INTO `t_answer_second` (`id`, `user_name`, `question_id`, `question_title`, `content`, `delete_flag`, `status`, `black_flag`, `time`, `answer_id`) VALUES
('3daf1112-82c6-491c-80c1-aa13fb247f4a', NULL, '7b6cc698-b243-49ad-935d-49b3dde985c5', NULL, 0x313131, NULL, NULL, NULL, '2020-05-18 21:27:40', '313d09cf-9e83-4b68-8b30-3ad53ba5bd0d'),
('410907a2-3a4d-49c9-aedf-1ec1eaf5a890', 'Y2hhbzY2Ng==', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', NULL, 0x254537254143254143254534254238253830254536254143254131254535253942253945254535254134253844254546254243253831, NULL, NULL, NULL, '2020-05-18 03:02:40', 'af07079d-a78f-42fc-b736-b84cdfa81fc9'),
('46d82cf8-78bb-4b90-81d4-2216a37bb8bc', NULL, '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x313131, NULL, NULL, NULL, '2020-05-17 21:59:39', '372f893b-e9ac-401e-83f7-9d21da67d136'),
('500c37e6-6f73-4b57-8610-145c1f5eed42', 'yy01', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', NULL, 0x254535253933254141254539253837253843254537253941253834254539253830253941254537253946254135254546254243253946, NULL, NULL, 0, '2020-05-26 11:33:50', 'f20992ef-2be4-4c36-81d5-cda798b49919'),
('57fa4f27-cb9c-44a9-8dcc-9b493fba7fb3', 'yy01', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', NULL, 0x254537253942254234254536253845254135254534254238253844254535254243253830254535254144254136254534254241253836254546254243253946254538254246253939254534254239253838254537253838254244, NULL, NULL, 0, '2020-05-26 11:33:12', 'ecd272b2-b2d8-4c62-b6db-1a8cd69fb176'),
('5cc5e8db-8351-4156-a68e-1cb25146d2fb', 'chao313', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x313131, NULL, NULL, NULL, '2020-05-17 18:56:37', '372f893b-e9ac-401e-83f7-9d21da67d136'),
('5f6e59e2-4c64-46a0-8a5b-a78f989c279b', 'chao313', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x313131, NULL, NULL, NULL, '2020-05-17 18:56:49', '36f65fa1-7634-4b57-80bb-037836d73d98'),
('609d028f-cd75-4e9c-bd29-72b86feca8c3', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x25453625423525384225453825414625393525453425424125384325453725424125413725453525423125384625453825393425424421, NULL, NULL, 0, '2020-05-19 00:50:29', '0ae41849-fc0c-4e4e-b5df-ba414a38ec39'),
('7da27560-1b45-4508-9f2c-c3309ae855e5', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x254535253933253838254535253933253838254535253933253838254535253933253838, NULL, NULL, NULL, '2020-05-18 23:17:05', '36f65fa1-7634-4b57-80bb-037836d73d98'),
('871b9912-6c31-4734-861d-8a6c0caff3bc', 'chao6667', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x313131, NULL, NULL, NULL, '2020-05-19 00:29:59', '372f893b-e9ac-401e-83f7-9d21da67d136'),
('94a7101f-d137-44c3-8409-e8c2a2f93fd9', 'chao313', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', NULL, 0x254537253943253946254537253941253834254535253930253937254546254243253946254535254134254141254535254135254244254534254241253836253230, NULL, NULL, 0, '2020-05-26 11:29:37', 'f20992ef-2be4-4c36-81d5-cda798b49919'),
('990d450d-4bde-4104-a751-16a78da0730d', 'chao313', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x31313131, NULL, NULL, NULL, '2020-05-17 18:56:05', '36f65fa1-7634-4b57-80bb-037836d73d98'),
('afed8fa9-8fbc-4f6e-8960-554306df0398', 'yy01', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', NULL, 0x254536253838253931254534254242254143254534254238253830254537253942254234254536254232254131254539253830253941254537253946254135, NULL, NULL, 0, '2020-05-26 11:33:30', 'ee63712e-f618-4b0c-892c-e88d8365fbc0'),
('bee1015f-9579-4b05-95f7-1c57448c67c1', 'chao6667', 'abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', NULL, 0x254535254136253838254535253931253830254546254243253843254537253942254234254536253845254135254536253943254143254535254144254136254536253943253946254534254238253844254535254243253830254535254144254136254535253930253937254546254243253946, NULL, NULL, 0, '2020-05-26 11:31:25', 'ecd272b2-b2d8-4c62-b6db-1a8cd69fb176'),
('d6c2f5de-cd3c-472a-a760-01ad79e81e97', NULL, '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', NULL, 0x313131, NULL, NULL, NULL, '2020-05-17 21:57:44', '5d337b6d-09f5-4184-8562-bb8552c29723'),
('e8c8af55-f680-4332-829e-ccbfa1b8edd6', 'chao313', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', NULL, 0x254535253933253838254535253933253838254535253933253838254630253946253938253836, NULL, NULL, NULL, '2020-05-17 22:00:17', 'aa288bf6-d161-40a4-b15f-670af6612133'),
('f5412358-de46-46dc-8ad3-5ea5e61dc175', 'chao313', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', NULL, 0x254535253836253939254539253934253939254535253935254136, NULL, NULL, NULL, '2020-05-17 22:00:02', 'aa288bf6-d161-40a4-b15f-670af6612133');

-- --------------------------------------------------------

--
-- 替换视图以便查看 `t_answer_second_user`
-- （参见下面的实际视图）
--
CREATE TABLE `t_answer_second_user` (
`user_name` varchar(36)
,`question_id` varchar(36)
,`question_title` varchar(200)
,`answer_content` blob
,`delete_flag` int(10)
,`id` varchar(36)
,`time` varchar(20)
,`status` int(2)
,`approve_status` tinyint(4)
,`user_delete_flag` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count` int(10)
,`user_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 表的结构 `t_follow_person`
--

CREATE TABLE `t_follow_person` (
  `user_name_follow` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '被关注的人',
  `user_name` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '关注的人',
  `cteate_time` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户关注';

--
-- 转存表中的数据 `t_follow_person`
--

INSERT INTO `t_follow_person` (`user_name_follow`, `user_name`, `cteate_time`) VALUES
('chao6667', 'aaaaaa123', '2020-05-21 01:20:55'),
('yy01', 'aaaaaa123', '2020-05-21 00:21:14');

-- --------------------------------------------------------

--
-- 表的结构 `t_follow_question`
--

CREATE TABLE `t_follow_question` (
  `question_id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '问题的id',
  `user_name` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '关注的人',
  `cteate_time` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题关注';

--
-- 转存表中的数据 `t_follow_question`
--

INSERT INTO `t_follow_question` (`question_id`, `user_name`, `cteate_time`) VALUES
('4daf1e56-8ad4-4148-be4e-7a4c0c963c07', 'Y2hhbzY2Ng==', '2020-05-18 03:02:10'),
('50b1af4b-6557-4be0-ac9e-ea9f163bdac4', 'yy01', '2020-06-03 16:40:39'),
('7b6cc698-b243-49ad-935d-49b3dde985c5', 'Y2hhbzY2Ng==', '2020-05-18 03:02:03'),
('7b6cc698-b243-49ad-935d-49b3dde985c5', 'chao6667', '2020-05-18 03:41:52'),
('82272ec0-7361-4735-8e29-244e4321878d', 'chao6667', '2020-05-20 23:43:27'),
('9ded3e2f-9002-4482-8ec2-c87eebd99c6c', 'aaaaaa123', '2020-05-16 15:26:03'),
('abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', 'chao6667', '2020-05-26 11:30:19'),
('b68f0a10-b8c6-48f6-8fad-ccc31867300d', 'chao6667', '2020-05-20 23:40:25'),
('e316b08f-c1d2-449a-8322-7e70de08ddd2', 'aaaaaa123', '2020-05-16 15:25:55'),
('ecdaaa8a-aaf2-4b9c-ba72-86437ba5ac20', 'aaaaaa123', '2020-05-16 15:26:00');

-- --------------------------------------------------------

--
-- 表的结构 `t_questions`
--

CREATE TABLE `t_questions` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '问题的id',
  `user_name` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的发布者name',
  `title` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的标题',
  `content` blob COMMENT '问题的内容',
  `tag` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '问题的类别',
  `is_save` int(10) DEFAULT NULL COMMENT '问题是否保存 0草稿, 1 发布',
  `status` int(10) DEFAULT '0' COMMENT '问题是否终结 0没有终结,1，已终结',
  `delete_flag` int(10) DEFAULT '0' COMMENT '问题是否删除,0未,1是',
  `black_flag` int(11) DEFAULT '0' COMMENT '是否被屏蔽,0未,1是',
  `create_time` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '问题创建时间',
  `update_time` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '问题更新时间',
  `pv_count` int(10) DEFAULT '0' COMMENT '问题的浏览量',
  `is_top` int(10) DEFAULT NULL COMMENT '是否置顶'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `t_questions`
--

INSERT INTO `t_questions` (`id`, `user_name`, `title`, `content`, `tag`, `is_save`, `status`, `delete_flag`, `black_flag`, `create_time`, `update_time`, `pv_count`, `is_top`) VALUES
('03c24e85-e51b-4c5c-8ff1-3929d1176aa5', 'yy01', 'Java简单还是GO简单？', 0x253343702533454a617661254537254145253830254535253844253935254538254246253938254536253938254146474f25453725414525383025453525384425393525454625424325394625334325324670253345, '计算机', 1, 0, NULL, 0, '2020-05-18 22:36:43', '2020-05-18 22:36:43', NULL, NULL),
('2e55e44c-6c85-46f1-8205-d980f413bcf6', 'chao6667', 'Java简单还是GO简单？', 0x25334370253345686168616825334325324670253345, '计算机', 1, 0, NULL, 1, '2020-05-20 23:43:02', '2020-05-20 23:43:02', NULL, NULL),
('33070467-f887-4c0d-804a-44db242262c1', 'chao6667', 'Java简单还是GO简单？', 0x25334370253345686168616825334325324670253345, NULL, 1, 0, NULL, 0, '2020-05-20 23:42:38', '2020-05-20 23:42:38', NULL, NULL),
('45065586-2b17-4b19-894e-d96a90674eb3', 'yy01', '全聚德烤鸭好吃吗？', 0x2533437025334525453625383325423325453525393025383325453725383325413425453925423825414425454625424325384325453525393325383825453525393325383825453525393325383825453525393325383825334325324670253345, '娱乐休闲', 1, 0, NULL, 0, '2020-05-18 22:37:58', '2020-05-18 22:37:58', NULL, NULL),
('4daf1e56-8ad4-4148-be4e-7a4c0c963c07', 'chao313', '岁月如歌', 0x2533437025334525453525423225383125453625394325383825453525413625383225453625414425384325324325453625414425384325453425424225413525453525393225384625453525424625393725454625424325383125454625424325383125334325324670253345, '情感', 1, 0, NULL, 0, '2020-05-16 16:27:08', '2020-05-17 12:58:47', NULL, NULL),
('50b1af4b-6557-4be0-ac9e-ea9f163bdac4', 'aaaaaa123', '爱与恨，纠缠不休！', 0x25334370253345254537253838254231254534254238253845254536253831254138254546254243253843254537254241254130254537254243254130254534254238253844254534254243253931254546254243253831253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e2532467433352532467374796c65253246696d61676573253246636f6d6d6f6e253246666163652532466578742532466e6f726d616c25324637612532467368656e73686f755f7468756d622e676966253232253230616c74253344253232253542254538253844253839254536254233254135254539254139254143253544253232253230646174612d772d652533442532323125323225334525334325324670253345, '情感', 1, 1, NULL, 0, '2020-05-14 22:20:52', '2020-05-14 22:20:52', NULL, NULL),
('5bd64443-e29c-484e-84b1-61ee2a29e56a', 'yy01', 'Java简单还是Python简单？', 0x2533437025334525453625383325423325453825383725414125453525414425413625454625424325384325453425424425383625453425423825384425453725394625413525453925383125393325453525414425413625453525393325414125453425423825414125454625424325394625334325324670253345, '计算机', 1, 1, NULL, 1, '2020-05-18 22:30:05', '2020-05-18 22:30:05', NULL, NULL),
('7b6cc698-b243-49ad-935d-49b3dde985c5', 'chao6667', '如风的少年', 0x2533437025334525453525413625383225453925413325384525453725394125383425453525423025393125453525423925423425324325453825383725414125453525394325413825453525413625383225453925413325384525454625424325383125334325324670253345, '情感', 1, 0, NULL, 0, '2020-05-18 01:45:44', '2020-05-18 01:45:44', NULL, NULL),
('82272ec0-7361-4735-8e29-244e4321878d', 'chao6667', 'ninini', 0x253343702533456e696e6925334325324670253345, '情感', 1, 1, NULL, 0, '2020-05-20 23:43:24', '2020-05-20 23:43:24', NULL, NULL),
('828fa617-36e9-4f9a-80b6-155a06c0bce3', 'yy01', '明天下雨吗？', 0x2533437025334525453625393825384525453525413425413925453625383325423325453525383725424125453525384525424225454625424325384325453425423825384425453725394625413525453925383125393325453425423825384225453425423825384425453425423825384225453925394225413825454625424325394625453825413625383125453425423825384425453825413625383125453525423825413625453425424325394525334325324670253345, '情感', 1, 0, NULL, 0, '2020-05-18 22:26:04', '2020-05-18 22:26:04', NULL, NULL),
('88077e09-fb2f-4fd0-87d2-05adbe5b4f9b', 'yy01', '冰箱什么牌子比较好', 0x2533437025334525453525413625383225453925413225393825453625383925383025453825424625423025334325324670253345, '家电数码', 1, 0, NULL, 1, '2020-05-18 23:10:10', '2020-05-18 23:10:10', NULL, NULL),
('9ded3e2f-9002-4482-8ec2-c87eebd99c6c', 'aaaaaa123', '将进酒的文章是啥？', 0x2533437025334525453525423025383625453825424625394225453925383525393225453725394125383425453625393625383725453725414225413025453625393825414625453525393525413525454625424325394625323025453425424425394325453825383025383525453625393825414625453525393525413525334625334325324670253345, '文学', 1, 0, NULL, 0, '2020-05-14 22:20:52', '2020-05-18 22:02:04', NULL, NULL),
('a7553a23-b4f6-465d-934e-a50c742eb088', 'yy01', 'Java简单还是c简单？', 0x253343702533454a61766125453725414525383025453525384425393525453825424625393825453625393825414663254537254145253830254535253844253935254546254243253946253343696d6725323073726325334425323268747470253341253246253246696d672e742e73696e616a732e636e2532467433352532467374796c65253246696d61676573253246636f6d6d6f6e253246666163652532466578742532466e6f726d616c2532463630253246686f727365325f7468756d622e676966253232253230616c74253344253232253542254537254135253945254539254139254143253544253232253230646174612d772d652533442532323125323225334525334325324670253345, NULL, 1, 0, NULL, 0, '2020-05-18 22:33:41', '2020-05-18 22:33:41', NULL, NULL),
('abedda9a-5b6a-4c04-9b6f-eecc35ce92c8', 'yy01', '武汉大学生什么时候可以返校', 0x25334370253345253343627225334525334325324670253345, '情感', 1, 0, NULL, 0, '2020-05-26 11:27:31', '2020-05-26 11:27:31', NULL, NULL),
('b68f0a10-b8c6-48f6-8fad-ccc31867300d', 'chao6667', '你猜我是谁', 0x2533437025334525453525393325383825453525393325383825453525393325383825453525393325383825334325324670253345, '情感', 1, 0, NULL, 0, '2020-05-18 23:37:59', '2020-05-18 23:37:59', NULL, NULL),
('bf0bf1a7-b7cb-4cdb-b0b4-a14c04c197c5', 'yy01', 'Java简单还是GO简单？', 0x253343702533454a617661254537254145253830254535253844253935254538254246253938254536253938254146474f25453725414525383025453525384425393525454625424325394625334325324670253345, '计算机', 1, 0, NULL, 1, '2020-05-18 22:34:54', '2020-05-18 22:34:54', NULL, NULL),
('e316b08f-c1d2-449a-8322-7e70de08ddd2', 'aaaaaa123', 'Linux电脑如何定时启动', 0x25334370253345253343696d67253230737263253344253232687474702533412532462532463132372e302e302e312533413830303025324664656d6f6d617374657225324675706c6f616425324632303230303531345f3034303333365f575832303230303531342d30343030353925343032782e706e672532322532307374796c652533442532326d61782d7769647468253341353025323525334225334225323077696474682533416175746f25323021696d706f7274616e742533422532306865696768742533416175746f25323021696d706f7274616e74253232253345253343627225334525334325324670253345, '计算机', 1, 0, NULL, 0, '2020-05-14 22:20:52', '2020-05-14 22:20:52', NULL, NULL),
('e8027ecb-960d-491f-bb82-ee61fb21b78b', '123lwx', '7月雅思会不会取消', 0x2533437025334525453525383525414425453625394325383825453525423725423225453725413125414525453525414525394125453525384625393625453625423625383825454625424325384325453425423825383325453625394325383825453425424325394125453525384625393625453625423625383825453525393025393725454625424325394625334325324670253345, '娱乐休闲', 1, 1, NULL, 0, '2020-05-29 17:19:30', '2020-05-29 17:19:30', NULL, NULL),
('ecdaaa8a-aaf2-4b9c-ba72-86437ba5ac20', 'aaaaaa123', '生与死，轮回不止！', 0x25334370253345254537253934253946254534254238253845254536254144254242254546254243253843254538254244254145254535253942253945254534254238253844254536254144254132254546254243253831253343627225334525334325324670253345, '情感', 1, 0, NULL, NULL, '2020-05-14 22:20:14', '2020-05-14 22:20:14', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_question_tag`
--

CREATE TABLE `t_question_tag` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT 'uuid',
  `question_id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '问题的id',
  `tag_id` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '问题标签的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='关联问题和tag';

-- --------------------------------------------------------

--
-- 表的结构 `t_report_answer`
--

CREATE TABLE `t_report_answer` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `answer_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报answer',
  `reason` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报理由'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='回复举报';

--
-- 转存表中的数据 `t_report_answer`
--

INSERT INTO `t_report_answer` (`id`, `answer_id`, `reason`) VALUES
('1a62cf81-bcf0-406d-8f37-cdf51f6eb07a', '36f65fa1-7634-4b57-80bb-037836d73d98', '这个敏感'),
('500223d5-ebea-450b-8543-4f8594aa4992', '36f65fa1-7634-4b57-80bb-037836d73d98', '这个不对'),
('c5e5206c-b5ec-48d6-b756-9b08563a1cb2', '6652ba89-4d83-42de-8c0c-2a2bf24e1d01', '图片色情！'),
('d32e861a-683b-432d-8322-a182afe6f050', '6652ba89-4d83-42de-8c0c-2a2bf24e1d01', '回复捡漏！');

-- --------------------------------------------------------

--
-- 表的结构 `t_report_question`
--

CREATE TABLE `t_report_question` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `question_id` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报问题id',
  `question_name` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报问题名称',
  `reason` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报理由'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='问题举报';

--
-- 转存表中的数据 `t_report_question`
--

INSERT INTO `t_report_question` (`id`, `question_id`, `question_name`, `reason`) VALUES
('0d788403-24f9-4f06-b882-a4e2515fa555', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', '岁月如歌', '存储'),
('375fe43a-9888-472a-82ea-e88e39ace811', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', NULL, NULL),
('a0887bd4-1fee-4d5d-8c86-71f66a2bcae6', '50b1af4b-6557-4be0-ac9e-ea9f163bdac4', '爱与恨，纠缠不休！', '涉及'),
('dfee4011-ff71-4567-87cd-4820af1c4816', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', '岁月如歌', '1111'),
('e590842f-2fd7-4840-b94a-c0323057aaf2', '4daf1e56-8ad4-4148-be4e-7a4c0c963c07', '岁月如歌', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_report_user`
--

CREATE TABLE `t_report_user` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报用户名称',
  `reason` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '举报理由'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户举报';

--
-- 转存表中的数据 `t_report_user`
--

INSERT INTO `t_report_user` (`id`, `user_name`, `reason`) VALUES
('2a7ce723-47eb-4dca-9b21-2ba6748f38bd', 'chao313', '名字猥琐');

-- --------------------------------------------------------

--
-- 表的结构 `t_system_param`
--

CREATE TABLE `t_system_param` (
  `param_id` varchar(64) NOT NULL COMMENT '参数id',
  `param_value` varchar(255) NOT NULL COMMENT '参数值',
  `param_desc` varchar(255) DEFAULT NULL COMMENT '参数描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统参数表';

--
-- 转存表中的数据 `t_system_param`
--

INSERT INTO `t_system_param` (`param_id`, `param_value`, `param_desc`) VALUES
('name', 'value', '测试');

-- --------------------------------------------------------

--
-- 表的结构 `t_tag`
--

CREATE TABLE `t_tag` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `tag` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '标签本身'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `t_tag`
--

INSERT INTO `t_tag` (`id`, `tag`) VALUES
('1', '计算机'),
('2', '情感'),
('3', '文学'),
('4', '娱乐休闲'),
('6', '家电数码'),
('7', '文化历史'),
('8', '天文地理');

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE `t_user` (
  `id` varchar(36) NOT NULL COMMENT '用户登录ID',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(32) DEFAULT '' COMMENT '盐',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `email` varchar(32) DEFAULT '' COMMENT '邮箱',
  `status` int(2) DEFAULT '0' COMMENT '0-未启用 1-启用',
  `create_time` varchar(20) DEFAULT '' COMMENT '创建时间（申请时间）',
  `update_time` varchar(20) DEFAULT '',
  `delete_flag` tinyint(4) DEFAULT '0' COMMENT '删除标志: 0未删除，1已删除',
  `approve_status` tinyint(4) DEFAULT '0' COMMENT '0: 待审批 1：通过 ：2 拒绝',
  `black_list_user` int(2) DEFAULT '0' COMMENT '是否是黑名单 1 -> 是 0 -> 不是',
  `logo` varchar(250) DEFAULT '' COMMENT '用户头像',
  `pv_count` int(10) DEFAULT '0' COMMENT '用户主页的浏览量',
  `signature` varchar(300) DEFAULT NULL COMMENT '个性签名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`id`, `name`, `password`, `salt`, `phone`, `email`, `status`, `create_time`, `update_time`, `delete_flag`, `approve_status`, `black_list_user`, `logo`, `pv_count`, `signature`) VALUES
('8480be42-00fd-4eed-833f-79fef7eef12e', '123lwx', 'MTIzNDU2', NULL, NULL, '1371282855@qq.com', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
('d3d9aa3c-c279-4d44-8b5a-66262cb6e4c7', 'aaaaaa123', 'Y2hhbzY2Ng==', NULL, NULL, NULL, NULL, NULL, '2020-05-24 22:52:14', NULL, 1, 0, 'upload/20200524_225213_hpic1886.jpg', NULL, '哈哈哈哈'),
('8782e6d6-f272-4d32-8b6d-d04925d14e34', 'chao313', 'Y2hhbzY2Ng==', NULL, NULL, NULL, NULL, NULL, '2020-05-24 22:52:48', NULL, 2, 0, 'upload/20200524_225247_search.png', NULL, NULL),
('2209b5a8-c76e-453a-8347-dd43cd4f7b2f', 'chao6667', 'Y2hhbzY2Ng==', '', '15618622161', 'm18888106873@163.com', NULL, '', '2020-05-24 22:50:10', NULL, 1, 0, 'upload/20200524_224946_bg.jpeg', NULL, '我是一只小小鸟'),
('99849a75-304e-47e1-8d01-33006ad9d68a', 'yy01', 'MTIzNDU2', '', '', '2421634224@qq.com', NULL, '', '2020-05-24 22:51:28', NULL, 1, 0, 'upload/20200524_225127_7.jpeg', NULL, '哈哈哈哈'),
('c56fffcd-7c6d-4dd8-bf8b-bcb5675f3040', 'zhangrui', 'Y2hhbzY2Ng==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'upload/20200518_010152_WechatIMG37.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_answer_second_user`
-- （参见下面的实际视图）
--
CREATE TABLE `v_answer_second_user` (
`user_name` varchar(36)
,`question_id` varchar(36)
,`question_title` varchar(200)
,`answer_content` blob
,`delete_flag` int(10)
,`black_flag` int(10)
,`id` varchar(36)
,`time` varchar(20)
,`answer_id` varchar(36)
,`status` int(2)
,`approve_status` tinyint(4)
,`user_delete_flag` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count` int(10)
,`user_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_answer_user`
-- （参见下面的实际视图）
--
CREATE TABLE `v_answer_user` (
`user_name` varchar(36)
,`question_id` varchar(36)
,`question_title` varchar(200)
,`answer_content` blob
,`delete_flag` int(10)
,`black_flag` int(10)
,`time` varchar(20)
,`id` varchar(36)
,`status` int(2)
,`approve_status` tinyint(4)
,`user_delete_flag` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count` int(10)
,`user_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_follow_person_user`
-- （参见下面的实际视图）
--
CREATE TABLE `v_follow_person_user` (
`user_name_follow` varchar(36)
,`user_name` varchar(36)
,`cteate_time` varchar(20)
,`id` varchar(36)
,`name` varchar(10)
,`email` varchar(32)
,`signature` varchar(300)
,`logo` varchar(250)
,`black_list_user` int(2)
,`approve_status` tinyint(4)
,`status` int(2)
,`phone` varchar(11)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_hot_question`
-- （参见下面的实际视图）
--
CREATE TABLE `v_hot_question` (
`id` varchar(36)
,`user_name` varchar(36)
,`title` varchar(30)
,`content` blob
,`is_top` int(10)
,`pv_count` int(10)
,`update_time` varchar(20)
,`create_time` varchar(20)
,`black_flag` int(11)
,`delete_flag` int(10)
,`status` int(10)
,`is_save` int(10)
,`tag` varchar(20)
,`follow_sum` bigint(21)
,`answer_sum` bigint(21)
,`last_answer_time` varchar(20)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_question_answer_sum`
-- （参见下面的实际视图）
--
CREATE TABLE `v_question_answer_sum` (
`answer_sum` bigint(21)
,`question_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_question_follow_sum`
-- （参见下面的实际视图）
--
CREATE TABLE `v_question_follow_sum` (
`follow_sum` bigint(21)
,`question_id` varchar(36)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_question_user`
-- （参见下面的实际视图）
--
CREATE TABLE `v_question_user` (
`id` varchar(36)
,`user_name` varchar(36)
,`title` varchar(30)
,`content` blob
,`is_top` int(10)
,`pv_count` int(10)
,`update_time` varchar(20)
,`create_time` varchar(20)
,`black_flag` int(11)
,`delete_flag` int(10)
,`status` int(10)
,`is_save` int(10)
,`tag` varchar(20)
,`id_0` varchar(36)
,`name` varchar(10)
,`status_0` int(2)
,`delete_flag_0` tinyint(4)
,`approve_status` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count_0` int(10)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_question_user_answer_follow`
-- （参见下面的实际视图）
--
CREATE TABLE `v_question_user_answer_follow` (
`id` varchar(36)
,`user_name` varchar(36)
,`title` varchar(30)
,`content` blob
,`is_top` int(10)
,`pv_count` int(10)
,`update_time` varchar(20)
,`create_time` varchar(20)
,`black_flag` int(11)
,`delete_flag` int(10)
,`status` int(10)
,`is_save` int(10)
,`tag` varchar(20)
,`id_0` varchar(36)
,`name` varchar(10)
,`status_0` int(2)
,`delete_flag_0` tinyint(4)
,`approve_status` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count_0` int(10)
,`follow_sum` bigint(21)
,`answer_sum` bigint(21)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_report_answer_answer`
-- （参见下面的实际视图）
--
CREATE TABLE `v_report_answer_answer` (
`id` varchar(36)
,`answer_id` varchar(36)
,`reason` varchar(36)
,`id_0` varchar(36)
,`user_name` varchar(36)
,`question_id` varchar(36)
,`question_title` varchar(200)
,`content` blob
,`delete_flag` int(10)
,`status` int(10)
,`black_flag` int(10)
,`time` varchar(20)
,`answer_id_0` varchar(36)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_report_question_questition`
-- （参见下面的实际视图）
--
CREATE TABLE `v_report_question_questition` (
`id` varchar(36)
,`question_id` varchar(36)
,`question_name` varchar(36)
,`reason` varchar(36)
,`id_0` varchar(36)
,`user_name` varchar(36)
,`title` varchar(30)
,`content` blob
,`tag` varchar(20)
,`is_save` int(10)
,`delete_flag` int(10)
,`status` int(10)
,`black_flag` int(11)
,`create_time` varchar(20)
,`update_time` varchar(20)
,`pv_count` int(10)
,`is_top` int(10)
);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `v_report_user_user`
-- （参见下面的实际视图）
--
CREATE TABLE `v_report_user_user` (
`id` varchar(36)
,`user_name` varchar(36)
,`reason` varchar(36)
,`name` varchar(10)
,`create_time` varchar(20)
,`update_time` varchar(20)
,`delete_flag` tinyint(4)
,`approve_status` tinyint(4)
,`black_list_user` int(2)
,`logo` varchar(250)
,`pv_count` int(10)
,`status` int(2)
,`email` varchar(32)
,`phone` varchar(11)
);

-- --------------------------------------------------------

--
-- 视图结构 `t_answer_max_time`
--
DROP TABLE IF EXISTS `t_answer_max_time`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t_answer_max_time`  AS  select max(`t_answer`.`time`) AS `last_answer_time`,`t_answer`.`question_id` AS `question_id` from `t_answer` group by `t_answer`.`question_id` ;

-- --------------------------------------------------------

--
-- 视图结构 `t_answer_second_user`
--
DROP TABLE IF EXISTS `t_answer_second_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t_answer_second_user`  AS  select `t_answer_second`.`user_name` AS `user_name`,`t_answer_second`.`question_id` AS `question_id`,`t_answer_second`.`question_title` AS `question_title`,`t_answer_second`.`content` AS `answer_content`,`t_answer_second`.`delete_flag` AS `delete_flag`,`t_answer_second`.`id` AS `id`,`t_answer_second`.`time` AS `time`,`t_user`.`status` AS `status`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`delete_flag` AS `user_delete_flag`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count`,`t_user`.`id` AS `user_id` from (`t_answer_second` left join `t_user` on((`t_answer_second`.`user_name` = `t_user`.`name`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_answer_second_user`
--
DROP TABLE IF EXISTS `v_answer_second_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_answer_second_user`  AS  select `t_answer_second`.`user_name` AS `user_name`,`t_answer_second`.`question_id` AS `question_id`,`t_answer_second`.`question_title` AS `question_title`,`t_answer_second`.`content` AS `answer_content`,`t_answer_second`.`delete_flag` AS `delete_flag`,`t_answer_second`.`black_flag` AS `black_flag`,`t_answer_second`.`id` AS `id`,`t_answer_second`.`time` AS `time`,`t_answer_second`.`answer_id` AS `answer_id`,`t_user`.`status` AS `status`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`delete_flag` AS `user_delete_flag`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count`,`t_user`.`id` AS `user_id` from (`t_answer_second` left join `t_user` on((`t_answer_second`.`user_name` = `t_user`.`name`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_answer_user`
--
DROP TABLE IF EXISTS `v_answer_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_answer_user`  AS  select `t_answer`.`user_name` AS `user_name`,`t_answer`.`question_id` AS `question_id`,`t_answer`.`question_title` AS `question_title`,`t_answer`.`content` AS `answer_content`,`t_answer`.`delete_flag` AS `delete_flag`,`t_answer`.`black_flag` AS `black_flag`,`t_answer`.`time` AS `time`,`t_answer`.`id` AS `id`,`t_user`.`status` AS `status`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`delete_flag` AS `user_delete_flag`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count`,`t_user`.`id` AS `user_id` from (`t_answer` left join `t_user` on((`t_answer`.`user_name` = `t_user`.`name`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_follow_person_user`
--
DROP TABLE IF EXISTS `v_follow_person_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_follow_person_user`  AS  select `t_follow_person`.`user_name_follow` AS `user_name_follow`,`t_follow_person`.`user_name` AS `user_name`,`t_follow_person`.`cteate_time` AS `cteate_time`,`t_user`.`id` AS `id`,`t_user`.`name` AS `name`,`t_user`.`email` AS `email`,`t_user`.`signature` AS `signature`,`t_user`.`logo` AS `logo`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`status` AS `status`,`t_user`.`phone` AS `phone` from (`t_follow_person` left join `t_user` on((`t_follow_person`.`user_name` = `t_user`.`name`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_hot_question`
--
DROP TABLE IF EXISTS `v_hot_question`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hot_question`  AS  select distinct `t_questions`.`id` AS `id`,`t_questions`.`user_name` AS `user_name`,`t_questions`.`title` AS `title`,`t_questions`.`content` AS `content`,`t_questions`.`is_top` AS `is_top`,`t_questions`.`pv_count` AS `pv_count`,`t_questions`.`update_time` AS `update_time`,`t_questions`.`create_time` AS `create_time`,`t_questions`.`black_flag` AS `black_flag`,`t_questions`.`delete_flag` AS `delete_flag`,`t_questions`.`status` AS `status`,`t_questions`.`is_save` AS `is_save`,`t_questions`.`tag` AS `tag`,`v_question_follow_sum`.`follow_sum` AS `follow_sum`,`v_question_answer_sum`.`answer_sum` AS `answer_sum`,`t_answer_max_time`.`last_answer_time` AS `last_answer_time` from (((`t_questions` left join `v_question_follow_sum` on((`v_question_follow_sum`.`question_id` = `t_questions`.`id`))) left join `v_question_answer_sum` on((`v_question_answer_sum`.`question_id` = `t_questions`.`id`))) left join `t_answer_max_time` on((`t_answer_max_time`.`question_id` = `t_questions`.`id`))) order by `t_answer_max_time`.`last_answer_time` desc ;

-- --------------------------------------------------------

--
-- 视图结构 `v_question_answer_sum`
--
DROP TABLE IF EXISTS `v_question_answer_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_question_answer_sum`  AS  select count(1) AS `answer_sum`,`t_answer`.`question_id` AS `question_id` from `t_answer` group by `t_answer`.`question_id` ;

-- --------------------------------------------------------

--
-- 视图结构 `v_question_follow_sum`
--
DROP TABLE IF EXISTS `v_question_follow_sum`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_question_follow_sum`  AS  select count(1) AS `follow_sum`,`t_follow_question`.`question_id` AS `question_id` from `t_follow_question` group by `t_follow_question`.`question_id` ;

-- --------------------------------------------------------

--
-- 视图结构 `v_question_user`
--
DROP TABLE IF EXISTS `v_question_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_question_user`  AS  select `t_questions`.`id` AS `id`,`t_questions`.`user_name` AS `user_name`,`t_questions`.`title` AS `title`,`t_questions`.`content` AS `content`,`t_questions`.`is_top` AS `is_top`,`t_questions`.`pv_count` AS `pv_count`,`t_questions`.`update_time` AS `update_time`,`t_questions`.`create_time` AS `create_time`,`t_questions`.`black_flag` AS `black_flag`,`t_questions`.`delete_flag` AS `delete_flag`,`t_questions`.`status` AS `status`,`t_questions`.`is_save` AS `is_save`,`t_questions`.`tag` AS `tag`,`t_user`.`id` AS `id_0`,`t_user`.`name` AS `name`,`t_user`.`status` AS `status_0`,`t_user`.`delete_flag` AS `delete_flag_0`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count_0` from (`t_questions` left join `t_user` on((`t_questions`.`user_name` = `t_user`.`password`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_question_user_answer_follow`
--
DROP TABLE IF EXISTS `v_question_user_answer_follow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_question_user_answer_follow`  AS  select distinct `t_questions`.`id` AS `id`,`t_questions`.`user_name` AS `user_name`,`t_questions`.`title` AS `title`,`t_questions`.`content` AS `content`,`t_questions`.`is_top` AS `is_top`,`t_questions`.`pv_count` AS `pv_count`,`t_questions`.`update_time` AS `update_time`,`t_questions`.`create_time` AS `create_time`,`t_questions`.`black_flag` AS `black_flag`,`t_questions`.`delete_flag` AS `delete_flag`,`t_questions`.`status` AS `status`,`t_questions`.`is_save` AS `is_save`,`t_questions`.`tag` AS `tag`,`t_user`.`id` AS `id_0`,`t_user`.`name` AS `name`,`t_user`.`status` AS `status_0`,`t_user`.`delete_flag` AS `delete_flag_0`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count_0`,`v_question_follow_sum`.`follow_sum` AS `follow_sum`,`v_question_answer_sum`.`answer_sum` AS `answer_sum` from (((`t_questions` left join `t_user` on((`t_questions`.`user_name` = `t_user`.`name`))) left join `v_question_follow_sum` on((`v_question_follow_sum`.`question_id` = `t_questions`.`id`))) left join `v_question_answer_sum` on((`v_question_answer_sum`.`question_id` = `t_questions`.`id`))) order by `v_question_answer_sum`.`answer_sum` desc ;

-- --------------------------------------------------------

--
-- 视图结构 `v_report_answer_answer`
--
DROP TABLE IF EXISTS `v_report_answer_answer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_report_answer_answer`  AS  select `t_report_answer`.`id` AS `id`,`t_report_answer`.`answer_id` AS `answer_id`,`t_report_answer`.`reason` AS `reason`,`t_answer`.`id` AS `id_0`,`t_answer`.`user_name` AS `user_name`,`t_answer`.`question_id` AS `question_id`,`t_answer`.`question_title` AS `question_title`,`t_answer`.`content` AS `content`,`t_answer`.`delete_flag` AS `delete_flag`,`t_answer`.`status` AS `status`,`t_answer`.`black_flag` AS `black_flag`,`t_answer`.`time` AS `time`,`t_answer`.`answer_id` AS `answer_id_0` from (`t_report_answer` left join `t_answer` on((`t_report_answer`.`answer_id` = `t_answer`.`id`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_report_question_questition`
--
DROP TABLE IF EXISTS `v_report_question_questition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_report_question_questition`  AS  select `t_report_question`.`id` AS `id`,`t_report_question`.`question_id` AS `question_id`,`t_report_question`.`question_name` AS `question_name`,`t_report_question`.`reason` AS `reason`,`t_questions`.`id` AS `id_0`,`t_questions`.`user_name` AS `user_name`,`t_questions`.`title` AS `title`,`t_questions`.`content` AS `content`,`t_questions`.`tag` AS `tag`,`t_questions`.`is_save` AS `is_save`,`t_questions`.`delete_flag` AS `delete_flag`,`t_questions`.`status` AS `status`,`t_questions`.`black_flag` AS `black_flag`,`t_questions`.`create_time` AS `create_time`,`t_questions`.`update_time` AS `update_time`,`t_questions`.`pv_count` AS `pv_count`,`t_questions`.`is_top` AS `is_top` from (`t_report_question` left join `t_questions` on((`t_report_question`.`question_id` = `t_questions`.`id`))) ;

-- --------------------------------------------------------

--
-- 视图结构 `v_report_user_user`
--
DROP TABLE IF EXISTS `v_report_user_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_report_user_user`  AS  select `t_report_user`.`id` AS `id`,`t_report_user`.`user_name` AS `user_name`,`t_report_user`.`reason` AS `reason`,`t_user`.`name` AS `name`,`t_user`.`create_time` AS `create_time`,`t_user`.`update_time` AS `update_time`,`t_user`.`delete_flag` AS `delete_flag`,`t_user`.`approve_status` AS `approve_status`,`t_user`.`black_list_user` AS `black_list_user`,`t_user`.`logo` AS `logo`,`t_user`.`pv_count` AS `pv_count`,`t_user`.`status` AS `status`,`t_user`.`email` AS `email`,`t_user`.`phone` AS `phone` from (`t_report_user` left join `t_user` on((`t_report_user`.`user_name` = `t_user`.`name`))) ;

--
-- 转储表的索引
--

--
-- 表的索引 `oc_accounts`
--
ALTER TABLE `oc_accounts`
  ADD PRIMARY KEY (`uid`);

--
-- 表的索引 `oc_activity`
--
ALTER TABLE `oc_activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_user_time` (`affecteduser`,`timestamp`),
  ADD KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  ADD KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  ADD KEY `activity_object` (`object_type`,`object_id`);

--
-- 表的索引 `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `amp_user` (`amq_affecteduser`),
  ADD KEY `amp_latest_send_time` (`amq_latest_send`),
  ADD KEY `amp_timestamp_time` (`amq_timestamp`);

--
-- 表的索引 `oc_addressbookchanges`
--
ALTER TABLE `oc_addressbookchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`);

--
-- 表的索引 `oc_addressbooks`
--
ALTER TABLE `oc_addressbooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `addressbook_index` (`principaluri`,`uri`);

--
-- 表的索引 `oc_appconfig`
--
ALTER TABLE `oc_appconfig`
  ADD PRIMARY KEY (`appid`,`configkey`),
  ADD KEY `appconfig_config_key_index` (`configkey`),
  ADD KEY `appconfig_appid_key` (`appid`);

--
-- 表的索引 `oc_authtoken`
--
ALTER TABLE `oc_authtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authtoken_token_index` (`token`),
  ADD KEY `authtoken_last_activity_idx` (`last_activity`),
  ADD KEY `authtoken_uid_index` (`uid`),
  ADD KEY `authtoken_version_index` (`version`);

--
-- 表的索引 `oc_bruteforce_attempts`
--
ALTER TABLE `oc_bruteforce_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bruteforce_attempts_ip` (`ip`),
  ADD KEY `bruteforce_attempts_subnet` (`subnet`);

--
-- 表的索引 `oc_calendarchanges`
--
ALTER TABLE `oc_calendarchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`);

--
-- 表的索引 `oc_calendarobjects`
--
ALTER TABLE `oc_calendarobjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`);

--
-- 表的索引 `oc_calendarobjects_props`
--
ALTER TABLE `oc_calendarobjects_props`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendarobject_value_index` (`value`,`calendartype`),
  ADD KEY `calendarobject_index` (`objectid`,`calendartype`),
  ADD KEY `calendarobject_name_index` (`name`,`calendartype`);

--
-- 表的索引 `oc_calendars`
--
ALTER TABLE `oc_calendars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendars_index` (`principaluri`,`uri`);

--
-- 表的索引 `oc_calendarsubscriptions`
--
ALTER TABLE `oc_calendarsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calsub_index` (`principaluri`,`uri`);

--
-- 表的索引 `oc_calendar_invitations`
--
ALTER TABLE `oc_calendar_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_invitation_tokens` (`token`);

--
-- 表的索引 `oc_calendar_reminders`
--
ALTER TABLE `oc_calendar_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_reminder_objid` (`object_id`),
  ADD KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`);

--
-- 表的索引 `oc_calendar_resources`
--
ALTER TABLE `oc_calendar_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  ADD KEY `calendar_resources_email` (`email`),
  ADD KEY `calendar_resources_name` (`displayname`);

--
-- 表的索引 `oc_calendar_resources_md`
--
ALTER TABLE `oc_calendar_resources_md`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_resources_md_idk` (`resource_id`,`key`);

--
-- 表的索引 `oc_calendar_rooms`
--
ALTER TABLE `oc_calendar_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  ADD KEY `calendar_rooms_email` (`email`),
  ADD KEY `calendar_rooms_name` (`displayname`);

--
-- 表的索引 `oc_calendar_rooms_md`
--
ALTER TABLE `oc_calendar_rooms_md`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendar_rooms_md_idk` (`room_id`,`key`);

--
-- 表的索引 `oc_cards`
--
ALTER TABLE `oc_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_abid` (`addressbookid`);

--
-- 表的索引 `oc_cards_properties`
--
ALTER TABLE `oc_cards_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_contactid_index` (`cardid`),
  ADD KEY `card_name_index` (`name`),
  ADD KEY `card_value_index` (`value`),
  ADD KEY `cards_prop_abid` (`addressbookid`);

--
-- 表的索引 `oc_collres_accesscache`
--
ALTER TABLE `oc_collres_accesscache`
  ADD UNIQUE KEY `collres_unique_user` (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  ADD KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`),
  ADD KEY `collres_user_coll` (`user_id`,`collection_id`);

--
-- 表的索引 `oc_collres_collections`
--
ALTER TABLE `oc_collres_collections`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_collres_resources`
--
ALTER TABLE `oc_collres_resources`
  ADD UNIQUE KEY `collres_unique_res` (`collection_id`,`resource_type`,`resource_id`);

--
-- 表的索引 `oc_comments`
--
ALTER TABLE `oc_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_parent_id_index` (`parent_id`),
  ADD KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  ADD KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  ADD KEY `comments_actor_index` (`actor_type`,`actor_id`);

--
-- 表的索引 `oc_comments_read_markers`
--
ALTER TABLE `oc_comments_read_markers`
  ADD UNIQUE KEY `comments_marker_index` (`user_id`,`object_type`,`object_id`),
  ADD KEY `comments_marker_object_index` (`object_type`,`object_id`);

--
-- 表的索引 `oc_credentials`
--
ALTER TABLE `oc_credentials`
  ADD PRIMARY KEY (`user`,`identifier`),
  ADD KEY `credentials_user` (`user`);

--
-- 表的索引 `oc_dav_cal_proxy`
--
ALTER TABLE `oc_dav_cal_proxy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  ADD KEY `dav_cal_proxy_ioid` (`owner_id`),
  ADD KEY `dav_cal_proxy_ipid` (`proxy_id`);

--
-- 表的索引 `oc_dav_shares`
--
ALTER TABLE `oc_dav_shares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`);

--
-- 表的索引 `oc_directlink`
--
ALTER TABLE `oc_directlink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directlink_token_idx` (`token`),
  ADD KEY `directlink_expiration_idx` (`expiration`);

--
-- 表的索引 `oc_direct_edit`
--
ALTER TABLE `oc_direct_edit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4D5AFECA5F37A13B` (`token`);

--
-- 表的索引 `oc_federated_reshares`
--
ALTER TABLE `oc_federated_reshares`
  ADD UNIQUE KEY `share_id_index` (`share_id`);

--
-- 表的索引 `oc_filecache`
--
ALTER TABLE `oc_filecache`
  ADD PRIMARY KEY (`fileid`),
  ADD UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  ADD KEY `fs_parent_name_hash` (`parent`,`name`),
  ADD KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  ADD KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  ADD KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  ADD KEY `fs_mtime` (`mtime`);

--
-- 表的索引 `oc_filecache_extended`
--
ALTER TABLE `oc_filecache_extended`
  ADD UNIQUE KEY `fce_fileid_idx` (`fileid`),
  ADD KEY `fce_ctime_idx` (`creation_time`),
  ADD KEY `fce_utime_idx` (`upload_time`);

--
-- 表的索引 `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `id_index` (`id`),
  ADD KEY `timestamp_index` (`timestamp`),
  ADD KEY `user_index` (`user`);

--
-- 表的索引 `oc_file_locks`
--
ALTER TABLE `oc_file_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lock_key_index` (`key`),
  ADD KEY `lock_ttl_index` (`ttl`);

--
-- 表的索引 `oc_flow_checks`
--
ALTER TABLE `oc_flow_checks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flow_unique_hash` (`hash`);

--
-- 表的索引 `oc_flow_operations`
--
ALTER TABLE `oc_flow_operations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_flow_operations_scope`
--
ALTER TABLE `oc_flow_operations_scope`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`);

--
-- 表的索引 `oc_groups`
--
ALTER TABLE `oc_groups`
  ADD PRIMARY KEY (`gid`);

--
-- 表的索引 `oc_group_admin`
--
ALTER TABLE `oc_group_admin`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `group_admin_uid` (`uid`);

--
-- 表的索引 `oc_group_user`
--
ALTER TABLE `oc_group_user`
  ADD PRIMARY KEY (`gid`,`uid`),
  ADD KEY `gu_uid_index` (`uid`);

--
-- 表的索引 `oc_jobs`
--
ALTER TABLE `oc_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_class_index` (`class`);

--
-- 表的索引 `oc_login_flow_v2`
--
ALTER TABLE `oc_login_flow_v2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `poll_token` (`poll_token`),
  ADD UNIQUE KEY `login_token` (`login_token`),
  ADD KEY `timestamp` (`timestamp`);

--
-- 表的索引 `oc_migrations`
--
ALTER TABLE `oc_migrations`
  ADD PRIMARY KEY (`app`,`version`);

--
-- 表的索引 `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mimetype_id_index` (`mimetype`);

--
-- 表的索引 `oc_mounts`
--
ALTER TABLE `oc_mounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  ADD KEY `mounts_user_index` (`user_id`),
  ADD KEY `mounts_storage_index` (`storage_id`),
  ADD KEY `mounts_root_index` (`root_id`),
  ADD KEY `mounts_mount_id_index` (`mount_id`);

--
-- 表的索引 `oc_notifications`
--
ALTER TABLE `oc_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `oc_notifications_app` (`app`),
  ADD KEY `oc_notifications_user` (`user`),
  ADD KEY `oc_notifications_timestamp` (`timestamp`),
  ADD KEY `oc_notifications_object` (`object_type`,`object_id`);

--
-- 表的索引 `oc_notifications_pushtokens`
--
ALTER TABLE `oc_notifications_pushtokens`
  ADD UNIQUE KEY `oc_notifpushtoken` (`uid`,`token`);

--
-- 表的索引 `oc_oauth2_access_tokens`
--
ALTER TABLE `oc_oauth2_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  ADD KEY `oauth2_access_client_id_idx` (`client_id`);

--
-- 表的索引 `oc_oauth2_clients`
--
ALTER TABLE `oc_oauth2_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`);

--
-- 表的索引 `oc_preferences`
--
ALTER TABLE `oc_preferences`
  ADD PRIMARY KEY (`userid`,`appid`,`configkey`);

--
-- 表的索引 `oc_privacy_admins`
--
ALTER TABLE `oc_privacy_admins`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_properties`
--
ALTER TABLE `oc_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_index` (`userid`);

--
-- 表的索引 `oc_schedulingobjects`
--
ALTER TABLE `oc_schedulingobjects`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_share`
--
ALTER TABLE `oc_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_share_type_index` (`item_type`,`share_type`),
  ADD KEY `file_source_index` (`file_source`),
  ADD KEY `token_index` (`token`),
  ADD KEY `share_with_index` (`share_with`),
  ADD KEY `parent_index` (`parent`),
  ADD KEY `owner_index` (`uid_owner`),
  ADD KEY `initiator_index` (`uid_initiator`);

--
-- 表的索引 `oc_share_external`
--
ALTER TABLE `oc_share_external`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  ADD KEY `sh_external_user` (`user`);

--
-- 表的索引 `oc_storages`
--
ALTER TABLE `oc_storages`
  ADD PRIMARY KEY (`numeric_id`),
  ADD UNIQUE KEY `storages_id_index` (`id`);

--
-- 表的索引 `oc_systemtag`
--
ALTER TABLE `oc_systemtag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`);

--
-- 表的索引 `oc_systemtag_group`
--
ALTER TABLE `oc_systemtag_group`
  ADD PRIMARY KEY (`gid`,`systemtagid`);

--
-- 表的索引 `oc_systemtag_object_mapping`
--
ALTER TABLE `oc_systemtag_object_mapping`
  ADD UNIQUE KEY `mapping` (`objecttype`,`objectid`,`systemtagid`);

--
-- 表的索引 `oc_text_documents`
--
ALTER TABLE `oc_text_documents`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_text_sessions`
--
ALTER TABLE `oc_text_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rd_session_token_idx` (`token`);

--
-- 表的索引 `oc_text_steps`
--
ALTER TABLE `oc_text_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rd_steps_did_idx` (`document_id`),
  ADD KEY `rd_steps_version_idx` (`version`);

--
-- 表的索引 `oc_trusted_servers`
--
ALTER TABLE `oc_trusted_servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_hash` (`url_hash`);

--
-- 表的索引 `oc_twofactor_backupcodes`
--
ALTER TABLE `oc_twofactor_backupcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `twofactor_backupcodes_uid` (`user_id`);

--
-- 表的索引 `oc_twofactor_providers`
--
ALTER TABLE `oc_twofactor_providers`
  ADD PRIMARY KEY (`provider_id`,`uid`),
  ADD KEY `twofactor_providers_uid` (`uid`);

--
-- 表的索引 `oc_users`
--
ALTER TABLE `oc_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `user_uid_lower` (`uid_lower`);

--
-- 表的索引 `oc_user_transfer_owner`
--
ALTER TABLE `oc_user_transfer_owner`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_index` (`uid`),
  ADD KEY `type_index` (`type`),
  ADD KEY `category_index` (`category`);

--
-- 表的索引 `oc_vcategory_to_object`
--
ALTER TABLE `oc_vcategory_to_object`
  ADD PRIMARY KEY (`categoryid`,`objid`,`type`),
  ADD KEY `vcategory_objectd_index` (`objid`,`type`);

--
-- 表的索引 `oc_whats_new`
--
ALTER TABLE `oc_whats_new`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `version` (`version`),
  ADD KEY `version_etag_idx` (`version`,`etag`);

--
-- 表的索引 `t_admin_user`
--
ALTER TABLE `t_admin_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_ame` (`name`) USING BTREE;

--
-- 表的索引 `t_answer`
--
ALTER TABLE `t_answer`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_answer_second`
--
ALTER TABLE `t_answer_second`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_follow_person`
--
ALTER TABLE `t_follow_person`
  ADD PRIMARY KEY (`user_name_follow`,`user_name`);

--
-- 表的索引 `t_follow_question`
--
ALTER TABLE `t_follow_question`
  ADD PRIMARY KEY (`question_id`,`user_name`);

--
-- 表的索引 `t_questions`
--
ALTER TABLE `t_questions`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_question_tag`
--
ALTER TABLE `t_question_tag`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_report_answer`
--
ALTER TABLE `t_report_answer`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_report_question`
--
ALTER TABLE `t_report_question`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_report_user`
--
ALTER TABLE `t_report_user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_system_param`
--
ALTER TABLE `t_system_param`
  ADD PRIMARY KEY (`param_id`);

--
-- 表的索引 `t_tag`
--
ALTER TABLE `t_tag`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`name`) USING BTREE,
  ADD KEY `idx_ame` (`name`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `oc_activity`
--
ALTER TABLE `oc_activity`
  MODIFY `activity_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `oc_activity_mq`
--
ALTER TABLE `oc_activity_mq`
  MODIFY `mail_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_addressbookchanges`
--
ALTER TABLE `oc_addressbookchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_addressbooks`
--
ALTER TABLE `oc_addressbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `oc_authtoken`
--
ALTER TABLE `oc_authtoken`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `oc_bruteforce_attempts`
--
ALTER TABLE `oc_bruteforce_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendarchanges`
--
ALTER TABLE `oc_calendarchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendarobjects`
--
ALTER TABLE `oc_calendarobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendarobjects_props`
--
ALTER TABLE `oc_calendarobjects_props`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendars`
--
ALTER TABLE `oc_calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `oc_calendarsubscriptions`
--
ALTER TABLE `oc_calendarsubscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_invitations`
--
ALTER TABLE `oc_calendar_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_reminders`
--
ALTER TABLE `oc_calendar_reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_resources`
--
ALTER TABLE `oc_calendar_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_resources_md`
--
ALTER TABLE `oc_calendar_resources_md`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_rooms`
--
ALTER TABLE `oc_calendar_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_calendar_rooms_md`
--
ALTER TABLE `oc_calendar_rooms_md`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_cards`
--
ALTER TABLE `oc_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_cards_properties`
--
ALTER TABLE `oc_cards_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_collres_collections`
--
ALTER TABLE `oc_collres_collections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_comments`
--
ALTER TABLE `oc_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_dav_cal_proxy`
--
ALTER TABLE `oc_dav_cal_proxy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_dav_shares`
--
ALTER TABLE `oc_dav_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_directlink`
--
ALTER TABLE `oc_directlink`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_direct_edit`
--
ALTER TABLE `oc_direct_edit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_filecache`
--
ALTER TABLE `oc_filecache`
  MODIFY `fileid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- 使用表AUTO_INCREMENT `oc_files_trash`
--
ALTER TABLE `oc_files_trash`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_file_locks`
--
ALTER TABLE `oc_file_locks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `oc_flow_checks`
--
ALTER TABLE `oc_flow_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_flow_operations`
--
ALTER TABLE `oc_flow_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_flow_operations_scope`
--
ALTER TABLE `oc_flow_operations_scope`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_jobs`
--
ALTER TABLE `oc_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `oc_login_flow_v2`
--
ALTER TABLE `oc_login_flow_v2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_mimetypes`
--
ALTER TABLE `oc_mimetypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `oc_mounts`
--
ALTER TABLE `oc_mounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `oc_notifications`
--
ALTER TABLE `oc_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `oc_oauth2_access_tokens`
--
ALTER TABLE `oc_oauth2_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_oauth2_clients`
--
ALTER TABLE `oc_oauth2_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_privacy_admins`
--
ALTER TABLE `oc_privacy_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_properties`
--
ALTER TABLE `oc_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_schedulingobjects`
--
ALTER TABLE `oc_schedulingobjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_share`
--
ALTER TABLE `oc_share`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_share_external`
--
ALTER TABLE `oc_share_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_storages`
--
ALTER TABLE `oc_storages`
  MODIFY `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `oc_systemtag`
--
ALTER TABLE `oc_systemtag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_text_documents`
--
ALTER TABLE `oc_text_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_text_sessions`
--
ALTER TABLE `oc_text_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_text_steps`
--
ALTER TABLE `oc_text_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_trusted_servers`
--
ALTER TABLE `oc_trusted_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_twofactor_backupcodes`
--
ALTER TABLE `oc_twofactor_backupcodes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_user_transfer_owner`
--
ALTER TABLE `oc_user_transfer_owner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_vcategory`
--
ALTER TABLE `oc_vcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `oc_whats_new`
--
ALTER TABLE `oc_whats_new`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

