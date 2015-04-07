
DROP SEQUENCE IF EXISTS route_id_seq CASCADE;
CREATE SEQUENCE route_id_seq START 1;
DROP SEQUENCE IF EXISTS route_image_id_seq CASCADE;
CREATE SEQUENCE route_image_id_seq START 1;
DROP SEQUENCE IF EXISTS route_type_id_seq CASCADE;
CREATE SEQUENCE route_type_id_seq START 1;
DROP SEQUENCE IF EXISTS topics_id_seq CASCADE;
CREATE SEQUENCE topics_id_seq START 1;
DROP SEQUENCE IF EXISTS des_city_id_seq CASCADE;
CREATE SEQUENCE des_city_id_seq START 1;
DROP SEQUENCE IF EXISTS dep_city_id_seq CASCADE;
CREATE SEQUENCE dep_city_id_seq START 1;
DROP SEQUENCE IF EXISTS scenery_id_seq CASCADE;
CREATE SEQUENCE scenery_id_seq START 1;
DROP SEQUENCE IF EXISTS scenery_image_id_seq CASCADE;
CREATE SEQUENCE scenery_image_id_seq START 1;
DROP SEQUENCE IF EXISTS strategy_id_seq CASCADE;
CREATE SEQUENCE strategy_id_seq START 1;
DROP SEQUENCE IF EXISTS news_id_seq CASCADE;
CREATE SEQUENCE news_id_seq START 1;
DROP SEQUENCE IF EXISTS user_id_seq CASCADE;
CREATE SEQUENCE user_id_seq START 1;
DROP SEQUENCE IF EXISTS visa_id_seq CASCADE;
CREATE SEQUENCE visa_id_seq START 1;
DROP SEQUENCE IF EXISTS visa_type_id_seq CASCADE;
CREATE SEQUENCE visa_type_id_seq START 1;
DROP SEQUENCE IF EXISTS visa_country_id_seq CASCADE;
CREATE SEQUENCE visa_country_id_seq START 1;
DROP SEQUENCE IF EXISTS visa_city_id_seq CASCADE;
CREATE SEQUENCE visa_city_id_seq START 1;


--创建线路表
DROP TABLE IF EXISTS zl_route CASCADE;
CREATE TABLE zl_route(
	route_id int8 DEFAULT nextval('route_id_seq'::regclass) PRIMARY KEY,
	route_name VARCHAR(50) NOT NULL,
	route_number VARCHAR(50),
	route_type int8 NOT NULL,
	route_title VARCHAR(50),
	route_days int4 DEFAULT 1 NOT NULL,
	route_thumb VARCHAR(100),
	route_destination_city int8,
	route_departure_city int8,
	route_transport_mode VARCHAR(100),
	route_departure_date date,
	route_price numeric(10,2) DEFAULT 0.00 NOT NULL,
	route_destine_days int4,
	route_summary varchar(200),
	route_feature_desc TEXT,
	route_booking_policy TEXT,
	route_tips TEXT,
	route_itinerary TEXT,
	route_advisory TEXT,
	route_strategy TEXT,
	route_recommend int4 DEFAULT 0,
	route_pay_method VARCHAR(100),
	route_create_date timestamptz DEFAULT now() NOT NULL
);

DROP TABLE IF EXISTS zl_route_image CASCADE;
CREATE TABLE zl_route_image(
	image_id int8 DEFAULT nextval('route_image_id_seq'::regclass) PRIMARY KEY,
	route_id int8 NOT NULL,
	image_path VARCHAR(100) NOT NULL,
	image_alias VARCHAR(50)
);

--创建线路类型表
DROP TABLE IF EXISTS zl_route_type CASCADE;
CREATE TABLE zl_route_type(
	route_type_id int8 DEFAULT nextval('route_type_id_seq'::regclass) PRIMARY KEY,
	route_type_name VARCHAR(50) NOT NULL
);

--创建专题表
DROP TABLE IF EXISTS zl_topics CASCADE;
CREATE TABLE zl_topics(
	topics_id int8 DEFAULT nextval('topics_id_seq'::regclass) PRIMARY KEY,
	topics_name VARCHAR(50) NOT NULL
);

--创建线路专题中间表表
DROP TABLE IF EXISTS zl_route_topics CASCADE;
CREATE TABLE zl_route_topics(
	route_id int8,
	topics_id int8,
	Constraint route_topics_PK primary key(route_id,topics_id)
);

--创建目的地城市表
DROP TABLE IF EXISTS zl_destination_city CASCADE;
CREATE TABLE zl_destination_city(
	des_city_id int8 DEFAULT nextval('des_city_id_seq'::regclass) PRIMARY KEY,
	des_city_name VARCHAR(50) NOT NULL
);

--创建出发城市表
DROP TABLE IF EXISTS zl_departure_city CASCADE;
CREATE TABLE zl_departure_city(
	dep_city_id int8 DEFAULT nextval('dep_city_id_seq'::regclass) PRIMARY KEY,
	dep_city_name VARCHAR(50) NOT NULL
);

--创建景点表
DROP TABLE IF EXISTS zl_scenery CASCADE;
CREATE TABLE zl_scenery(
	scenery_id int8 DEFAULT nextval('scenery_id_seq'::regclass) PRIMARY KEY,
	scenery_name VARCHAR(50) NOT NULL,
	scenery_level VARCHAR(10) NOT NULL,
	scenery_title VARCHAR(50),
	scenery_thumb VARCHAR(100),
	scenery_city int4,
	scenery_addr VARCHAR(100),
	scenery_lng numeric(12,8) DEFAULT 0,
	scenery_lat numeric(12,8) DEFAULT 0,
	scenery_price numeric(10,2) DEFAULT 0,
	scenery_tickets_addr VARCHAR(100),
	scenery_tel VARCHAR(15),
	scenery_introduce TEXT,
	scenery_summary VARCHAR(200),
	scenery_recommend int4 DEFAULT 0,
	scenery_images TEXT,
	scenery_hits int8 DEFAULT 0,
	scenery_create_date timestamptz DEFAULT	now() NOT NULL,
	scenery_update_date timestamptz DEFAULT	now() NOT NULL
);

--创建景点图片表
DROP TABLE IF EXISTS zl_scenery_image CASCADE;
CREATE TABLE zl_scenery_image(
	image_id int8 DEFAULT nextval('scenery_image_id_seq'::regclass) PRIMARY KEY,
	scenery_id int8 NOT NULL,
	image_path VARCHAR(100) NOT NULL,
	image_alias VARCHAR(50)
);

--创建旅游攻略表
DROP TABLE IF EXISTS zl_tourism_strategy CASCADE;
CREATE TABLE zl_tourism_strategy(
	strategy_id int8 DEFAULT nextval('strategy_id_seq'::regclass) PRIMARY KEY,
	strategy_name VARCHAR(50) NOT NULL,
	strategy_content TEXT NOT NULL,
	strategy_counts int8 DEFAULT 0 NOT NULL,
	strategy_create_time timestamptz DEFAULT now() NOT NULL
); 

--创建旅游资讯表
DROP TABLE IF EXISTS zl_tourism_news CASCADE;
CREATE TABLE zl_tourism_news(
	news_id int8 DEFAULT nextval('news_id_seq'::regclass) PRIMARY KEY,
	news_name VARCHAR(50) NOT NULL,
	news_content TEXT NOT NULL,
	news_counts int8 DEFAULT 0 NOT NULL,
	news_create_time timestamptz DEFAULT now() NOT NULL
); 

--创建用户表
DROP TABLE IF EXISTS zl_users CASCADE;
CREATE TABLE zl_users(
	user_id int8 DEFAULT nextval('user_id_seq'::regclass) PRIMARY KEY,
	user_name VARCHAR(50) NOT NULL,
	user_sex VARCHAR(2) NOT NULL,
	user_password VARCHAR(32) NOT NULL,
	user_mail VARCHAR(100),
	user_register_time timestamptz DEFAULT now() NOT NULL
); 

--创建签证表
DROP TABLE IF EXISTS zl_visa CASCADE;
CREATE TABLE zl_visa(
	visa_id int8 DEFAULT nextval('visa_id_seq'::regclass) PRIMARY KEY,
	visa_name VARCHAR(50) NOT NULL,
	visa_country int8 NOT NULL,
	visa_type int8 NOT NULL,
	visa_thumb VARCHAR(100),
	visa_price numeric(10,2) DEFAULT 0,
	visa_city int8,
	visa_validity VARCHAR(100),
	visa_process_time VARCHAR(100),
	visa_max_stay VARCHAR(100),
	visa_immigrants_times VARCHAR(100),
	visa_interview VARCHAR(100),
	visa_summary VARCHAR(200),
	visa_materials TEXT,
	visa_introduction TEXT,
	visa_count int8,
	visa_create_time timestamptz DEFAULT now() NOT NULL,
	visa_update_time timestamptz DEFAULT now() NOT NULL
);

--创建签证类型表
DROP TABLE IF EXISTS zl_visa_type CASCADE;
CREATE TABLE zl_visa_type(
	type_id int8 DEFAULT nextval('visa_type_id_seq'::regclass) PRIMARY KEY,
	type_name VARCHAR(50) NOT NULL 
);

--创建签证国家表
DROP TABLE IF EXISTS zl_visa_country CASCADE;
CREATE TABLE zl_visa_country(
	country_id int8 DEFAULT nextval('visa_country_id_seq'::regclass) PRIMARY KEY,
	country_name VARCHAR(50) NOT NULL 
);

--创建签发城市
DROP TABLE IF EXISTS zl_visa_city CASCADE;
CREATE TABLE zl_visa_city(
	city_id int8 DEFAULT nextval('visa_city_id_seq'::regclass) PRIMARY KEY,
	city_name VARCHAR(50) NOT NULL 
);