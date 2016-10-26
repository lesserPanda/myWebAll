CREATE TABLE U_AGENT_ROLE 
(	
	ID VARCHAR(32) not null, 
	AGENT_ID VARCHAR(32), 
	ROLE_ID VARCHAR(32), 
	ROLE_NAME VARCHAR(50), 
	ROLE_PERMS BLOB,
	PRIMARY KEY(ID)
);
	ALTER TABLE U_AGENT_ROLE MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_AGENT_ROLE MODIFY `AGENT_ID` VARCHAR(32) DEFAULT NULL COMMENT '代理表ID';
	ALTER TABLE U_AGENT_ROLE MODIFY `ROLE_ID` VARCHAR(32) DEFAULT NULL COMMENT '代理角色的ID';
	ALTER TABLE U_AGENT_ROLE MODIFY `ROLE_NAME` VARCHAR(50) DEFAULT NULL COMMENT '代理角色的名称';
	ALTER TABLE U_AGENT_ROLE MODIFY `ROLE_PERMS` BLOB DEFAULT NULL COMMENT '代理角色的权限';
	ALTER TABLE U_AGENT_ROLE COMMENT='代理角色表';
   
--   COMMENT ON COLUMN "U_AGENT_ROLE"."ID" IS '主键';
--   COMMENT ON COLUMN "U_AGENT_ROLE"."AGENT_ID" IS '代理表ID';
--   COMMENT ON COLUMN "U_AGENT_ROLE"."ROLE_ID" IS '代理角色的ID';
--   COMMENT ON COLUMN "U_AGENT_ROLE"."ROLE_NAME" IS '代理角色的名称';
--   COMMENT ON COLUMN "U_AGENT_ROLE"."ROLE_PERMS" IS '代理角色的权限';
--   COMMENT ON TABLE "U_AGENT_ROLE"  IS '代理角色表';

-- ------------------------------------------------------------------------------------
 CREATE TABLE U_AGENT 
   (	
    ID VARCHAR(32) not null, 
	OWNER_ID VARCHAR(32), 
	OWNER_USERNAME VARCHAR(50), 
	OWNER_NAME VARCHAR(50), 
	AGENT_ID VARCHAR(32), 
	AGENT_USERNAME VARCHAR(50), 
	AGENT_NAME VARCHAR(50), 
	TIME_START DATE, 
	TIME_END DATE, 
	TIME_ADD DATE,
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_AGENT MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_AGENT MODIFY `OWNER_ID` VARCHAR(32) DEFAULT NULL COMMENT '授权人ID';
	ALTER TABLE U_AGENT MODIFY `OWNER_USERNAME` VARCHAR(50) DEFAULT NULL COMMENT '授权人账号';
	ALTER TABLE U_AGENT MODIFY `OWNER_NAME` VARCHAR(50) DEFAULT NULL COMMENT '授权人姓名';
	ALTER TABLE U_AGENT MODIFY `AGENT_ID` VARCHAR(32) DEFAULT NULL COMMENT '代理人ID';
	ALTER TABLE U_AGENT MODIFY `AGENT_USERNAME` VARCHAR(50) DEFAULT NULL COMMENT '代理人账号';
	ALTER TABLE U_AGENT MODIFY `AGENT_NAME` VARCHAR(50) DEFAULT NULL COMMENT '代理人姓名';
	ALTER TABLE U_AGENT MODIFY `TIME_START` DATE DEFAULT NULL COMMENT '代理开始时间';
	ALTER TABLE U_AGENT MODIFY `TIME_END` DATE DEFAULT NULL COMMENT '代理结束时间';
	ALTER TABLE U_AGENT MODIFY `TIME_ADD` DATE DEFAULT NULL COMMENT '创建时间';
	ALTER TABLE U_AGENT COMMENT='代理表';
 
 
 --  COMMENT ON COLUMN U_AGENT.ID IS '主键';
 -- COMMENT ON COLUMN U_AGENT.OWNER_ID IS '授权人ID';
 --  COMMENT ON COLUMN U_AGENT.OWNER_USERNAME IS '授权人账号';
 -- COMMENT ON COLUMN U_AGENT.OWNER_NAME IS '授权人姓名';
 --  COMMENT ON COLUMN U_AGENT.AGENT_ID IS '代理人ID';
 --  COMMENT ON COLUMN U_AGENT.AGENT_USERNAME IS '代理人账号';
 --  COMMENT ON COLUMN U_AGENT.AGENT_NAME IS '代理人姓名';
 --  COMMENT ON COLUMN U_AGENT.TIME_START IS '代理开始时间';
 --  COMMENT ON COLUMN U_AGENT.TIME_END IS '代理结束时间';
 --  COMMENT ON COLUMN U_AGENT.TIME_ADD IS '创建时间';
 -- COMMENT ON TABLE U_AGENT  IS '代理表';
   
-- ------------------------------------------------------------------------------------
  CREATE TABLE U_AREA 
   (	
		ID VARCHAR(50) not null, 
		PARENT_ID VARCHAR(50), 
		AREA_NAME VARCHAR(50), 
		AREA_LEVEL VARCHAR(10), 
		AREA_CODE VARCHAR(50),
		PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_AREA MODIFY `ID` VARCHAR(50) COMMENT '主键';
	ALTER TABLE U_AREA MODIFY `PARENT_ID` VARCHAR(50) DEFAULT NULL COMMENT '上级地区编码';
	ALTER TABLE U_AREA MODIFY `AREA_NAME` VARCHAR(50) DEFAULT NULL COMMENT '地区名称';
	ALTER TABLE U_AREA MODIFY `AREA_LEVEL` VARCHAR(10) DEFAULT NULL COMMENT '地区级别{0:国家,1:省,2:市,3:区县,4:街道/镇，5：社区/村}';
	ALTER TABLE U_AREA MODIFY `AREA_CODE` VARCHAR(50) DEFAULT NULL COMMENT '地区编码';
	ALTER TABLE U_AREA COMMENT='地区表';
 
 --  COMMENT ON COLUMN U_AREA.ID IS '主键';
 --  COMMENT ON COLUMN U_AREA.PARENT_ID IS '上级地区编码';
 --  COMMENT ON COLUMN U_AREA.AREA_NAME IS '地区名称';
 --  COMMENT ON COLUMN U_AREA.AREA_LEVEL IS '地区级别{0:国家,1:省,2:市,3:区县,4:街道/镇，5：社区/村}';
 --  COMMENT ON COLUMN U_AREA.AREA_CODE IS '地区编码';
 --  COMMENT ON TABLE U_AREA  IS '地区表';
-- ------------------------------------------------------------------------------------
  CREATE TABLE U_DEPARTMENT 
   (	ID VARCHAR(32) not null, 
	NAME VARCHAR(200), 
	HEADER VARCHAR(50), 
	PHONE VARCHAR(20), 
	FAX VARCHAR(20), 
	EMAIL VARCHAR(200), 
	WORK_DUTY BLOB, 
	SORT_NUM INT,
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_DEPARTMENT MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_DEPARTMENT MODIFY `NAME` VARCHAR(200) DEFAULT NULL COMMENT '部门名称';
	ALTER TABLE U_DEPARTMENT MODIFY `HEADER` VARCHAR(50) DEFAULT NULL COMMENT '负责人';
	ALTER TABLE U_DEPARTMENT MODIFY `PHONE` VARCHAR(20) DEFAULT NULL COMMENT '联系电话';
	ALTER TABLE U_DEPARTMENT MODIFY `FAX` VARCHAR(20) DEFAULT NULL COMMENT '传真';
	ALTER TABLE U_DEPARTMENT MODIFY `EMAIL` VARCHAR(200) DEFAULT NULL COMMENT '邮箱';
	ALTER TABLE U_DEPARTMENT MODIFY `WORK_DUTY` BLOB DEFAULT NULL COMMENT '工作职责';
	ALTER TABLE U_DEPARTMENT MODIFY `SORT_NUM` INT DEFAULT NULL COMMENT '排序';
	ALTER TABLE U_DEPARTMENT COMMENT='部门表,一个机构可能有多个部门';

 --  COMMENT ON COLUMN U_DEPARTMENT.ID IS '主键';
 --  COMMENT ON COLUMN U_DEPARTMENT.NAME IS '部门名称';
 --  COMMENT ON COLUMN U_DEPARTMENT.HEADER IS '负责人';
 --  COMMENT ON COLUMN U_DEPARTMENT.PHONE IS '联系电话';
 --  COMMENT ON COLUMN U_DEPARTMENT.FAX IS '传真';
 --  COMMENT ON COLUMN U_DEPARTMENT.EMAIL IS '邮箱';
 --  COMMENT ON COLUMN U_DEPARTMENT.WORK_DUTY IS '工作职责';
 --  COMMENT ON COLUMN U_DEPARTMENT.SORT_NUM IS '排序';
 --  COMMENT ON TABLE U_DEPARTMENT  IS '部门表,一个机构可能有多个部门';

 -- ------------------------------------------------------------------------------------  
  CREATE TABLE U_DISK_CODE 
   (	
    ID VARCHAR(32) not null, 
	USER_ID VARCHAR(32), 
	USERNAME VARCHAR(50), 
	REALNAME VARCHAR(50), 
	DISK_CODE VARCHAR(200), 
	EFFECTIVE_STATUS INT, 
	TIME_END DATE, 
	TIME_START DATE, 
	TIME_ADD DATE,
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_DISK_CODE MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_DISK_CODE MODIFY `USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '用户ID';
	ALTER TABLE U_DISK_CODE MODIFY `USERNAME` VARCHAR(50) DEFAULT NULL COMMENT '登录名';
	ALTER TABLE U_DISK_CODE MODIFY `REALNAME` VARCHAR(50) DEFAULT NULL COMMENT '真实姓名';
	ALTER TABLE U_DISK_CODE MODIFY `DISK_CODE` VARCHAR(200) DEFAULT NULL COMMENT 'U盘编码';
	ALTER TABLE U_DISK_CODE MODIFY `EFFECTIVE_STATUS` INT DEFAULT NULL COMMENT '永久有效{0:否,1:是}';
	ALTER TABLE U_DISK_CODE MODIFY `TIME_START` DATE DEFAULT NULL COMMENT '有效开始时间';
	ALTER TABLE U_DISK_CODE MODIFY `TIME_END` DATE DEFAULT NULL COMMENT '有效截止日期';
	ALTER TABLE U_DISK_CODE MODIFY `TIME_ADD` DATE DEFAULT NULL COMMENT '开卡时间';
	ALTER TABLE U_DISK_CODE COMMENT='开卡记录';
 
 --  COMMENT ON COLUMN U_DISK_CODE.ID IS '主键';
 --  COMMENT ON COLUMN U_DISK_CODE.USER_ID IS '用户ID';
--   COMMENT ON COLUMN U_DISK_CODE.USERNAME IS '登录名';
--   COMMENT ON COLUMN U_DISK_CODE.REALNAME IS '真实姓名';
--   COMMENT ON COLUMN U_DISK_CODE.DISK_CODE IS 'U盘编码';
--   COMMENT ON COLUMN U_DISK_CODE.EFFECTIVE_STATUS IS '永久有效{0:否,1:是}';
--   COMMENT ON COLUMN U_DISK_CODE.TIME_END IS '有效截止日期';
--   COMMENT ON COLUMN U_DISK_CODE.TIME_START IS '有效开始时间';
--   COMMENT ON COLUMN U_DISK_CODE.TIME_ADD IS '开卡时间';
--   COMMENT ON TABLE U_DISK_CODE  IS '开卡记录';
   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_GROUP_ORG 
   (	
	ID VARCHAR(32) not null, 
	GROUP_ID VARCHAR(32), 
	ORG_ID VARCHAR(32),
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_GROUP_ORG MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_GROUP_ORG MODIFY `GROUP_ID` VARCHAR(32) DEFAULT NULL COMMENT '组的ID';
	ALTER TABLE U_GROUP_ORG MODIFY `ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '机构的ID';
	ALTER TABLE U_GROUP_ORG COMMENT='组与机构关联表';
   
--  COMMENT ON COLUMN U_GROUP_ORG.ID IS '主键';
--  COMMENT ON COLUMN U_GROUP_ORG.GROUP_ID IS '组的ID';
--   COMMENT ON COLUMN U_GROUP_ORG.ORG_ID IS '机构的ID';
--   COMMENT ON TABLE U_GROUP_ORG  IS '组与机构关联表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_GROUP 
   (	
	ID VARCHAR(32) not null, 
	NAME VARCHAR(200), 
	CREATE_USER_ID VARCHAR(32), 
	CREATE_ORG_ID VARCHAR(32), 
	CATEGORY VARCHAR(10),
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_GROUP MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_GROUP MODIFY `NAME` VARCHAR(200) DEFAULT NULL COMMENT '名称';
	ALTER TABLE U_GROUP MODIFY `CREATE_USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '创建者ID';
	ALTER TABLE U_GROUP MODIFY `CREATE_ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '创建者机构ID';
	ALTER TABLE U_GROUP MODIFY `CATEGORY` VARCHAR(10) DEFAULT NULL COMMENT '分类{0:公文传送,1:待扩展}';
	ALTER TABLE U_GROUP COMMENT='机构分组';

--   COMMENT ON COLUMN U_GROUP.ID IS '主键';
--   COMMENT ON COLUMN U_GROUP.NAME IS '名称';
--   COMMENT ON COLUMN U_GROUP.CREATE_USER_ID IS '创建者ID';
--   COMMENT ON COLUMN U_GROUP.CREATE_ORG_ID IS '创建者机构ID';
--   COMMENT ON COLUMN U_GROUP.CATEGORY IS '分类{0:公文传送,1:待扩展}';
--   COMMENT ON TABLE U_GROUP  IS '机构分组';
   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_OPERATION_LOG 
   (	ID VARCHAR(32) not null, 
	USER_ID VARCHAR(32), 
	USER_USERNAME VARCHAR(50), 
	USER_NAME VARCHAR(50), 
	DATA_ID VARCHAR(32), 
	DESCRIPTION VARCHAR(200), 
	TEXT VARCHAR(2000), 
	IP VARCHAR(50), 
	TIME DATE, 
	TYPE INT,
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_OPERATION_LOG MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_OPERATION_LOG MODIFY `USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '操作用户ID';
	ALTER TABLE U_OPERATION_LOG MODIFY `USER_USERNAME` VARCHAR(50) DEFAULT NULL COMMENT '操作用户名';
	ALTER TABLE U_OPERATION_LOG MODIFY `USER_NAME` VARCHAR(50) DEFAULT NULL COMMENT '操作用户真实姓名';
	ALTER TABLE U_OPERATION_LOG MODIFY `DATA_ID` VARCHAR(32) DEFAULT NULL COMMENT '操作数据的ID';
	ALTER TABLE U_OPERATION_LOG MODIFY `DESCRIPTION` VARCHAR(200) DEFAULT NULL COMMENT '操作描述,查看，添加，更新，删除等';
	ALTER TABLE U_OPERATION_LOG MODIFY `TEXT` VARCHAR(2000) DEFAULT NULL COMMENT '操作内容';
	ALTER TABLE U_OPERATION_LOG MODIFY `IP` VARCHAR(50) DEFAULT NULL COMMENT '操作人的IP地址';
	ALTER TABLE U_OPERATION_LOG MODIFY `TIME` DATE DEFAULT NULL COMMENT '操作时间';
	ALTER TABLE U_OPERATION_LOG MODIFY `TYPE` INT DEFAULT NULL COMMENT '操作类型{0:登录失败,1:登录成功,2:操作日志}';
	ALTER TABLE U_OPERATION_LOG COMMENT='操作日志';
 
--   COMMENT ON COLUMN U_OPERATION_LOG.ID IS '主键';
--   COMMENT ON COLUMN U_OPERATION_LOG.USER_ID IS '操作用户ID';
--   COMMENT ON COLUMN U_OPERATION_LOG.USER_USERNAME IS '操作用户名';
--   COMMENT ON COLUMN U_OPERATION_LOG.USER_NAME IS '操作用户真实姓名';
--   COMMENT ON COLUMN U_OPERATION_LOG.DATA_ID IS '操作数据的ID';
--   COMMENT ON COLUMN U_OPERATION_LOG.DESCRIPTION IS '操作描述,查看，添加，更新，删除等';
--   COMMENT ON COLUMN U_OPERATION_LOG.TEXT IS '操作内容';
--   COMMENT ON COLUMN U_OPERATION_LOG.IP IS '操作人的IP地址';
--   COMMENT ON COLUMN U_OPERATION_LOG.TIME IS '操作时间';
--   COMMENT ON COLUMN U_OPERATION_LOG.TYPE IS '操作类型{0:登录失败,1:登录成功,2:操作日志}';
--   COMMENT ON TABLE U_OPERATION_LOG  IS '操作日志';
   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_ORG_AREA 
   (	
	ID VARCHAR(32) not null, 
	ORG_ID VARCHAR(32), 
	AREA_CODE VARCHAR(50),
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_ORG_AREA MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_ORG_AREA MODIFY `ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '机构ID';
	ALTER TABLE U_ORG_AREA MODIFY `AREA_CODE` VARCHAR(50) DEFAULT NULL COMMENT '地区编码';
	ALTER TABLE U_ORG_AREA COMMENT='机构地区表';
 
--  COMMENT ON COLUMN U_ORG_AREA.ID IS '主键';
--   COMMENT ON COLUMN U_ORG_AREA.ORG_ID IS '机构ID';
--   COMMENT ON COLUMN U_ORG_AREA.AREA_CODE IS '地区编码';
--   COMMENT ON TABLE U_ORG_AREA  IS '机构地区表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_ORG_DEPARTMENT 
   (	
	ID VARCHAR(32) not null, 
	ORG_ID VARCHAR(32), 
	DEPARTMENT_ID VARCHAR(32),
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_ORG_DEPARTMENT MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_ORG_DEPARTMENT MODIFY `ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '机构ID';
	ALTER TABLE U_ORG_DEPARTMENT MODIFY `DEPARTMENT_ID` VARCHAR(32) DEFAULT NULL COMMENT '部门ID';
	ALTER TABLE U_ORG_DEPARTMENT COMMENT='机构部门表';
 
--   COMMENT ON COLUMN U_ORG_DEPARTMENT.ID IS '主键';
--   COMMENT ON COLUMN U_ORG_DEPARTMENT.ORG_ID IS '机构ID';
--   COMMENT ON COLUMN U_ORG_DEPARTMENT.DEPARTMENT_ID IS '部门ID';
--   COMMENT ON TABLE U_ORG_DEPARTMENT  IS '机构部门表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_ORG 
   (	
	ID VARCHAR(32) not null, 
	FATHER_ID VARCHAR(32), 
	NAME NVARCHAR(50), 
	PHONE_PUBLIC NVARCHAR(20), 
	PHONE_OVERSEEE NVARCHAR(20), 
	ADDRESS NVARCHAR(200), 
	ZIPCODE NVARCHAR(6), 
	WEBSITE NVARCHAR(200), 
	EMAIL NVARCHAR(200), 
	WORK_DUTY BLOB, 
	NATURE NVARCHAR(10), 
	SORT_NUM INT,
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_ORG MODIFY `ID` VARCHAR(32) COMMENT '主键,机构编号10位，2#2#2#2#2结构';	
	ALTER TABLE U_ORG MODIFY `FATHER_ID` VARCHAR(32) DEFAULT NULL COMMENT '上级机构ID';	
	ALTER TABLE U_ORG MODIFY `NAME` VARCHAR(50) DEFAULT NULL COMMENT '机构名称';
	ALTER TABLE U_ORG MODIFY `PHONE_PUBLIC` VARCHAR(20) DEFAULT NULL COMMENT '公开电话';
	ALTER TABLE U_ORG MODIFY `PHONE_OVERSEEE` VARCHAR(20) DEFAULT NULL COMMENT '监督电话';
	ALTER TABLE U_ORG MODIFY `ADDRESS` VARCHAR(200) DEFAULT NULL COMMENT '地址';
	ALTER TABLE U_ORG MODIFY `ZIPCODE` VARCHAR(6) DEFAULT NULL COMMENT '邮编';
	ALTER TABLE U_ORG MODIFY `WEBSITE` VARCHAR(200) DEFAULT NULL COMMENT '网站';
	ALTER TABLE U_ORG MODIFY `EMAIL` VARCHAR(200) DEFAULT NULL COMMENT '邮箱';
	ALTER TABLE U_ORG MODIFY `WORK_DUTY` BLOB DEFAULT NULL COMMENT '工作职责';
	ALTER TABLE U_ORG MODIFY `NATURE` NVARCHAR(10) DEFAULT NULL COMMENT '性质{1:机构,2:经济开发区}';
	ALTER TABLE U_ORG MODIFY `SORT_NUM` INT DEFAULT NULL COMMENT '排序';
	ALTER TABLE U_ORG COMMENT='机构表';

--   COMMENT ON COLUMN U_ORG.ID IS '主键,机构编号10位，2#2#2#2#2结构';
--  COMMENT ON COLUMN U_ORG.FATHER_ID IS '上级机构ID';
--   COMMENT ON COLUMN U_ORG.NAME IS '机构名称';
--   COMMENT ON COLUMN U_ORG.PHONE_PUBLIC IS '公开电话';
--   COMMENT ON COLUMN U_ORG.PHONE_OVERSEEE IS '监督电话'; 
--   COMMENT ON COLUMN U_ORG.ADDRESS IS '地址';
--   COMMENT ON COLUMN U_ORG.ZIPCODE IS '邮编';
--  COMMENT ON COLUMN U_ORG.WEBSITE IS '网站';
--  COMMENT ON COLUMN U_ORG.EMAIL IS '邮箱';
--   COMMENT ON COLUMN U_ORG.WORK_DUTY IS '工作职责';
--   COMMENT ON COLUMN U_ORG.NATURE IS '性质{1:机构,2:经济开发区}';
--   COMMENT ON COLUMN U_ORG.SORT_NUM IS '排序';
--   COMMENT ON TABLE U_ORG  IS '机构表';
   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_PERSON_USER 
   (	
	ID VARCHAR(32) not null, 
	PERSON_ID VARCHAR(32), 
	USER_ID VARCHAR(32),
	PRIMARY KEY(ID)
   ); 
   
    ALTER TABLE U_PERSON_USER MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_PERSON_USER MODIFY `PERSON_ID` VARCHAR(32) DEFAULT NULL COMMENT '人员组的ID';
	ALTER TABLE U_PERSON_USER MODIFY `USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '用户的ID';
	ALTER TABLE U_PERSON_USER COMMENT='人员与用户对应关系表';

--   COMMENT ON COLUMN U_PERSON_USER.ID IS '主键';
--   COMMENT ON COLUMN U_PERSON_USER.PERSON_ID IS '人员组的ID';
--   COMMENT ON COLUMN U_PERSON_USER.USER_ID IS '用户的ID';
--   COMMENT ON TABLE U_PERSON_USER  IS '人员与用户对应关系表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_PERSON 
   (	
	ID VARCHAR(32) not null, 
	NAME VARCHAR(200), 
	CREATE_USER_ID VARCHAR(32), 
	CREATE_ORG_ID VARCHAR(32), 
	CATEGORY VARCHAR(10),
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_PERSON MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_PERSON MODIFY `NAME` VARCHAR(200) DEFAULT NULL COMMENT '名称';
	ALTER TABLE U_PERSON MODIFY `CREATE_USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '创建者ID';
	ALTER TABLE U_PERSON MODIFY `CREATE_ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '创建者机构ID';
	ALTER TABLE U_PERSON MODIFY `CATEGORY` VARCHAR(10) DEFAULT NULL COMMENT '分类{0:局长,1:待扩展}';
	ALTER TABLE U_PERSON COMMENT='人员组';
 
--   COMMENT ON COLUMN U_PERSON.ID IS '主键';
--   COMMENT ON COLUMN U_PERSON.NAME IS '名称';
--   COMMENT ON COLUMN U_PERSON.CREATE_USER_ID IS '创建者ID';
--   COMMENT ON COLUMN U_PERSON.CREATE_ORG_ID IS '创建者机构ID';
--   COMMENT ON COLUMN U_PERSON.CATEGORY IS '分类{0:局长,1:待扩展}';
--   COMMENT ON TABLE U_PERSON  IS '人员组';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_ROLE_ORG_DEPARTMENT 
   (	
	ID VARCHAR(32) not null, 
	ROLE_ID VARCHAR(32), 
	ORG_ID VARCHAR(32), 
	DEPARTMENT_ID VARCHAR(32),
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_ROLE_ORG_DEPARTMENT MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_ROLE_ORG_DEPARTMENT MODIFY `ROLE_ID` VARCHAR(32) DEFAULT NULL COMMENT '角色的ID';
	ALTER TABLE U_ROLE_ORG_DEPARTMENT MODIFY `ORG_ID` VARCHAR(32) DEFAULT NULL COMMENT '机构的ID';
	ALTER TABLE U_ROLE_ORG_DEPARTMENT MODIFY `DEPARTMENT_ID` VARCHAR(32) DEFAULT NULL COMMENT '部门的ID';
	ALTER TABLE U_ROLE_ORG_DEPARTMENT COMMENT='角色对应的机构，部门表';
 
--   COMMENT ON COLUMN U_ROLE_ORG_DEPARTMENT.ID IS '主键';
--   COMMENT ON COLUMN U_ROLE_ORG_DEPARTMENT.ROLE_ID IS '角色的ID';
--   COMMENT ON COLUMN U_ROLE_ORG_DEPARTMENT.ORG_ID IS '机构的ID';
--   COMMENT ON COLUMN U_ROLE_ORG_DEPARTMENT.DEPARTMENT_ID IS '部门的ID';
--   COMMENT ON TABLE U_ROLE_ORG_DEPARTMENT  IS '角色对应的机构，部门表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_ROLE 
   (	
	ID VARCHAR(32) not null, 
	NAME VARCHAR(50), 
	PERMS BLOB, 
	IS_ALL_PERMS INT, 
	DESCRIPTION VARCHAR(500), 
	IS_RANGE_PERMS INT,
	PRIMARY KEY(ID)
   );
   
    ALTER TABLE U_ROLE MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_ROLE MODIFY `NAME` VARCHAR(50) DEFAULT NULL COMMENT '角色名称';
	ALTER TABLE U_ROLE MODIFY `PERMS` BLOB DEFAULT NULL COMMENT '角色功能权限';
	ALTER TABLE U_ROLE MODIFY `IS_ALL_PERMS` INT DEFAULT NULL COMMENT '是否拥有所有的功能权限{1:是，0:否}';
	ALTER TABLE U_ROLE MODIFY `DESCRIPTION` VARCHAR(500) DEFAULT NULL COMMENT '角色的简单描述';
	ALTER TABLE U_ROLE MODIFY `IS_RANGE_PERMS` INT DEFAULT NULL COMMENT '自身范围还是机构范围{0:自身范围,1:机构范围}';
	ALTER TABLE U_ROLE COMMENT='角色表';
 
--   COMMENT ON COLUMN U_ROLE.ID IS '主键';
--   COMMENT ON COLUMN U_ROLE.NAME IS '角色名称';
--   COMMENT ON COLUMN U_ROLE.PERMS IS '角色功能权限';
--   COMMENT ON COLUMN U_ROLE.IS_ALL_PERMS IS '是否拥有所有的功能权限{1:是，0:否}';
--   COMMENT ON COLUMN U_ROLE.DESCRIPTION IS '角色的简单描述';
--   COMMENT ON COLUMN U_ROLE.IS_RANGE_PERMS IS '自身范围还是机构范围{0:自身范围,1:机构范围}';
--   COMMENT ON TABLE U_ROLE  IS '角色表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_USER_ROLE 
   (	
	ID VARCHAR(32) not null, 
	USER_ID VARCHAR(32), 
	ROLE_ID VARCHAR(32),
	PRIMARY KEY(ID)
   );
 
	ALTER TABLE U_USER_ROLE MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_USER_ROLE MODIFY `USER_ID` VARCHAR(32) DEFAULT NULL COMMENT '用户表主键';
	ALTER TABLE U_USER_ROLE MODIFY `ROLE_ID` VARCHAR(50) DEFAULT NULL COMMENT '角色表主键';
	ALTER TABLE U_USER_ROLE COMMENT='用户角色关联表';

--   COMMENT ON COLUMN U_USER_ROLE.ID IS '主键';
--   COMMENT ON COLUMN U_USER_ROLE.USER_ID IS '用户表主键';
--   COMMENT ON COLUMN U_USER_ROLE.ROLE_ID IS '角色表主键';
--   COMMENT ON TABLE U_USER_ROLE  IS '用户角色关联表';

   -- ------------------------------------------------------------------------------------
     CREATE TABLE U_USER 
   (	
	ID VARCHAR(32) not null, 
	USERNAME VARCHAR(50), 
	PASSWORD VARCHAR(50), 
	NAME VARCHAR(50), 
	GENDER INT, 
	MOBIE VARCHAR(20), 
	PHONE VARCHAR(20), 
	EMAIL VARCHAR(200), 
	TIME_ADD DATE, 
	SALT VARCHAR(50), 
	STATUS INT, 
	SORT_NUM INT, 
	CURRENT_ROLE_ID VARCHAR(32),
	BIRTHDAY DATE,
	PRIMARY KEY(ID)
   ); 
   
    ALTER TABLE U_USER MODIFY `ID` VARCHAR(32) COMMENT '主键';
	ALTER TABLE U_USER MODIFY `USERNAME` VARCHAR(50) DEFAULT NULL COMMENT '登录账号';
	ALTER TABLE U_USER MODIFY `PASSWORD` VARCHAR(50) DEFAULT NULL COMMENT '登录密码';
	ALTER TABLE U_USER MODIFY `NAME` VARCHAR(50) DEFAULT NULL COMMENT '真实姓名';
	ALTER TABLE U_USER MODIFY `GENDER` INT DEFAULT NULL COMMENT '性别{1：男，0:女，2：保密}';
	ALTER TABLE U_USER MODIFY `MOBIE` VARCHAR(20) DEFAULT NULL COMMENT '手机';
	ALTER TABLE U_USER MODIFY `PHONE` VARCHAR(20) DEFAULT NULL COMMENT '固定电话';
	ALTER TABLE U_USER MODIFY `EMAIL` VARCHAR(200) DEFAULT NULL COMMENT '邮箱';
	ALTER TABLE U_USER MODIFY `TIME_ADD` DATE DEFAULT NULL COMMENT '添加时间';
	ALTER TABLE U_USER MODIFY `SALT` VARCHAR(50) DEFAULT NULL COMMENT '加密混淆码';
	ALTER TABLE U_USER MODIFY `STATUS` INT DEFAULT NULL COMMENT '状态{1:正常,2:锁定,3:待验证}';
	ALTER TABLE U_USER MODIFY `SORT_NUM` INT DEFAULT NULL COMMENT '排序';
	ALTER TABLE U_USER MODIFY `CURRENT_ROLE_ID` VARCHAR(32) DEFAULT NULL COMMENT '当前的角色ID';
	ALTER TABLE U_USER MODIFY `BIRTHDAY` DATE DEFAULT NULL COMMENT '生日';
	ALTER TABLE U_USER COMMENT='后台用户表';

--   COMMENT ON COLUMN U_USER.USERNAME IS '登录账号';
--   COMMENT ON COLUMN U_USER.PASSWORD IS '登录密码';
--   COMMENT ON COLUMN U_USER.NAME IS '真实姓名';
--   COMMENT ON COLUMN U_USER.GENDER IS '性别{1：男，0:女，2：保密}';
--   COMMENT ON COLUMN U_USER.MOBIE IS '手机';
--   COMMENT ON COLUMN U_USER.PHONE IS '固定电话';
--   COMMENT ON COLUMN U_USER.EMAIL IS '邮箱';
--   COMMENT ON COLUMN U_USER.TIME_ADD IS '添加时间';
--  COMMENT ON COLUMN U_USER.SALT IS '加密混淆码';
--   COMMENT ON COLUMN U_USER.STATUS IS '状态{1:正常,2:锁定,3:待验证}';
--   COMMENT ON COLUMN U_USER.SORT_NUM IS '排序';
--   COMMENT ON COLUMN U_USER.CURRENT_ROLE_ID IS '当前的角色ID';
--   COMMENT ON COLUMN U_USER.BIRTHDAY IS '生日';
--   COMMENT ON TABLE U_USER  IS '后台用户表';

   -- ------------------------------------------------------------------------------------
   
alter table U_ORG_DEPARTMENT
  add constraint U_ORG_DEPARTMENT_DEPTID_FG foreign key (DEPARTMENT_ID)
  references U_DEPARTMENT (ID) on delete cascade;
  
alter table U_ORG_DEPARTMENT
  add constraint U_ORG_DEPARTMENT_ORGID_FG foreign key (ORG_ID)
  references U_ORG (ID) on delete cascade;
  
alter table U_USER_ROLE
  add constraint U_USER_ROLE_USERID_FG foreign key (USER_ID)
  references U_USER(ID) on delete cascade;
  
alter table U_USER_ROLE
  add constraint U_USER_ROLE_ROLEID_FG foreign key (ROLE_ID)
  references U_ROLE(ID) on delete cascade;
  
alter table U_ROLE_ORG_DEPARTMENT
  add constraint UROLEORGDEPARTMENT_ROLEID_FG foreign key (ROLE_ID)
  references U_ROLE(ID) on delete cascade;
  
alter table U_ROLE_ORG_DEPARTMENT
  add constraint UROLEORGDEPARTMENT_ORGID_FG foreign key (ORG_ID)
  references U_ORG(ID) on delete cascade;
  
alter table U_ROLE_ORG_DEPARTMENT
  add constraint UROLEORGDEPARTMENT_DEPTID_FG foreign key (DEPARTMENT_ID)
  references U_DEPARTMENT(ID) on delete cascade;

alter table U_ORG_AREA
  add constraint U_ORG_AREA_ORGID_FG foreign key (ORG_ID)
  references U_ORG(ID) on delete cascade;


insert into U_USER (id, username, password, name, gender, mobie, phone, email, time_add, salt, status, sort_num, current_role_id)
values ('9e52a24cca9949f389f2a094d2360b8d', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管', 1, '5454', '5454500', 'ryhme@foxmail.com', now(), '54545', 1, 1, '03fed1de57a6433f82dd1cc0b35cb1ea');

insert into U_ROLE (id,name,perms,is_all_perms,description,is_range_perms) 
values('03fed1de57a6433f82dd1cc0b35cb1ea','超级管理员',null,'1','','');

insert into U_ORG(id,father_id,name,phone_public,phone_overseee,address,zipcode,website,email,work_duty,nature,sort_num)
values('33','','浙江省食品药品监督管理局','(0571)88903246','(0571)88903373','杭州市莫干山路文北巷27号','310012','http://www.zjfda.gov.cn/','office@zjfda.gov.cn',null,'1','0');

insert into U_DEPARTMENT(id,name,header,phone,fax,email,work_duty,sort_num)
values('9c999883fd3a44d48dfcc143c44c6323','办公室','','','','',null,'2');

insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33000000', '0000000000', '浙江省', '1', '3300000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010000', '3300000000', '杭州市', '2', '3301000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010100', '3301000000', '市辖区', '3', '3301010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010200', '3301000000', '上城区', '3', '3301020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010300', '3301000000', '下城区', '3', '3301030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010400', '3301000000', '江干区', '3', '3301040000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010500', '3301000000', '拱墅区', '3', '3301050000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010600', '3301000000', '西湖区', '3', '3301060000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010800', '3301000000', '滨江区', '3', '3301080000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33010900', '3301000000', '萧山区', '3', '3301090000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33011000', '3301000000', '余杭区', '3', '3301100000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33012200', '3301000000', '桐庐县', '3', '3301220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33012700', '3301000000', '淳安县', '3', '3301270000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33018200', '3301000000', '建德市', '3', '3301820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33018300', '3301000000', '富阳市', '3', '3301830000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33018500', '3301000000', '临安市', '3', '3301850000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020000', '3300000000', '宁波市', '2', '3302000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020100', '3302000000', '市辖区', '3', '3302010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020300', '3302000000', '海曙区', '3', '3302030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020400', '3302000000', '江东区', '3', '3302040000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020500', '3302000000', '江北区', '3', '3302050000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33020600', '3302000000', '北仑区', '3', '3302060000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33021100', '3302000000', '镇海区', '3', '3302110000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33021200', '3302000000', '鄞州区', '3', '3302120000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33022500', '3302000000', '象山县', '3', '3302250000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33022600', '3302000000', '宁海县', '3', '3302260000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33028100', '3302000000', '余姚市', '3', '3302810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33028200', '3302000000', '慈溪市', '3', '3302820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33028300', '3302000000', '奉化市', '3', '3302830000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030000', '3300000000', '温州市', '2', '3303000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030100', '3303000000', '市辖区', '3', '3303010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030200', '3303000000', '鹿城区', '3', '3303020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030201', '3303020000', '五马街道', '4', '3303020100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030202', '3303020000', '七都街道', '4', '3303020200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030300', '3303000000', '龙湾区', '3', '3303030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030301', '3303030000', '永中街道', '4', '3303030100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030302', '3303030000', '蒲州街道', '4', '3303030200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030303', '3303030000', '海滨街道', '4', '3303030300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030304', '3303030000', '永兴街道', '4', '3303030400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030305', '3303030000', '海城街道', '4', '3303030500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030306', '3303030000', '状元街道', '4', '3303030600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030307', '3303030000', '瑶溪街道', '4', '3303030700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030308', '3303030000', '沙城街道', '4', '3303030800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030309', '3303030000', '天河街道', '4', '3303030900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030310', '3303030000', '灵昆街道', '4', '3303031000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030311', '3303030000', '星海街道', '4', '3303031100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030400', '3303000000', '瓯海区', '3', '3303040000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030401', '3303040000', '景山街道', '4', '3303040100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030402', '3303040000', '梧田街道', '4', '3303040200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030403', '3303040000', '南白象街道', '4', '3303040300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030404', '3303040000', '茶山街道', '4', '3303040400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030405', '3303040000', '娄桥街道', '4', '3303040500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030406', '3303040000', '新桥街道', '4', '3303040600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030407', '3303040000', '三垟街道', '4', '3303040700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030408', '3303040000', '瞿溪街道', '4', '3303040800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030409', '3303040000', '郭溪街道', '4', '3303040900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030410', '3303040000', '潘桥街道', '4', '3303041000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030411', '3303040000', '丽岙街道', '4', '3303041100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030412', '3303040000', '仙岩街道', '4', '3303041200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33030413', '3303040000', '雅泽镇', '4', '3303041300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032200', '3303000000', '洞头县', '3', '3303220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032201', '3303220000', '北岙街道', '4', '3303220100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032202', '3303220000', '东屏街道', '4', '3303220200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032203', '3303220000', '元觉街道', '4', '3303220300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032204', '3303220000', '霓屿街道', '4', '3303220400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032205', '3303220000', '大门镇', '4', '3303220500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032206', '3303220000', '鹿西乡', '4', '3303220600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032400', '3303000000', '永嘉县', '3', '3303240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032401', '3303240000', '东城街道', '4', '3303240100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032402', '3303240000', '北城街道', '4', '3303240200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032403', '3303240000', '南城街道', '4', '3303240300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032404', '3303240000', '江北街道', '4', '3303240400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032405', '3303240000', '东瓯街道', '4', '3303240500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032406', '3303240000', '三江街道', '4', '3303240600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032407', '3303240000', '黄田街道', '4', '3303240700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032408', '3303240000', '乌牛街道', '4', '3303240800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032409', '3303240000', '桥头镇', '4', '3303240900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032410', '3303240000', '桥下镇', '4', '3303241000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032411', '3303240000', '大若岩镇', '4', '3303241100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032412', '3303240000', '碧莲镇', '4', '3303241200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032413', '3303240000', '巽宅镇', '4', '3303241300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032414', '3303240000', '岩头镇', '4', '3303241400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032415', '3303240000', '枫林镇', '4', '3303241500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032416', '3303240000', '岩坦镇', '4', '3303241600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032417', '3303240000', '沙头镇', '4', '3303241700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032418', '3303240000', '鹤盛镇', '4', '3303241800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032600', '3303000000', '平阳县', '3', '3303260000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032601', '3303260000', '昆阳街道', '4', '3303260100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032602', '3303260000', '鳌江街道', '4', '3303260200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032603', '3303260000', '水头街道', '4', '3303260300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032604', '3303260000', '萧江街道', '4', '3303260400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032605', '3303260000', '麻步街道', '4', '3303260500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032606', '3303260000', '腾蛟街道', '4', '3303260600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032607', '3303260000', '山门街道', '4', '3303260700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032608', '3303260000', '顺溪街道', '4', '3303260800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032609', '3303260000', '南雁街道', '4', '3303260900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032610', '3303260000', '万全街道', '4', '3303261000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032611', '3303260000', '青街畲族乡', '4', '3303261100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032700', '3303000000', '苍南县', '3', '3303270000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032701', '3303270000', '灵犀街道', '4', '3303270100');
commit;

insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032702', '3303270000', '龙港街道', '4', '3303270200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032703', '3303270000', '宜山街道', '4', '3303270300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032704', '3303270000', '钱库街道', '4', '3303270400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032705', '3303270000', '金乡街道', '4', '3303270500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032706', '3303270000', '藻溪街道', '4', '3303270600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032707', '3303270000', '桥墩街道', '4', '3303270700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032708', '3303270000', '矾山街道', '4', '3303270800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032709', '3303270000', '赤溪街道', '4', '3303270900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032710', '3303270000', '马站街道', '4', '3303271000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032711', '3303270000', '凤阳畲族乡', '4', '3303271100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032712', '3303270000', '岱岭畲族乡', '4', '3303271200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032800', '3303000000', '文成县', '3', '3303280000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032801', '3303280000', '大峃街道', '4', '3303280100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032802', '3303280000', '百丈漈街道', '4', '3303280200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032803', '3303280000', '南田街道', '4', '3303280300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032804', '3303280000', '溪坑畲族街道', '4', '3303280400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032805', '3303280000', '黄坦街道', '4', '3303280500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032806', '3303280000', '珊溪街道', '4', '3303280600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032807', '3303280000', '巨屿街道', '4', '3303280700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032808', '3303280000', '玉壶街道', '4', '3303280800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032809', '3303280000', '峃口街道', '4', '3303280900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032810', '3303280000', '周山畲族乡', '4', '3303281000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032900', '3303000000', '泰顺县', '3', '3303290000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032901', '3303290000', '罗阳街道', '4', '3303290100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032902', '3303290000', '司前畲族街道', '4', '3303290200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032903', '3303290000', '百丈街道', '4', '3303290300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032904', '3303290000', '筱村街道', '4', '3303290400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032905', '3303290000', '泗溪街道', '4', '3303290500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032906', '3303290000', '彭溪街道', '4', '3303290600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032907', '3303290000', '雅阳街道', '4', '3303290700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032908', '3303290000', '仕阳街道', '4', '3303290800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032909', '3303290000', '三魁街道', '4', '3303290900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33032910', '3303290000', '竹里畲族乡', '4', '3303291000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038100', '3303000000', '瑞安市', '3', '3303810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038101', '3303810000', '安阳街道', '4', '3303810100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038102', '3303810000', '玉海街道', '4', '3303810200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038103', '3303810000', '锦湖街道', '4', '3303810300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038104', '3303810000', '东山街道', '4', '3303810400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038105', '3303810000', '上望街道', '4', '3303810500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038106', '3303810000', '莘塍街道', '4', '3303810600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038107', '3303810000', '汀田街道', '4', '3303810700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038108', '3303810000', '飞云街道', '4', '3303810800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038109', '3303810000', '仙降街道', '4', '3303810900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038110', '3303810000', '南滨街道', '4', '3303811000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038111', '3303810000', '塘下镇', '4', '3303811100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038112', '3303810000', '马屿镇', '4', '3303811200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038113', '3303810000', '陶山镇', '4', '3303811300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038114', '3303810000', '湖岭镇', '4', '3303811400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038115', '3303810000', '高楼镇', '4', '3303811500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038200', '3303000000', '乐清市', '3', '3303820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038201', '3303820000', '城东街道', '4', '3303820100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038202', '3303820000', '乐成街道', '4', '3303820200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038203', '3303820000', '城南街道', '4', '3303820300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038204', '3303820000', '盐盆街道', '4', '3303820400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038205', '3303820000', '翁垟街道', '4', '3303820500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038206', '3303820000', '白石街道', '4', '3303820600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038207', '3303820000', '石帆街道', '4', '3303820700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038208', '3303820000', '天成街道', '4', '3303820800');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038209', '3303820000', '大荆镇', '4', '3303820900');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038210', '3303820000', '仙溪镇', '4', '3303821000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038211', '3303820000', '雁荡镇', '4', '3303821100');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038212', '3303820000', '芙蓉镇', '4', '3303821200');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038213', '3303820000', '清江镇', '4', '3303821300');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038214', '3303820000', '虹桥镇', '4', '3303821400');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038215', '3303820000', '淡溪镇', '4', '3303821500');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038216', '3303820000', '柳市镇', '4', '3303821600');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33038217', '3303820000', '北白象镇', '4', '3303821700');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33040000', '3300000000', '嘉兴市', '2', '3304000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33040100', '3304000000', '市辖区', '3', '3304010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33040200', '3304000000', '秀城区', '3', '3304020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33041100', '3304000000', '秀洲区', '3', '3304110000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33042100', '3304000000', '嘉善县', '3', '3304210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33042400', '3304000000', '海盐县', '3', '3304240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33048100', '3304000000', '海宁市', '3', '3304810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33048200', '3304000000', '平湖市', '3', '3304820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33048300', '3304000000', '桐乡市', '3', '3304830000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33050000', '3300000000', '湖州市', '2', '3305000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33050100', '3305000000', '市辖区', '3', '3305010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33050200', '3305000000', '吴兴区', '3', '3305020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33050300', '3305000000', '南浔区', '3', '3305030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33052100', '3305000000', '德清县', '3', '3305210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33052200', '3305000000', '长兴县', '3', '3305220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33052300', '3305000000', '安吉县', '3', '3305230000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33060000', '3300000000', '绍兴市', '2', '3306000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33060100', '3306000000', '市辖区', '3', '3306010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33060200', '3306000000', '越城区', '3', '3306020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33062100', '3306000000', '绍兴县', '3', '3306210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33062400', '3306000000', '新昌县', '3', '3306240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33068100', '3306000000', '诸暨市', '3', '3306810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33068200', '3306000000', '上虞市', '3', '3306820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33068300', '3306000000', '嵊州市', '3', '3306830000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33070000', '3300000000', '金华市', '2', '3307000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33070100', '3307000000', '市辖区', '3', '3307010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33070200', '3307000000', '婺城区', '3', '3307020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33070300', '3307000000', '金东区', '3', '3307030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33072300', '3307000000', '武义县', '3', '3307230000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33072600', '3307000000', '浦江县', '3', '3307260000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33072700', '3307000000', '磐安县', '3', '3307270000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33078100', '3307000000', '兰溪市', '3', '3307810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33078200', '3307000000', '义乌市', '3', '3307820000');
commit;

insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33078300', '3307000000', '东阳市', '3', '3307830000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33078400', '3307000000', '永康市', '3', '3307840000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33080000', '3300000000', '衢州市', '2', '3308000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33080100', '3308000000', '市辖区', '3', '3308010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33080200', '3308000000', '柯城区', '3', '3308020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33080300', '3308000000', '衢江区', '3', '3308030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33082200', '3308000000', '常山县', '3', '3308220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33082400', '3308000000', '开化县', '3', '3308240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33082500', '3308000000', '龙游县', '3', '3308250000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33088100', '3308000000', '江山市', '3', '3308810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33090000', '3300000000', '舟山市', '2', '3309000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33090100', '3309000000', '市辖区', '3', '3309010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33090200', '3309000000', '定海区', '3', '3309020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33090300', '3309000000', '普陀区', '3', '3309030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33092100', '3309000000', '岱山县', '3', '3309210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33092200', '3309000000', '嵊泗县', '3', '3309220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33100000', '3300000000', '台州市', '2', '3310000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33100100', '3310000000', '市辖区', '3', '3310010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33100200', '3310000000', '椒江区', '3', '3310020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33100300', '3310000000', '黄岩区', '3', '3310030000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33100400', '3310000000', '路桥区', '3', '3310040000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33102100', '3310000000', '玉环县', '3', '3310210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33102200', '3310000000', '三门县', '3', '3310220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33102300', '3310000000', '天台县', '3', '3310230000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33102400', '3310000000', '仙居县', '3', '3310240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33108100', '3310000000', '温岭市', '3', '3310810000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33108200', '3310000000', '临海市', '3', '3310820000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33110000', '3300000000', '丽水市', '2', '3311000000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33110100', '3311000000', '市辖区', '3', '3311010000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33110200', '3311000000', '莲都区', '3', '3311020000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112100', '3311000000', '青田县', '3', '3311210000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112200', '3311000000', '缙云县', '3', '3311220000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112300', '3311000000', '遂昌县', '3', '3311230000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112400', '3311000000', '松阳县', '3', '3311240000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112500', '3311000000', '云和县', '3', '3311250000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112600', '3311000000', '庆元县', '3', '3311260000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33112700', '3311000000', '景宁畲族自治县', '3', '3311270000');
insert into U_AREA (id, parent_id, area_name, area_level, area_code)
values ('33118100', '3311000000', '龙泉市', '3', '3311810000');

insert into U_ORG_AREA(id,org_id,area_code)
values('63095f00357f478498d453f5f17f7aff','33','3300000000');


insert into U_ORG_DEPARTMENT(id,org_id,department_id)
values('8299d19514fb4261b85fee3d73dd1b7d','33','9c999883fd3a44d48dfcc143c44c6323');

insert into U_USER_ROLE (id, user_id, role_id)
values ('a5bb65ec012c4922b1afc92c754d8c60', '9e52a24cca9949f389f2a094d2360b8d', '03fed1de57a6433f82dd1cc0b35cb1ea');

insert into U_ROLE_ORG_DEPARTMENT(id,role_id,org_id,department_id)
values('7aa3590da1594cf49bb7faf01e80f77f','03fed1de57a6433f82dd1cc0b35cb1ea','33','9c999883fd3a44d48dfcc143c44c6323');

commit;


CREATE TABLE `Article` (
`ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号' ,
`CATEGORY_ID`  varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '栏目编号{001:个人总结,002:技能提升,003:转载收藏,004生活琐事:,005:其他,006:首页介绍}' ,
`TITLE`  varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '标题' ,
`CONTENT`  blob NULL COMMENT '文章内容' ,
`LINK`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '文章链接' ,
`COLOR`  varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '标题颜色 ' ,
`IMAGE`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '文章图片' ,
`KEYWORDS`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '关键字 ' ,
`DESCRIPTION`  varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '描述、摘要 ' ,
`WEIGHT`  integer(11) NULL COMMENT '权重，越大越靠前 ' ,
`WEIGHT_DATE`  date NULL COMMENT '权重期限 ' ,
`PUSH_PARISE`  integer(11) NULL COMMENT '点赞数量 ' ,
`HITS`  integer(11) NULL COMMENT '点击数' ,
`POSID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '推荐位，多选' ,
`CUSTOM_CONTENT_VIEW`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '自定义内容视图' ,
`VIEW_CONFIG`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '视图配置' ,
`CREATE_BY`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '创建者' ,
`CREATE_DATE`  date NULL COMMENT '创建时间' ,
`UPDATE_BY`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '更新者' ,
`UPDATE_DATE`  date NULL COMMENT '更新日期' ,
`REMARKS`  varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '备注信息 ' ,
`DEL_FLAG`  char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '删除标记' ,
`vulnerable_num`  integer(11) NULL COMMENT '伤不起点击数' ,
`like_num`  integer(11) NULL COMMENT '喜欢点击数' ,
`interested_num`  integer(11) NULL COMMENT '感兴趣点击数' ,
`zz_flag`  varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '转载收藏003标记' ,
PRIMARY KEY (`ID`)
)
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
COMMENT='文章表'
;

CREATE TABLE `NewTable` (
`ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编码' ,
`ARTICLE_ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文章编号 ' ,
`TITLE`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '栏目内容的标题 ' ,
`CONTENT`  varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论内容' ,
`NAME`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论姓名' ,
`IP`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论IP' ,
`CREATE_DATE`  date NULL DEFAULT NULL COMMENT '评论时间 ' ,
`ROBACK_NAME`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '回复评论人 ' ,
`ROBACK_CREATE_DATE`  date NULL DEFAULT NULL COMMENT '回复评论时间 ' ,
`AUDIT_USER_ID`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '审核人 ' ,
`AUDIT_DATE`  date NULL DEFAULT NULL COMMENT '审核时间' ,
`DEL_FLAG`  char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '删除标记 ' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
COMMENT='评论表'
ROW_FORMAT=COMPACT
;

CREATE TABLE `NewTable` (
`ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号' ,
`MESSAGE_PERPLE`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '留言人姓名' ,
`MESSAGE_EMAIL`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '留言人email' ,
`MESSAGE_PERPLE_IP`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '留言人IP' ,
`CREATE_TIME`  date NULL DEFAULT NULL COMMENT '留言时间' ,
`MESSAGE_CONTENT`  varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '留言内容' ,
`MESSAGE_TITLE`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '留言标题' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
COMMENT='留言表'
ROW_FORMAT=COMPACT
;

CREATE TABLE `NewTable` (
`ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编码' ,
`MUSIC_NAME`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL ,
`MUSIC_AUTHOR`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '音乐作者 ' ,
`MUSIC_SRC`  varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '音乐链接' ,
`CREATE_BY`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人' ,
`CREATE_DATE`  date NULL DEFAULT NULL COMMENT '创建日期' ,
`UPDATE_BY`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者' ,
`UPDATE_DATE`  date NULL DEFAULT NULL COMMENT '更新日期' ,
`REMARKS`  varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注' ,
`DEL_FLAG`  char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '删除标记' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
COMMENT='音乐表'
ROW_FORMAT=COMPACT
;


CREATE TABLE `NewTable` (
`ID`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编码' ,
`SKILL_TYPE`  varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '技能类型' ,
`SKILL_NAME`  varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '技能名称' ,
`SKILL_PER`  int(11) NULL DEFAULT NULL COMMENT '技能占比' ,
PRIMARY KEY (`ID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_bin
COMMENT='技能展示表'
ROW_FORMAT=COMPACT
;



   --------------------------------------------------------------------------------------
   --------------------------------------------------------------------------------------
   --------------------------------------------------------------------------------------
   
