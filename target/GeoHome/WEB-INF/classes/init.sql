create table Works (
  id            int PRIMARY KEY  AUTO_INCREMENT,
  name          varchar(40),
  authors       varchar(50),
  type          varchar(50),
  time          date,
  year          int,
  file          varchar(20)
);

create table Services (
  id            int PRIMARY KEY  AUTO_INCREMENT,
  name          varchar(40),
  url           varchar(100),
  participants  varchar(50),
  time          date,
  description   longtext,
  introduction  longtext,
  diagram       varchar(20),
  apis          varchar(100),
  activiti      varchar(50)
);

create table Modules (
  id            int PRIMARY KEY  AUTO_INCREMENT,
  name          varchar(40),
  url           varchar(200),
  service       varchar(40),
  description   longtext,
  function      varchar(10)
);

create table Members (
  id            int PRIMARY KEY  AUTO_INCREMENT,
  name          varchar(40),
  type          int,
  mail          varchar(40),
  introduction  longtext,
  photo         varchar(20),
  interest      varchar(100),
  address       varchar(100)
);

create table Parameters (
  id            int PRIMARY KEY  AUTO_INCREMENT,
  name          varchar(40),
  module        varchar(40),
  type          varchar(40),
  required      varchar(10),
  defaultValue  varchar(200),
  readable      int,
  description   longtext
);

insert into Works (name, authors, type, year, file) values
('一种峡谷地貌实体的自动化识别方法', '李安波 徐诗宇 董甜甜 闾国年', '国家公开专利', '2018', '2.pdf'),
('一种基于灰度匹配的自动化火成岩分类方法', '徐诗宇 李安波 张文涵', '国家授权专利', '2019', '3.pdf'),
('基于光谱的土壤剖面识别系统', '徐诗宇 李安波 张文涵', '软件著作权', '2019', '4.pdf'),
('一种基于形态特征的对口河识别方法', '董甜甜 李安波 徐诗宇 闾国年', '国家公开专利', '2018', '5.pdf');

insert into Services (name, url, participants, time, description, introduction, diagram, apis, activiti) values
('River Canyon',  'http://localhost:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/RiverCanyon/extract', 'Shiyu Xu,Anbo Li,Tiantian Dong,Xianli Xie', '2019-11-25',
'A service which extracts river canyons using DEM and vector river data.', 'The extraction of river canyons plays an important role in water conservation project construction, tourism resource development, and analysis of fluvial processes. However, the extraction of river canyons via manual interpretation or semi-automatic methods is inefficient and expensive, especially at large spatial scales. Therefore, the objective of this study is to propose a novel method for automatic extraction of river canyons.',
'riverCanyon.jpg', 'RiverIndegree,RiverBufferLines,CanyonPeakPair,CanyonFeature', 'Process_1koal6e:1:127505');

insert into Members (name, type, mail, introduction, photo, interest, address) values
('Shiyu Xu', '1', 'SoftXushiyu@hotmail.com', 'Helo,I am Shiyu Xu.', 'xushiyu.jpg', 'GIScience, 3D Modeling', 'School of Geography, NanJing Normal University, No.1 Wenyuan Road');

insert into Modules (name, service, description, url, function) values
('RiverIndegree', 'River Canyon', '', 'http://223.2.44.91:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/RiverIndegree/extract', 'get'),
('RiverBufferLines', 'River Canyon', '', 'http://223.2.44.9:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/RiverBufferLines/extract', 'get'),
('CanyonPeakPair', 'River Canyon', '', 'http://223.2.44.9:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/CanyonPeakPair/match', 'get'),
('CanyonFeature', 'River Canyon', '', 'http://223.2.44.9:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/CanyonFeature/sampleOperation', 'get');

insert into Parameters (name, module, type, required, description, readable, defaultValue) values
('riverIndegree_url', 'RiverIndegree', 'string', 'yes', 'the url of riverIndegree module', '1', 'http://223.2.44.91:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/RiverIndegree/extract'),
('riverIndegree_riverUrl', 'RiverIndegree', 'string', 'yes', 'the url of river wfs', '2', ''),
('riverIndegree_f', 'RiverIndegree', 'string', 'yes', 'the form of riverIndegree result', '1', 'pjson'),
('riverIndegree_output', 'RiverIndegree', 'GeoJson', 'yes', 'riverIndegree result', '3', ''),
('riverBufferLines_url', 'RiverBufferLines', 'string', 'yes', 'the url of RiverBufferLines module', '1', 'http://223.2.44.91:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/RiverBufferLines/extract'),
('riverBufferLines_river', 'RiverBufferLines', 'GeoJson', 'yes', 'river input of RiverBufferLines module', '3', 'riverIndegree_output'),
('riverBufferLines_WT', 'RiverBufferLines', 'double', 'yes', 'the width threshold of buffer', '2', '1000'),
('riverBufferLines_f', 'RiverBufferLines', 'string', 'yes', 'the form of riverBufferLines result', '1', 'pjson'),
('riverBufferLines_output', 'RiverBufferLines', 'GeoJson', 'yes', 'riverBufferLines result', '3', ''),
('canyonPeakPair_url', 'CanyonPeakPair', 'string', 'yes', 'the url of CanyonPeakPair module', '1', 'http://223.2.44.91:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/CanyonPeakPair/match'),
('canyonPeakPair_riverUrl', 'CanyonPeakPair', 'string', 'yes', 'the url of river wfs', '2', ''),
('canyonPeakPair_eleUrl', 'CanyonPeakPair', 'string', 'yes', 'the url of elevation service', '2', ''),
('canyonPeakPair_bufferLines', 'CanyonPeakPair', 'Json', 'yes', 'the json data of buffer border lines', '3', 'riverBufferLines_output'),
('canyonPeakPair_f', 'CanyonPeakPair', 'string', 'yes', 'the form of CanyonPeakPair result', '1', 'pjson'),
('canyonPeakPair_output', 'CanyonPeakPair', 'GeoJson', 'yes', 'CanyonPeakPair result', '3', ''),
('canyonFeature_url', 'CanyonFeature', 'string', 'yes', 'the url of CanyonFeature module', '1', 'http://223.2.44.91:6080/arcgis/rest/services/RiverCanyon/MapServer/exts/CanyonFeature/sampleOperation'),
('canyonFeature_features', 'CanyonFeature', 'GeoJson', 'yes', 'the shape of river canyon features', '3', 'canyonPeakPair_output'),
('canyonFeature_eleUrl', 'CanyonFeature', 'string', 'yes', 'the url of elevation service', '2', ''),
('canyonFeature_f', 'CanyonFeature', 'string', 'yes', 'the form of CanyonPeakPair result', '1', 'pjson'),
('canyonFeature_output', 'CanyonFeature', 'GeoJson', 'yes', 'CanyonFeature result', '3', '');