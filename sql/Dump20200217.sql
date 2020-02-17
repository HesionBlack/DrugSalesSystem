-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: drugsales
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `custom_cart`
--

DROP TABLE IF EXISTS `custom_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_cart` (
  `id` varchar(36) NOT NULL,
  `uId` bigint(20) DEFAULT NULL,
  `dId` varchar(36) DEFAULT NULL,
  `cartnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_cart`
--

LOCK TABLES `custom_cart` WRITE;
/*!40000 ALTER TABLE `custom_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_leavemsg`
--

DROP TABLE IF EXISTS `custom_leavemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_leavemsg` (
  `id` varchar(36) NOT NULL COMMENT '留言id',
  `uId` int(11) DEFAULT NULL COMMENT '留言者id',
  `dId` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `create_time` datetime DEFAULT NULL COMMENT '留言时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '留言人用户名',
  `replayStatu` int(255) DEFAULT NULL COMMENT '回复状态（0为未回复 1 为有回复）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_leavemsg`
--

LOCK TABLES `custom_leavemsg` WRITE;
/*!40000 ALTER TABLE `custom_leavemsg` DISABLE KEYS */;
INSERT INTO `custom_leavemsg` VALUES ('0348d84622fa11ea823e91afbb9bd661',100,NULL,'sdasd','2019-12-20 15:26:18','爱上',1),('5b7db21623ae11eaaef9a7371ade0b99',100,NULL,'sd','2019-12-21 12:57:15','sd',1),('a7cd6201515811ea8162a0510b8f993f',100,'sss','r','2020-02-17 15:39:40','g',0);
/*!40000 ALTER TABLE `custom_leavemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_leavemsg_reply`
--

DROP TABLE IF EXISTS `custom_leavemsg_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_leavemsg_reply` (
  `id` varchar(36) NOT NULL COMMENT '回复留言id',
  `msgId` varchar(36) DEFAULT NULL COMMENT '回复的那条留言的id',
  `replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `replayerId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复者id',
  `replayName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '回复者用户名',
  `msg` varchar(255) DEFAULT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_leavemsg_reply`
--

LOCK TABLES `custom_leavemsg_reply` WRITE;
/*!40000 ALTER TABLE `custom_leavemsg_reply` DISABLE KEYS */;
INSERT INTO `custom_leavemsg_reply` VALUES ('047217fa23a911eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:19:02','1','admin','hello啊ss'),('1d5e933023ac11eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:41:12','100','user','sss'),('633e75bc23ae11eaaef9a7371ade0b99','5b7db21623ae11eaaef9a7371ade0b99','2019-12-21 12:57:28','1','admin','hello啊'),('e2d4d8c023a911eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 12:25:15','1','admin','as'),('fe19222823a211eaaef9a7371ade0b99','0348d84622fa11ea823e91afbb9bd661','2019-12-21 11:35:54','1','admin','hello啊');
/*!40000 ALTER TABLE `custom_leavemsg_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_order`
--

DROP TABLE IF EXISTS `custom_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_order` (
  `id` varchar(36) DEFAULT NULL,
  `dId` varchar(36) DEFAULT NULL,
  `uId` bigint(36) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_order`
--

LOCK TABLES `custom_order` WRITE;
/*!40000 ALTER TABLE `custom_order` DISABLE KEYS */;
INSERT INTO `custom_order` VALUES ('12020021620274303977919253524265','sss',100,1,'2020-02-16 20:27:43',NULL);
/*!40000 ALTER TABLE `custom_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/10 * * * * ?t\0ryTask.ryNoParamst\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（无参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0com.ruoyi.quartz.domain.SysJob\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0\'com.ruoyi.common.core.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','LAPTOP-6RGHAD0S1581925155249',1581925217469,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1581925160000,-1,5,'PAUSED','CRON',1581925155000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1581925155000,-1,5,'PAUSED','CRON',1581925155000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1581925160000,-1,5,'PAUSED','CRON',1581925155000,0,NULL,2,'');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','医药科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-12-24 09:51:02'),(101,100,'0,100','药店',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','admin','2019-12-24 09:51:02'),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(200,100,'0,100','普通消费者',1,'hello','15888888888','1746991605@qq.com','0','0','admin','2019-12-24 09:50:22','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作'),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作'),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作'),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作'),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作'),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作'),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作'),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作'),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_drug`
--

DROP TABLE IF EXISTS `sys_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_drug` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '药品名称',
  `dept` varchar(255) DEFAULT NULL COMMENT '生产单位',
  `validity` varchar(255) DEFAULT NULL COMMENT '有效期',
  `price` float(10,2) DEFAULT NULL COMMENT '零售价格',
  `imageUrl` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `typeId` int(11) DEFAULT NULL COMMENT '药品类型',
  `effect` varchar(255) DEFAULT NULL COMMENT '药品功效',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateBy` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` varchar(255) DEFAULT NULL COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_drug`
--

LOCK TABLES `sys_drug` WRITE;
/*!40000 ALTER TABLE `sys_drug` DISABLE KEYS */;
INSERT INTO `sys_drug` VALUES ('sss','阿莫西林','哈药制药','480天',30.22,'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577178440697&di=038c81de8c2d875edc2e852c29a80cf4&imgtype=jpg&src=http%3A%2F%2Fimg2.imgtn.bdimg.com%2Fit%2Fu%3D1852078787%2C2007268076%26fm%3D214%26gp%3D0.jpg',1,'抗生素类药。阿莫西林杀菌作用强，穿透细胞壁的能力也强。是目前应用较为广泛的口服青霉素之一，其制剂有胶囊、片剂、颗粒剂、分散片等等。青霉素过敏及青霉素皮肤试验阳性患者禁用 [1]  。','2019-12-24 14:26:59','admin',NULL,NULL,'0');
/*!40000 ALTER TABLE `sys_drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_drug_type`
--

DROP TABLE IF EXISTS `sys_drug_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_drug_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL COMMENT '类型名',
  `createby` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `updateby` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_drug_type`
--

LOCK TABLES `sys_drug_type` WRITE;
/*!40000 ALTER TABLE `sys_drug_type` DISABLE KEYS */;
INSERT INTO `sys_drug_type` VALUES (1,'处方药','admin','2019-12-24 14:17:04','admin','2019-12-24 14:17:14','0');
/*!40000 ALTER TABLE `sys_drug_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-22 10:19:12'),(101,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 09:31:41'),(102,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 09:43:16'),(103,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-24 09:54:05'),(104,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','1','验证码错误','2019-12-24 10:29:22'),(105,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 10:29:27'),(106,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','退出成功','2019-12-24 10:29:30'),(107,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','1','验证码错误','2019-12-24 11:04:54'),(108,'ss','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 11:05:47'),(109,'admin','127.0.0.1','内网IP','Chrome','Mac OS X','0','登录成功','2019-12-24 11:06:42'),(110,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 15:08:07'),(111,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 16:20:05'),(112,'admin','127.0.0.1','内网IP','Firefox 7','Mac OS X','0','登录成功','2019-12-24 16:57:14'),(113,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-09 11:00:51'),(114,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-09 11:00:59'),(115,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-09 11:01:07'),(116,'admin','127.0.0.1','内网IP','Firefox 7','Windows 7','0','登录成功','2020-02-09 11:02:13'),(117,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','1','密码输入错误1次','2020-02-09 11:14:37'),(118,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','1','密码输入错误2次','2020-02-09 11:14:40'),(119,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-09 11:14:47'),(120,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 07:35:50'),(121,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 07:43:02'),(122,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 07:53:23'),(123,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 07:53:32'),(124,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 07:53:38'),(125,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 07:53:43'),(126,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 07:54:34'),(127,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 07:54:39'),(128,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 10:50:11'),(129,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:18:48'),(130,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 15:19:04'),(131,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:19:07'),(132,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 15:25:44'),(133,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:25:50'),(134,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:28:07'),(135,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:35:15'),(136,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 15:38:05'),(137,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:38:08'),(138,'admin','127.0.0.1','内网IP','Chrome 8','Windows 7','0','退出成功','2020-02-10 15:38:40'),(139,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:38:45'),(140,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:44:17'),(141,'fr','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-02-10 15:49:16'),(142,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 15:14:12'),(143,'admin','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-16 15:16:29'),(144,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 15:16:36'),(145,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 15:30:28'),(146,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 15:33:15'),(147,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 15:42:00'),(148,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-16 19:14:51'),(149,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-16 19:14:53'),(150,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 19:14:56'),(151,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 19:50:14'),(152,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 20:13:03'),(153,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 20:19:25'),(154,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-16 20:25:24'),(155,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 20:25:33'),(156,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-16 20:47:32'),(157,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-16 20:47:41'),(158,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:08:59'),(159,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:13:19'),(160,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:18:40'),(161,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:25:42'),(162,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:40:33'),(163,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:49:25'),(164,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:52:12'),(165,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:53:13'),(166,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-17 13:57:24'),(167,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 13:57:26'),(168,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-17 14:03:18'),(169,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 14:03:23'),(170,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 14:58:58'),(171,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','退出成功','2020-02-17 15:23:03'),(172,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 15:23:08'),(173,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','1','验证码错误','2020-02-17 15:35:23'),(174,'fr','127.0.0.1','内网IP','Chrome 8','Windows 10','0','登录成功','2020-02-17 15:35:27');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(100,'用户管理',1,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','menuItem','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','admin','2019-12-24 09:49:34','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','menuItem','C','1','system:post:view','#','admin','2018-03-16 11:33:00','admin','2019-12-22 10:24:46','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','menuItem','C','1','system:config:view','#','admin','2018-03-16 11:33:00','admin','2019-12-22 10:24:59','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','menuItem','C','1','system:notice:view','#','admin','2018-03-16 11:33:00','admin','2019-12-22 10:25:09','通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'服务监控',2,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单'),(113,'表单构建',3,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(114,'代码生成',3,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(115,'系统接口',3,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户导出',100,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'用户导入',100,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'重置密码',100,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色查询',101,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色新增',101,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色修改',101,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色删除',101,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'角色导出',101,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单查询',102,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单新增',102,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单修改',102,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单删除',102,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'岗位查询',104,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位新增',104,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位修改',104,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位删除',104,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位导出',104,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'字典查询',105,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典新增',105,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典修改',105,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典删除',105,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典导出',105,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'参数查询',106,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数新增',106,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数修改',106,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数删除',106,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数导出',106,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'公告查询',107,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告新增',107,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告修改',107,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告删除',107,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'操作查询',500,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'操作删除',500,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'详细信息',500,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'日志导出',500,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'登录查询',501,1,'#','','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录删除',501,2,'#','','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'日志导出',501,3,'#','','F','0','monitor:logininfor:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'账户解锁',501,4,'#','','F','0','monitor:logininfor:unlock','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'在线查询',109,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'批量强退',109,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'单条强退',109,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务查询',110,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务新增',110,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务修改',110,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务删除',110,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'任务详细',110,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'任务导出',110,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1057,'生成查询',114,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1058,'生成修改',114,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1059,'生成删除',114,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1060,'预览代码',114,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1061,'生成代码',114,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'药品管理',1,1,'/system/drug','menuItem','C','0','system:grug:view','#','admin','2019-12-22 10:30:03','',NULL,''),(2001,'基础服务',0,1,'#','menuItem','M','0',NULL,'#','admin','2019-12-24 09:34:35','',NULL,''),(2002,'新增',2000,1,'#','menuItem','F','0','system:drug:add','#','admin','2019-12-24 15:18:14','',NULL,''),(2003,'我的订单',2001,1,'/custom/order/myOrder','menuItem','C','0','system:myOrder:view','#','admin','2020-02-10 07:44:21','admin','2020-02-10 15:38:33',''),(2004,'我的购物车',2001,2,'/custom/cart','menuItem','C','0',NULL,'#','admin','2020-02-10 07:46:33','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"103\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"部门管理\" ],\n  \"url\" : [ \"/system/dept\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:dept:view\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-22 10:24:33'),(101,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"104\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"岗位管理\" ],\n  \"url\" : [ \"/system/post\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:post:view\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-22 10:24:46'),(102,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"106\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"参数设置\" ],\n  \"url\" : [ \"/system/config\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:config:view\" ],\n  \"orderNum\" : [ \"7\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-22 10:24:59'),(103,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"107\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"通知公告\" ],\n  \"url\" : [ \"/system/notice\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:notice:view\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"1\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-22 10:25:09'),(104,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"药品管理\" ],\n  \"url\" : [ \"/system/drug\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:grug:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-22 10:30:03'),(105,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:34:10'),(106,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"M\" ],\n  \"menuName\" : [ \"基础服务\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:34:35'),(107,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.addSave()','POST',1,'admin','研发部门','/system/user/add','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"103\" ],\n  \"userName\" : [ \"阳光\" ],\n  \"deptName\" : [ \"研发部门\" ],\n  \"phonenumber\" : [ \"15222222222\" ],\n  \"email\" : [ \"1746991605@qq.com\" ],\n  \"loginName\" : [ \"fr\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ],\n  \"role\" : [ \"2\" ],\n  \"remark\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIds\" : [ \"2\" ],\n  \"postIds\" : [ \"3\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:49:15'),(108,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\n  \"menuId\" : [ \"103\" ],\n  \"parentId\" : [ \"1\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"部门管理\" ],\n  \"url\" : [ \"/system/dept\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:dept:view\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:49:34'),(109,'部门管理',1,'com.ruoyi.web.controller.system.SysDeptController.addSave()','POST',1,'admin','研发部门','/system/dept/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"100\" ],\n  \"deptName\" : [ \"普通消费者\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"leader\" : [ \"hello\" ],\n  \"phone\" : [ \"15888888888\" ],\n  \"email\" : [ \"1746991605@qq.com\" ],\n  \"status\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:22'),(110,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/102','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"存在下级部门,不允许删除\",\n  \"code\" : 301\n}',0,NULL,'2019-12-24 09:50:28'),(111,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/108','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:32'),(112,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/109','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:35'),(113,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/102','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:37'),(114,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/107','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:40'),(115,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/106','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:43'),(116,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/105','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"部门存在用户,不允许删除\",\n  \"code\" : 301\n}',0,NULL,'2019-12-24 09:50:45'),(117,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','GET',1,'admin','研发部门','/system/dept/remove/104','127.0.0.1','内网IP','{ }','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:50:48'),(118,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.editSave()','POST',1,'admin','研发部门','/system/dept/edit','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"101\" ],\n  \"parentId\" : [ \"100\" ],\n  \"parentName\" : [ \"医药科技\" ],\n  \"deptName\" : [ \"药店\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"leader\" : [ \"若依\" ],\n  \"phone\" : [ \"15888888888\" ],\n  \"email\" : [ \"ry@qq.com\" ],\n  \"status\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 09:51:02'),(119,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','null',1,'','2019-12-24 10:41:11'),(120,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 10:45:48'),(121,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 10:47:38'),(122,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 10:50:14'),(123,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 10:51:33'),(124,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"rr\" ],\n  \"phonenumber\" : [ \"13251251234\" ],\n  \"email\" : [ \"1246991605@qq.com\" ],\n  \"loginName\" : [ \"h2\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 10:56:35'),(125,'用户管理',1,'com.ruoyi.web.controller.system.SysRegisterController.registerSave()','POST',1,NULL,NULL,'/register','127.0.0.1','内网IP','{\n  \"deptId\" : [ \"\" ],\n  \"userName\" : [ \"消费者\" ],\n  \"phonenumber\" : [ \"18999999999\" ],\n  \"email\" : [ \"1726991605@qq.com\" ],\n  \"loginName\" : [ \"ss\" ],\n  \"password\" : [ \"123456\" ],\n  \"sex\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 11:05:37'),(126,'角色管理',4,'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()','POST',1,'admin','研发部门','/system/role/authUser/selectAll','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"userIds\" : [ \"106\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 11:07:00'),(127,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"2001\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 11:07:32'),(128,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\n  \"parentId\" : [ \"2000\" ],\n  \"menuType\" : [ \"F\" ],\n  \"menuName\" : [ \"新增\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:drug:add\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}','{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}',0,NULL,'2019-12-24 15:18:14'),(129,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的订单\" ],\r\n  \"url\" : [ \"/custom/order\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 07:44:21'),(130,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/system/menu/add','127.0.0.1','内网IP','{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的购物车\" ],\r\n  \"url\" : [ \"/custom/cart\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 07:46:34'),(131,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()','POST',1,'admin','研发部门','/system/role/authDataScope','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"2\" ],\r\n  \"deptIds\" : [ \"100,101,105,200\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 07:54:11'),(132,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.editSave()','POST',1,'admin','研发部门','/system/role/edit','127.0.0.1','内网IP','{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2001,2003,2004\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 07:54:25'),(133,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的订单\" ],\r\n  \"url\" : [ \"/custom/order/myOrder\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 15:25:41'),(134,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/system/menu/edit','127.0.0.1','内网IP','{\r\n  \"menuId\" : [ \"2003\" ],\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"我的订单\" ],\r\n  \"url\" : [ \"/custom/order/myOrder\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:myOrder:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}','{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}',0,NULL,'2020-02-10 15:38:33');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','admin','2020-02-10 07:54:25','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105),(2,200);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2001),(2,2003),(2,2004);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2020-02-16 15:14:13','admin','2018-03-16 11:33:00','ry','2020-02-16 15:14:12','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','测试员'),(100,103,'fr','阳光','00','1746991605@qq.com','15222222222','0','','a560f6b30befae4c0eddfe92873a7374','c2a440','0','0','127.0.0.1','2020-02-17 15:35:27','admin','2019-12-24 09:49:15','','2020-02-17 15:35:27',NULL),(106,NULL,'ss','消费者','00','1726991605@qq.com','18999999999','0','','cdfc3f2a8bcf868b917904196fd28b72','75a538','0','0','127.0.0.1','2019-12-24 11:05:48','用户自创','2019-12-24 11:05:37','','2019-12-24 11:05:47',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('5592e68f-7321-48c7-82ad-c2b1080c2dbc','fr','研发部门','127.0.0.1','内网IP','Chrome 8','Windows 10','on_line','2020-02-17 15:23:03','2020-02-17 15:29:48',1800000),('b63c513a-3d54-4e05-b863-5f893b4ebf98','fr','研发部门','127.0.0.1','内网IP','Chrome 8','Windows 10','on_line','2020-02-17 15:35:08','2020-02-17 15:39:32',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2),(100,3);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(100,2),(106,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_custom_cart`
--

DROP TABLE IF EXISTS `v_custom_cart`;
/*!50001 DROP VIEW IF EXISTS `v_custom_cart`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_custom_cart` AS SELECT 
 1 AS `id`,
 1 AS `uId`,
 1 AS `dId`,
 1 AS `cartnum`,
 1 AS `dname`,
 1 AS `price`,
 1 AS `imgUrl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_custom_order`
--

DROP TABLE IF EXISTS `v_custom_order`;
/*!50001 DROP VIEW IF EXISTS `v_custom_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_custom_order` AS SELECT 
 1 AS `id`,
 1 AS `dId`,
 1 AS `uId`,
 1 AS `num`,
 1 AS `create_time`,
 1 AS `update_time`,
 1 AS `name`,
 1 AS `dept`,
 1 AS `validity`,
 1 AS `price`,
 1 AS `totalprice`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_custom_cart`
--

/*!50001 DROP VIEW IF EXISTS `v_custom_cart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_custom_cart` AS select `custom_cart`.`id` AS `id`,`custom_cart`.`uId` AS `uId`,`custom_cart`.`dId` AS `dId`,`custom_cart`.`cartnum` AS `cartnum`,`sys_drug`.`name` AS `dname`,`sys_drug`.`price` AS `price`,`sys_drug`.`imageUrl` AS `imgUrl` from (`custom_cart` left join `sys_drug` on((`sys_drug`.`id` = `custom_cart`.`dId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_custom_order`
--

/*!50001 DROP VIEW IF EXISTS `v_custom_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_custom_order` AS select `custom_order`.`id` AS `id`,`custom_order`.`dId` AS `dId`,`custom_order`.`uId` AS `uId`,`custom_order`.`num` AS `num`,`custom_order`.`create_time` AS `create_time`,`custom_order`.`update_time` AS `update_time`,`sys_drug`.`name` AS `name`,`sys_drug`.`dept` AS `dept`,`sys_drug`.`validity` AS `validity`,`sys_drug`.`price` AS `price`,(`sys_drug`.`price` * `custom_order`.`num`) AS `totalprice` from (`custom_order` left join `sys_drug` on((`custom_order`.`dId` = `sys_drug`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 15:42:21
