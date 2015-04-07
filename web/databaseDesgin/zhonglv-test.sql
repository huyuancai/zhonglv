SET CLIENT_ENCODING TO 'UTF-8';
--插入用户
INSERT INTO zl_users (
	user_name,
	user_sex,
	user_password,
	user_mail
)
VALUES
	(
		'admin',
		'女',
		'fe01ce2a7fbac8fafaed7c982a04e229',
		'353018052@qq.com'
	);

--插入旅游类型
INSERT INTO zl_route_type (route_type_name)
VALUES
	('周边旅游'),
	('国内旅游'),
	('出境旅游');
	
--插入线路专题
INSERT INTO zl_topics (topics_name)
VALUES
	('古镇游'),
	('山水游'),
	('海岛游'),
	('乐园游'),
	('蜜月游'),
	('爸妈游'),
	('亲子游'),
	('温泉游');

--插入出发城市
INSERT INTO zl_departure_city (dep_city_name)
VALUES
	('洛阳');

--插入目的地城市
INSERT INTO zl_destination_city (des_city_name)
VALUES
	('洛阳'),
	('北京'),
	('上海'),
	('香港'),
	('成都'),
	('长沙'),
	('邵阳'),
	('济南');

--插入线路
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。5', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。5', 6, '/upload/212459953.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略', 0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。7', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。7', 6, '/upload/211050890.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。1', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。1', 6, '/upload/21144281.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。6', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。6', 6, '/upload/21219843.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。4', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。4', 6, '/upload/212848281.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。3', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。3', 6, '/upload/213249703.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。8', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。8', 6, '/upload/21355281.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。2', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。2', 6, '/upload/214020140.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。9', '2015012903', 3, '阳光假期独家酒店代理，北京到马尔代夫，4晚6天。天堂岛特价来临。9', 6, '/upload/214354468.jpg', 3, 1, '飞机', '2015-2-7 00:00:00', '9000.00', 2, '天堂岛（ParadiseIsland）是马尔代夫非常著名的度假海岛，岛上有40幢建在浅海的“水中别墅”，以及200套面向大海的海景套房。', '<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	马尔代夫天堂岛坐落在北累列北环礁，距离马累国际机场及首都马累大约9.6公里。葱茏的树木，五彩的鲜花，银白的沙滩，尤其让人感到惊叹的是散落在人间的度假天堂，惬意诱人的 椰林沙滩，旖旎的热带海洋风光，给每个住在这里的游客留下令人难忘的记忆。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">马尔代夫</a>是由很多个小岛组成的，每一个小岛就是一个酒店，机场出来必须乘船到其它的岛屿，也就是不同的酒店。在入境时如果你没有办法讲出你所预定的酒店，那么海关是不会批准你入境的。
</div>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	正如其名，马尔代夫是天堂般的度假胜地。在这里，没有手机、没有internet、没有<a href="http://www.qunar.com/#tm=cj02&amp;ts=&amp;DepDate=2013-10-12&amp;vendor=北京阳光假期国际旅行社有限责任公司&amp;tp=&amp;departure=济南&amp;tf=hao123&amp;from=hao123&amp;productId=3365193841&amp;function=自由行&amp;arrive=天堂岛&amp;DepLastDate=2013-11-25&amp;searchid=&amp;vendorid=qb2c_bjygjqlxs&amp;route_id=4313812" target="_blank">汽车</a>，没有了都市的烦嚣。可以静静地坐在海边的吊椅上，看海浪的起伏，任凭海风从双肩掠过，带去丝丝的失落，又唤回一些年轻的想象。
</div>', '<span style="background-color:#ffffff;color:#555555;">1.旅行社提供航空公司机票和酒店房间等代订服务。航班时刻、酒店相关服务、车船时刻、签证、保险公司赔付等实际情况，并不由旅行社控制。旅行社对所预定的硬件负责，不对可能涉及的相关软性服务负责。</span><br />
<span style="background-color:#ffffff;color:#555555;">2、旅行社仅提供游客提交的相关预定的确认，一切因游客未预定的项目、自理项目（如外籍人士或者港澳台地区人士签证，回头签等）所导致的预定项目之相关损失，由游客自行承担。</span><br />
<span style="background-color:#ffffff;color:#555555;">3、境外请务必注意人身、财产安全，潜水或旅游时需结伴同行，强烈建议购买旅游意外保险。</span><br />
<span style="background-color:#ffffff;color:#555555;">4、如遇自然、天气、航班延误、战争、罢工等一切不可抗力因素，旅行社将会尽力协助客人完成行程或者减少损失，但不承担由此引起的任何损失。</span><br />
<span style="background-color:#ffffff;color:#555555;">5、请于确认订位后24小时内拍下此产品并付款。</span><br />
<span style="background-color:#ffffff;color:#555555;">6、如按甲方要求完成预订后甲方要求变更或取消，则需要甲方旅游者承担全额损失，预收定金将不予退还，请确认后再进行预定。</span>', '<span style="background-color:#ffffff;color:#555555;">着装：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫全年可穿清凉夏装，但应携带一件薄外套，防止空调房间冷气太低着凉</span><br />
<span style="background-color:#ffffff;color:#555555;">2、正式场合时，最好不要穿拖鞋、短裤短裙、无袖上衣等不适宜的衣服。请注意携带</span><br />
<span style="background-color:#ffffff;color:#555555;">3、海边，请视自身需要携带泳衣、泳帽、泳镜、游泳圈、可汲水的鞋等</span><br />
<span style="background-color:#ffffff;color:#555555;">4、鞋应以轻便合脚、适宜行走为主，不宜穿新鞋、高跟鞋</span><br />
<span style="background-color:#ffffff;color:#555555;">个人日常用品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、剃须刀、护肤品、化妆品、太阳帽、太阳镜、防晒霜、伞、手表、笔、小本子，请视自身需要携带</span><br />
<span style="background-color:#ffffff;color:#555555;">2、马尔代夫部分岛屿酒店不提供一次性的毛巾、牙刷、牙膏、洗发护发液、拖鞋，请自行携带</span><br />
<span style="background-color:#ffffff;color:#555555;">现金及银行卡：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、马尔代夫不流通人民币，美元在当地流通最广，建议您在出国前将人民币兑换为美元，兑换方法请拨打各大银行的客服电话询问，请务必及早兑换</span><br />
<span style="background-color:#ffffff;color:#555555;">2、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，所以兑换的货币够用即可</span><br />
<span style="background-color:#ffffff;color:#555555;">3、在马尔代夫购物，大商店多可刷MasterCard、VISA卡，建议您将钱存入卡中，各个银行、各种卡情况不同，如何在马尔代夫使用银行卡请咨询发卡行。建议在马尔代夫消费使用国际信用卡，只需带少量美金零钱作为小费</span><br />
<span style="background-color:#ffffff;color:#555555;">4、参考汇率（以银行实时牌价为准）：</span><br />
<span style="background-color:#ffffff;color:#555555;">1人民币 约等于 0.15美元</span><br />
<span style="background-color:#ffffff;color:#555555;">1美元 约等于 6.8人民币</span><br />
<span style="background-color:#ffffff;color:#555555;">可以到当地用美元兑换马尔代夫卢比（RF），1美元约等于12当地卢比</span><br />
<span style="background-color:#ffffff;color:#555555;">电子电器：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、相机、摄像机、电池、充电器、存储卡，请自备密封袋或其他防水包装，以便您参加水上活动时保护随身携带的电子产品等贵重物品不受损坏</span><br />
<span style="background-color:#ffffff;color:#555555;">2、您的手机能否在马尔代夫使用请在出行前电话咨询手机制造商，确认手机制式。您的号码能否在马尔代夫使用、如何使用及资费问题请向运营商咨询</span><br />
<span style="background-color:#ffffff;color:#555555;">3、马尔代夫的插座与中国不同，为英式三孔插座，中国电器插头不能直接使用，需插头转换器。酒店前台一般有备，但数量有限，建议您提前在国内大型超市、网上电子商城购买英标插头转换器</span><br />
<span style="background-color:#ffffff;color:#555555;">药品：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、请带好常备药品，如感冒药、消炎药、肠胃药、止痛药及创可贴、风油精、晕车药</span><br />
<span style="background-color:#ffffff;color:#555555;">2、如有高血压、心脏病、糖尿病等情况，务必根据自身情况带足备用药且随身携带</span><br />
<span style="background-color:#ffffff;color:#555555;">中国海关出入境及机场安检规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">1、海关规定每人最多可以携带人民币20000元或折合5000美金的等值外币，超出部分需要向海关书面申报，请尽量不要超过规定，超出部分可能会面临征税、罚款或没收</span><br />
<span style="background-color:#ffffff;color:#555555;">2、携带单价超过5000元的摄像机、相机、镜头等贵重物品需在托运行李前向海关申报</span><br />
<span style="background-color:#ffffff;color:#555555;">3、旅客携带液态物品规定：</span><br />
<span style="background-color:#ffffff;color:#555555;">（1）乘坐从中国境内机场始发的国际、地区航班的旅客，其随身携带的液态物品每件容积不得超过100毫升（ml）。盛放液态物品的容器，应置于最大容积不超过1升（L）的、可重新封口的透明塑料袋中。每名旅客每次仅允许携带一个透明塑料袋，超出部分应交运。婴儿随行的旅客携带液态乳制品，糖尿病或其他疾病患者携带必需的液态药品（凭医生处方或证明），经安全检查确认无疑后，可适量携带</span><br />
<span style="background-color:#ffffff;color:#555555;">（2）若先在国内转机，需遵守国内航班对液体物品的规定。国内航班规定旅客一律禁止随身携带液态物品，但可携带少量旅行自用的化妆品，每种化妆品限带一件，其容器容积不得超过100毫升（ml），并应置于独立袋内，接受开瓶检查。有婴儿随行的旅客，购票时可向航空公司申请，由航空公司在机上免费提供液态乳制品。糖尿病患者或其他患者携带必需的液态物品（凭医生处方或证明），经安全检查确认无疑后，交由机组保管</span><br />
<span style="background-color:#ffffff;color:#555555;">4、若打算在马尔代夫购买商品携带入境，请事先查看海关相关规定，以免入境时海关禁止带入或收税。其中烟酒类，海关规定年满16周岁每人限带12度以上酒精饮料2瓶（1.5升以下），香烟400支或雪茄100支或烟丝500克.</span>', '行程', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！5', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！5', 6, '/upload/21474968.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！6', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！6', 6, '/upload/21510546.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！8', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！8', 6, '/upload/21546343.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！1', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！1', 6, '/upload/215547125.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！2', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！2', 6, '/upload/21572593.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！3', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！3', 6, '/upload/21631343.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！4', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！4', 6, '/upload/21572593.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！7', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！7', 6, '/upload/215547125.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！9', '20150129', 2, '香港,-巴厘岛9月至11月多日期出发，香港至巴厘岛纯玩6天4晚超级星光之旅！9', 6, '/upload/21546343.jpg', 4, 1, '坐飞机去坐飞机回', '2015-2-5 00:00:00', '1350.00', 1, '●游 “世界岩溶艺术宝库”——银子岩；徒步与船游漓江相结合—赏尽漓江风光； ●参观“阳朔第一峰”——山水园；艄公撑竹筏——独特、自然的遇龙河观光； ●品尝当地特色——啤酒鱼、黄焖鸡，尝遍阳朔风味。 ●游“图腾古道”——讲述桂林人一万多年前甑皮岩人的文化古迹；游“一洞水陆两游的溶洞”——聚龙潭；', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	1、 全程直飞往返航班，选用香港航空机型是空客大型客机，让您轻松启程。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	2、 全程省心省力，蛇口起香港机场止，还有专业领队给予各个海关移民局以及交通方便的通行协助
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	3、 全程巴厘岛使用中文导游，空调大巴（视乎人数情况调整车型）
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	4、 全程纯玩无购物行程，让您的旅行每时每刻都在体验放松，欣赏美景
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<span style="line-height:1.5;">5、【超级星光之夜】将升级为2晚泳池别墅+2晚国际五星酒店，拥有私家沙滩，品质再升级</span> 
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	6、 增加最具南洋风情的SPA按摩服务1小时，让您的感觉就像3D一样立体，让您体验巴厘岛独特手法按摩，放松你身体的每一个细胞，享受享受还是享受，放松您的每一个细胞，旅行吗，轻松至上
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	7、 浪漫温馨的金巴兰海滩，是巴厘岛看日落最著名的地方，一边在海边嬉戏拍照一边观赏世界十大日落壮美景观，玩累了就品尝海鲜BBQ，入夜点上蜡烛，两个人切切私语，听着海浪的拍打，听着海边悠扬的歌谣，你还能HOLD住吗？
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	8、 海神庙，情人崖，库塔洋人街，乌布等经典景点通通一网打尽，一个都不能少
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	9、 超级升级星光海滩派对自助晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，实在是一件美美享受的放松
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	10、 酒店迎宾饮料，冰冻毛巾提神，水果茶润嗓，每天矿泉水，绝对尊贵享受
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?游客因个人原因临时自愿放弃游览，景点门票费用、酒店住宿费用、餐费、车费等均不退还；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列航班的起抵时间均为当地时间，“+1”表示航班第二天抵达；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列餐食，“X”表示该餐食不包含在行程中；
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列购物店的目的是让游客本身了解和体验当地的人文文化，游客的购物属于客人的自行购买行为，我公司不承担客人的自愿购买行为责任。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	附：境外购物店情况
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	<br />
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#555555;">
	?行程表中所列自费项目，客人有权自愿选择参加。我社提供的自费项目参考价格适用于10人以上团队，如果参与人数不够10人，将无法享受此团体优惠价格，具体价格视参加人数而调整。如客人参加自费，涉及到用餐的，餐费已经退在自费项目内，不另退餐费或安排用餐。【请参阅“巴厘岛娱乐须知”】
</p>', '<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day1" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第1天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<br />
			</p>
			<p>
				客人郑州乘坐高铁抵达深圳，于指定时间在蛇口码头集合，乘船前往香港机场。乘坐世界一流的香港航空公司直飞航班。用5个小时就可以到达巴厘岛，是世界上最漂亮而有特色的观光胜地之一，凭借着其得天独厚的自然景观、古老的文明与独特的地方民俗艺术、绝美的海滩、精致的手工艺术、曼妙的音乐舞蹈，这里几乎是一个人间的香格里拉。抵达后接受美丽的小姐献上鲜花及祝福，我们的华语导游以及司机用他们热情的笑容将你迎入完全巴厘风情的度假酒店，前台服务员也将给您冰冻的毛巾敷面提神，再喝上一瓶当地水果茶润嗓，很快导游将迅速拿好房间，让您尽快的休息。晚安！明天还有更加精彩等着您。
			</p>
<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d4fbe5ca9bcc7ece93835fbb.jpg_r_660x222x90_e2e4c7d6.jpg" width="660" height="275" /> 
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts6/201307/09/d9cfb6aa12d89b5093835fbb.jpg_r_660x223x90_bd97efc9.jpg" width="660" height="275" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts2/201307/09/a6c20788362dcecb93835fbb.jpg_r_660x222x90_a2c15e7f.jpg" width="660" height="275" /> 
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day2" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第2天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 帕特雷亚度假村
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，专车前往巴里岛南端最著名的水上活动集中区域－【南湾】，迎向海阔天蓝及洁白柔细的海滩，体验碧海水蓝天追求感官上的刺激，倘徉在南洋风情之中，您可于此处自费参加各项水上活动：＄拖曳伞、＄水上摩托车、＄香蕉船、＄浮潜等。随后搭乘玻璃底船(特别赠送)前往南湾对岸的【海龟岛】，沿途海风徐徐，快哉此风，您可悠哉地喂食海中成群的各色热带鱼并观赏船底下瑰丽多彩的珊瑚礁群，抵达海龟岛后，您可自与大海龟、大蟒蛇、大蜥蜴拍照留念，更可以来一场惊心动魄、刺激悬疑的斗鸡大赛，小试一下手气。
			</p>
			<p>
				午餐后专车前往巴厘岛最南端，且流传着神话色彩的【乌鲁瓦度情人崖】，它的背后有一段凄美的爱情悲剧，为此地平添了离奇色彩。传说当地有对门户不当的青年男女相恋，女方的父亲是村长，因此两人的爱情得不到任何祝福，在绝望之下双双投海殉情，这一殉情博得世人很多痴情人的眼泪，海水才变得如此碧蓝。并在矗立于悬崖上的【NYANG NYANG BEACH】喝个下午茶，您可在此欣赏壮阔的海天一色美景，自然的鬼斧神工、磅礴气势展露无遗，崖高数十公尺的悬崖峭壁可高处眺望印度洋辽阔海景，开始酝酿属于巴厘岛特有悠闲假期。
			</p>
			<p>
				晚餐我们前往巴厘岛最著名的世界最美的十大落日美景之一金巴兰海滩(Jimbaran Beach)（参观约60分钟），在这里一边欣赏落日的余辉，享一边享用美味的海鲜烧烤【金巴兰BBQ】在海边沙滩享用美味的海景烛光海鲜烧烤套餐，海景落日、沙滩、歌手民谣、美食、点点烛光,无限浪漫。把巴厘岛旅游带入一个新的境界。
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts3/201307/09/4db8af850be4fd7793835fbb.jpg_r_660x450x90_866873dd.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/4bfb8a80f503685293835fbb.jpg_r_660x528x90_27c1d9b9.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day3" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第3天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>包含；<b>晚餐：</b>包含
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早餐后，游览【乌布皇宫】外观，乌布皇宫是乌布王朝在16世纪所建造的皇宫，遗址内虽已无国王居住，但据说还有其皇族后裔深居其中，皇宫外观雄伟的石刻技术堪称一绝，内部装潢更是金碧辉煌令人赞叹不已。但是目前乌布皇宫只是开放很小的一部分，即使进去也只是巴掌大的地方，我们就看看当地风情，使劲浮想联翩一下就可以了。在乌布，手工作坊和卖艺术品的小店随处可见。
			</p>
			<p>
				中餐我们享用印尼独特的脏鸭餐，巴厘岛的特色美食脏鸭餐(Dirty Duck)是巴厘岛赫赫有名的特色餐品。当地居民把鸭子散养在稻田中，非常的生态，由于鸭子靠吃食稻田里的小虫为生，当地人称脏鸭。鸭肉鲜美，富有弹性，极少的脂肪，在当地特有的烹饪加工后，粘上特制酱料，十分的美味。
			</p>
			<p>
				约定时间出发乘坐空调旅游车前往闻名全球的【海神庙】Tanah Lot（海神庙）坐落在海中形似船只的一块巨岩上，它是巴厘岛著名的六大寺庙之一。涨潮时，此庙四周环绕海水，和陆地完全隔离。落潮时方可以相通。海神庙建于十六世纪，祭祀海之守护神 ，它也被称为“海上之地”，搭配南洋夕照的热带夕阳海景，为巴厘岛代表性风景之一，日落时是游客欣赏风景的最好时间。游览完毕我们贴心的每人赠送一个椰子汁，稍作休息，不紧不慢悠闲自在才是真正度假享受嘛！
			</p>
			<p>
				库塔洋人街，这里附近有热闹的商业街，各色巴厘传统手工艺品、绚丽民族服装展示，而且还有大型百货商店买到各类商品。它过去只是巴塘至布吉伯宁苏拉之间的一个小村子，现在已经成为繁华的旅游胜地。 库塔海滩离国际机场约15分钟车程，是巴厘岛游客集聚最多的热闹地区。这里，海滩风急浪高，是冲浪的好地方，深得寻求刺激的年轻一族青睐。海滩上有许多小贩，沿街兜售各式各样的商品、T恤以及海滩服饰品等等。库塔海滩是欧、美、澳洲游客的最爱，沙滩细致、浪高也适合冲浪，酒店一般都设有救生员，在库塔游泳是很安全的。库塔区的各星级的饭店、旅馆云集；各国料理餐厅、酒吧、俱乐部、舞厅、商店街、百货公司等一应俱全，是最热闹也最便利的度假地点。海滩风急浪高，不适合泛舟、游泳，但却是冲浪的好地方，深得寻求刺激的年轻一族的青睐。每天这里斜阳西下的美景也迷倒了无数游人。晚上有专为游客准备的巴厘歌舞表演。如果您喜欢海滩度假生活，也喜爱冲浪和购物的话，库塔海滩是来巴厘岛极佳的选择。
			</p>
			<p>
				之后享受【精油按摩】（约1小时）是一种结合五官的松弛法，讲求按摩时环境、香熏、音乐，并利用古老的按摩手法和和各式周到的服务来达到真正的放松，当然您还可以自费增加按摩时间或者自费增加项目达到更加美妙舒适的感觉和放松，巴厘岛独特的天然香油更让您的皮肤得到精心呵护。在一系列护理后，利用热水淋至身体的每寸肌肤，达到另一种按摩的效果，再舒服地泡在盛满海盐和花瓣的温水池内，感受和大自然相融的感觉。结束后，再来一杯热热的姜茶，让您享受与昔日帝王般的尊贵。全套身体护理做下来，一定会让你有一种受到皇室待遇的精致呵护的感觉。快来体验一次心灵“SPA”，充分感受巴厘岛带给您的无限悠闲乐趣。
			</p>
			<p>
				超级升级星光海滩派对晚餐，并非是一般团体餐厅哦，我们是特别安排在海边，当天空开始星光闪闪的时候，听着 海浪拍打的美妙，以及轻抚海风的 拂面，前一晚我们刚刚享受到热闹的金巴兰，今晚我们享受一个安静的温馨的烛光晚餐，是在是一件美美享受的放松。（酒店会根据实际天气情况改变室外海滩自助或者室内自助，不再另行通知，以酒店实际安排为准）<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/d52cbb7313bd93c293835fbb.jpg_r_660x494x90_bf739175.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts6/201307/09/985c704b5983ad6493835fbb.jpg_r_660x495x90_1ee92a0c.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day4" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第4天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>五星或同等酒店 蓝海别墅
	</p>
	<p>
		<b>交通：</b>汽车
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【全日爱之船出海游】（行程约6小时，约上午9时至下午4时）其世界级的[切浪双体船]船体结构，来自澳洲大堡礁，船身全长37公尺，载客量达350人，让客人享受既平隐、又舒适安全的航程。行船1个小时后，抵达停泊在离开巴厘岛本岛的NUSA PENIDA岛附近不同海域。并在海面上设置浮台作为活动基地，游客抵达后，在浮台上或船上用餐，更换衣服，并在安全的范围内进行一系列的水上活动。豪华游船所至之海上平台上准备了形形色色的节目和活动，种类包罗万象(免费)：半潜水艇海底世界奇观、无限次香蕉船、设备齐全的浮潜活动、64公尺海上旋转滑水道，游船公司还安排往村落游览的观光旅程、认识海藻养殖的制作过程等行程活动。<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/c7670a5fe44b472593835fbb.jpg_r_660x439x90_822e3c10.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts7/201307/09/684ecc429b22e16e93835fbb.jpg_r_660x495x90_e2982f20.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts8/201307/09/f9ef6294591664e993835fbb.jpg_r_660x495x90_dd086f49.jpg" width="660" height="366" /> 
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day5" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第5天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>包含；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>其他 飞机上
	</p>
	<p>
		<b>交通：</b>汽车 飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				<span style="line-height:1.5;"></span> 
			</p>
			<p>
				全天我们彻底放松，自由活动。享用早餐后，客人可享受酒店内的休闲设施，也可舒适地躺在游泳池的遮阳伞下，感受热带的南洋风情，或远离尘嚣自由行，享受大自然赋予的乐趣。你也可自费选择巴厘岛众多游乐项目：
			</p>
			<p>
				【阿勇河漂流】（行程约2小时）专车前往乌布区最美的AYUNG河畔，由经验丰富的舵手指导员带领大家展开活泼轻快、欢乐精彩之旅，尔后穿上船家为您准备的泛舟装备在湍急的河流上进行一趟冒险泛舟之旅，一路上山峦起伏、有险峻的河谷、梯田及小径人家，沿途景色优美层层相迭梯田和辽远的椰林，可见陡峭河谷、天然瀑布及枝叶浓密的热带雨林；您更可看到当地居民如何依靠河流生活，引水灌溉稻田，以及在河边沐浴洗衣的画面，让您惊叹不已，直呼过瘾，使您难以忘怀此一多采多姿的旅程。
			</p>
			<p>
				预定时间专车送往巴厘岛国际机场！请您务必回忆一次这六天来的种种，深刻的印入脑海，因为飞机起飞时刻在即，将飞回香港国际机场。结束难免，但巴厘岛的热情永远在南洋的海上，期待您下一次的造访！飞机抵达香港国际机场后散团！
			</p>
			<p>
				按照香港移民局规定，国外返程途径香港最多可停留7天，您可以根据自己的情况来选择是否停留香港，可以来一个香港的SHOPPING ，大量的名牌打折，肯定让您收获多多！ &nbsp; &nbsp; &nbsp;
			</p>
			<p>
				<img alt="" src="http://img1.qunarzz.com/p/tts8/201307/09/3ef9f45cb97c27f693835fbb.jpg_r_660x495x90_d1c053c7.jpg" width="660" height="366" /> 
			</p>
			<p>
				<span style="line-height:1.5;"><br />
</span> 
			</p>
			<p>
				<span style="line-height:1.5;"><img title="巴厘岛" alt="巴厘岛" src="http://img1.qunarzz.com/p/tts9/201307/09/f9ab54d242d20f1893835fbb.jpg_r_660x421x90_66d59f53.jpg" width="660" height="366" />&nbsp; &nbsp;&nbsp;</span> 
			</p>
			<p>
				<br />
			</p>
			<p>
				<br />
			</p>
		</div>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px;color:#555555;" id="scheduler_day6" class="tts_xc_box">
	<span style="font-family:微软雅黑;font-size:18px;" class="tts_xc_box_t f18 yahei">第6天</span><span class="tts_xc_box_li">【超级星光之旅】巴厘岛6天2晚别墅2晚国际五星海景酒店+spa+浪漫晚餐+纯玩</span> 
	<p>
		<b>早餐：</b>自理；<b>午餐：</b>自理；<b>晚餐：</b>自理
	</p>
	<p>
		<b>住宿：</b>客栈
	</p>
	<p>
		<b>交通：</b>飞机
	</p>
	<div style="margin:0px;" class="tts_xc_text lh24">
		<div style="margin:0px;font-size:14px;" class="tts_text_1 ">
			<p>
				早上抵达香港之后，散团。
			</p>
		</div>
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游3', '2015012902', 1, '攀牙湾游船一日游3', 1, '/upload/21510546.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游1', '2015012902', 1, '攀牙湾游船一日游1', 1, '/upload/21474968.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游4', '2015012902', 1, '攀牙湾游船一日游4', 1, '/upload/214354468.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游5', '2015012902', 1, '攀牙湾游船一日游5', 1, '/upload/214020140.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游2', '2015012902', 1, '攀牙湾游船一日游2', 1, '/upload/21355281.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  1, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游6', '2015012902', 1, '攀牙湾游船一日游6', 1, '/upload/213249703.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游7', '2015012902', 1, '攀牙湾游船一日游7', 1, '/upload/212848281.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游9', '2015012902', 1, '攀牙湾游船一日游9', 1, '/upload/212459953.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);
INSERT INTO zl_route VALUES (nextval('route_id_seq'), '攀牙湾游船一日游8', '2015012902', 1, '攀牙湾游船一日游8', 1, '/upload/21219843.jpg', NULL, 1, '邮轮去邮轮回', '2015-2-6 00:00:00', '310.00', 1, '提示信息', '<span style="background-color:#ffffff;color:#555555;">前往攀牙湾最美丽的宏岛泛舟，</span><span style="background-color:#ffffff;color:#555555;">之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜。</span>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h3 style="text-align:left;background-color:#ffffff;text-indent:0px;color:#2296e3;">
	退款说明
</h3>
<div style="text-align:left;background-color:#ffffff;margin:0px;color:#555555;">
	旅游度假产品，请用户在跟供应商预约的时候，就出示验证码。一旦消费码验证成功，视为订单已消费，已消费订单无法办理退款且不支持任何变更。未消费可全额办理退款。
</div>', '<h5 style="background-color:#ffffff;text-indent:0px;color:#2296e3;">
	<span style="color:#000000;">第<em>1</em>天</span>普吉岛——攀牙岛
</h5>
<div style="background-color:#ffffff;margin:0px;color:#555555;" class="det_list">
	<p>
		<em class="tra_ls">交通</em>（快艇）
	</p>
	<p>
		<em class="htl_ls">住宿</em>其他&nbsp;&nbsp;
	</p>
	<p>
		<em class="eat_ls">餐饮</em>早餐：自理； 午餐：BBQ自助餐； 晚餐：自理。
	</p>
	<ul class="route_list clr_after">
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts2/201309/03/448758205e3b061193835fbb.jpg_r_150x100x90_e47537ef.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts7/201309/03/d22c851dc9bdfcfc93835fbb.jpg_r_150x100x90_bad7b837.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts5/201309/03/d96331ce8e3f978793835fbb.jpg_r_150x100x90_1eeda9be.jpg" width="150" height="100" /> 
		</li>
		<li>
			<img alt="普吉岛——攀牙岛" src="http://img1.qunarzz.com/p/tts9/201309/03/27f547e51a03fc3793835fbb.jpg_r_150x100x90_14d87ad2.jpg" width="150" height="100" /> 
		</li>
	</ul>
	<div style="margin:0px;font-size:14px;" class="route_desc">
		&nbsp;&nbsp;&nbsp;<span>早上8点钟乘面包车前往澳波码头，9点钟乘游览大船出发展开精彩的行程，前往攀牙湾最美丽的宏岛开始泛舟，在这里你可以欣赏大自然的鬼斧神工的自然景色。之后参观007岛，午餐于游览船上家享用BBQ自助餐.下午1点半前拉牙岛游泳戏水浮潜，观赏美丽的珊瑚和热带鱼，尽情享受阳光假期。之后返回普吉码头。</span> 
	</div>
</div>', '线路咨询', '旅游攻略',  0, '电话预定后到前台付款', current_timestamp);


--插入线路专题中间表
INSERT INTO zl_route_topics (route_id,topics_id)
VALUES
	(1,5),
	(2,2),
	(3,4),
	(4,6),
	(5,8),
	(6,3),
	(7,2),
	(8,1),
	(9,6),
	(10,3),
	(11,1),
	(12,4),
	(13,7),
	(14,1),
	(15,6),
	(16,3),
	(17,2),
	(18,5),
	(19,7),
	(20,8),
	(21,3),
	(22,5),
	(23,1),
	(24,6),
	(25,2),
	(26,4),
	(27,7),
	(1,4),
	(1,6),
	(2,3),
	(3,2),
	(4,5),
	(5,7),
	(6,8),
	(7,3),
	(8,4),
	(9,5),
	(10,7),
	(11,3),
	(12,2),
	(13,4),
	(14,6),
	(15,7),
	(16,8),
	(17,3),
	(18,8),
	(19,3),
	(20,6),
	(21,2),
	(22,7),
	(23,8),
	(24,4),
	(25,5),
	(26,2),
	(27,6)
	;


---插入景点
INSERT INTO zl_scenery VALUES (nextval('scenery_id_seq'), '测试景点1', 'AA', '测试景点1', '/upload/16004211.jpg', 2, '测试地址1', '116.41689300', '39.90858000', '2000.00', '', '', '可拉伸监管局了关键拉伸机考虑到阿鲁高算拉倒快递公司', '', 1, NULL, 0, current_timestamp, current_timestamp);
INSERT INTO zl_scenery VALUES (nextval('scenery_id_seq'), '测试景点2', 'AAAA', '测试景点2', '/upload/20479109.jpg', 3, '城隍庙', '121.49397200', '31.22797600', '500.00', '', '', '阿斯钢经历过了看见爱上的jg', '', 0, NULL, 0, current_timestamp, current_timestamp);

--插入签证国家
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '美国');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '加拿大');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '中国');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '新加坡');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '西班牙');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '瑞士');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '荷兰');
INSERT INTO zl_visa_country VALUES (nextval('visa_country_id_seq'), '德国');

--插入签证类型
INSERT INTO zl_visa_type VALUES (nextval('visa_type_id_seq'), '旅游签证');
INSERT INTO zl_visa_type VALUES (nextval('visa_type_id_seq'), '商务签证');
INSERT INTO zl_visa_type VALUES (nextval('visa_type_id_seq'), '探访签证');

--插入签发城市
INSERT INTO zl_visa_city VALUES (nextval('visa_city_id_seq'), '洛阳');
INSERT INTO zl_visa_city VALUES (nextval('visa_city_id_seq'), '北京');
INSERT INTO zl_visa_city VALUES (nextval('visa_city_id_seq'), '上海');

--插入签证
INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '西班牙探亲访友签证', 5, 1, '/upload/22911906.gif', '850.00', 1, '2016-12-31', '1个月', '5天', '10', NULL,'..............', '<span style="line-height:20px;background-color:#ffffff;font-family:宋体, Arial;white-space:normal;color:#333333;font-size:14px;">西班牙自由行签证费850/本，资料电询。商务签需要以下：</span> 
<div style="padding-bottom:0px;line-height:20px;background-color:#ffffff;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;font-family:宋体, Arial;white-space:normal;color:#333333;font-size:14px;padding-top:0px;" id="visa_s_conent_c">
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">1</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">护照</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">2</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">申请表一张（旅行社提供）</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">3</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">照片</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">1</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">张</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">4</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">韩国律师事务所<b style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;">公正过的</b>邀请函原件（需含邀请事由和归国保证书等内容）</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">5</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">邀请公司<b style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;">公正过的</b>事业者登陆证证明原件（</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">???????</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">）和纳税事实证明（</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">??????</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">）（税务所签发）原件</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">6</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">被邀请人的在职证明原件（需含有在职时间，负责部门等内容并盖有公司公章）</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">7</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">被邀请人的营业执照正本及副本的复印件</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">8</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">商务活动的证明文件（如双方签订过的合同，合同意向书，提货单等）</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">9</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">被邀请人的简历书</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">10</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">被邀请人的身份证复印件</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">11</span><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">暂住证原件（户口所在地不属于北京管辖范围）</span> 
	</div>
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;" align="left">
		<u style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;text-decoration:none;padding-top:0px;"><span style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;color:black;font-size:9pt;padding-top:0px;">申请签证后，签证签发与否签证费及手续费一律不予退返</span></u> 
	</div>
</div>
<div style="padding-bottom:0px;line-height:20px;background-color:#ffffff;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;font-family:宋体, Arial;white-space:normal;color:#333333;font-size:14px;padding-top:0px;" id="visa_s_conent_t">
	<img style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;display:block;vertical-align:middle;padding-top:0px;" src="http://www.lyhh176.com/img/tlshow_bt3.gif">特别提示
</div>
<div style="padding-bottom:0px;line-height:20px;background-color:#ffffff;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;font-family:宋体, Arial;white-space:normal;color:#333333;font-size:14px;padding-top:0px;" id="visa_s_conent_c">
	<div style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;">
		<b style="padding-bottom:0px;margin:0px;outline-style:none;outline-color:invert;padding-left:0px;outline-width:0px;padding-right:0px;zoom:1;padding-top:0px;">1.</b>韩国商务签证和个人自保签证、韩国短期留学签证，
	</div>
</div>
13837998881&nbsp;&nbsp; 18037916889&nbsp;&nbsp; 65186958&nbsp; 65186968&nbsp;&nbsp;
<p style="text-align:center;" class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">韩国个别观光旅游签证</span><span style="font-family:''Times New Roman'';font-size:22pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">1.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">因私护照（6个月以上有效期、4页以上空白页）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">2.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">2张照片&nbsp;白底两寸&nbsp;近期彩照，冲洗相片（至少是近两个月</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">3.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">签证申请表（电子打印，</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">手写签名</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">4.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">身份证复印件（正反面复印在一张A4纸上）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">5.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">户口本（整本复印件）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">6.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">近6个月以上储蓄卡的交易记录。（姓名，账号，银行盖章，截止日期到</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">送签的前两周以内</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">7.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">近6个月以上的信用卡交易记录&nbsp;（银行签发，有银行盖章）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">8.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">近6个月的社保明细单原件</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-18pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">9.</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">近6个月的个人所得税完税证明原件&nbsp;</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">10.&nbsp;房产证原件</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">11&nbsp;在职证明+营业执照副本复印件（加盖公章）</span><span style="font-family:''宋体'';font-size:26pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">★特别提示：</span><span style="font-family:''宋体'';color:#ff0000;font-size:26pt;font-weight:bold;"></span>
</p>
<p style="text-indent:28pt;" class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">第6-10项经济材料任选其中两项即可送签！！！在满足两项材料之后，车辆登记证可以提供复印件作为辅助材料！</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:28.1pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">在校生申请时</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-42pt;margin-left:88.1pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">①</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">国内在校生：</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">在校证明</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">、</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">学生证原件</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">以及学信网上面</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">有二维码的学籍信息</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">。</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:-42pt;margin-left:88.1pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"><span><span style="font-size:14px;">②</span><span style="font-size:14px;">&nbsp;</span></span></span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">海外学生：学生证，在校证明或者成绩单</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="margin-left:46.1pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">在提供了前几项之后，可以提供父母名下的经济能力证明材料，但需要提供户口本原件（如在同一户口本上面）或亲属关系公证书（不在同一户口本上面）。【毕业不满半年的可以按学生资料来准备，需提供毕业证原件】</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="margin-left:46.1pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-indent:35pt;margin-left:18pt;" class="p15">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">11.暂住证原件和复印件（户口非湖北，湖南，江西，河南四省的）</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">12.退休人员，须是</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">年满55岁</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">，必须提供</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">退休证原件</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">，此情况下可以只提供一项经济证明材料，必须是</span><span style="font-family:''宋体'';color:#ff0000;font-size:14px;font-weight:bold;">退休工资流水</span><span style="font-family:''宋体'';font-size:14px;font-weight:bold;">。如不能提供退休证原件，则必须提供两项经济证明材料</span><span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>
<p style="text-align:left;" class="p0">
	<span style="font-family:''楷体_GB2312'';font-size:14px;">注明：</span><span style="font-family:''楷体_GB2312'';font-size:12pt;"></span>
</p>
<p style="text-align:left;margin-left:18pt;" class="p0">
	<span style="font-family:''宋体'';font-size:14px;font-weight:bold;">具备以上资料并不保证客人能获得签证；我们在审查资料过程中可能因为材料不准确，不清楚，不真实或别的方面原因而要求客人补充相关材料；</span><span style="font-family:''宋体'';font-size:15pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:15pt;font-weight:bold;"></span>
</p>
<p class="p0">
	<span style="font-family:''宋体'';font-size:14pt;font-weight:bold;"></span>
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '瑞士商务签证', 6, 1, '/upload/22930343.gif', '1600.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '荷兰探亲访友签证', 7, 1, '/upload/22831328.gif', '2000.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '荷兰探亲访友签证', 7, 1, '/upload/22831328.gif', '2000.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '荷兰探亲访友签证', 7, 1, '/upload/22831328.gif', '2000.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '荷兰探亲访友签证', 7, 1, '/upload/22831328.gif', '2000.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '美国旅游签证', 1, 1, '/upload/22740953.gif', '1688.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);

INSERT INTO zl_visa VALUES (nextval('visa_id_seq'), '德国商务签证', 8, 1, '/upload/22812921.gif', '5220.00', 1, '2016-12-31', '半个月', '10天', '20', NULL,'..............', '<p>	法国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）13837998881
</p>
<p>
	英国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186958
</p>
<p>
	德国签证1600/本，需提供：护照+两张两寸白底照片+在职+营业执照+身份证+户口本+结婚证+工资卡近半年对账单+资料表+真实酒店订单（商务、探亲加邀请原件）65186968
</p>
<p>
	&nbsp;
</p>', '介绍', 0,current_timestamp,current_timestamp);


--插入攻略
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'只为赴你的千年之约','凤凰的住宿：<br>
&nbsp;&nbsp; 凤凰有很多的客栈宾馆，你可以选择沱江河边的吊脚楼，也可以选择古城里面的家庭客栈，或者是新城里的家庭宾馆。凤凰城不是很大，古城就被新城包围在里面，不管去哪里走路都不用走多久，吊脚楼的房价比较贵一点，晚上也会比较吵一点，你可以按照你的喜好跟经济条件选择住宿，凤凰最好的酒店是天下凤凰大酒店，是凤凰唯一一家四星级酒店。<br>
&nbsp;<br>
&nbsp;<br>
文艺青年范游凤凰攻略：凤凰古城青山绿水赏春，盛夏沱江河天然浴场冰水浴，秋收后苗镇赶边边场(男女青年情爱表达)，隆冬凤凰城清冷石板街寻古。<br>
&nbsp;<br>
终篇：海子说“远在远方的风比远方更远”于是便想着跟风流失远方；他说“远方除了遥远，一无所有”，于是这样的一无所有便成了从一个地方到达另一个地方的理由。有人为了摆脱城市的疲惫逃到这里，有人为了寻找自己的“翠翠”和“傩送”。可是美丽的凤凰啊，为了你的千年等一回，我愿意奔向你的怀抱被你的大美所震慑，融化在你千年的悠悠时光里。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'丽江，慢生活','&nbsp;&nbsp;&nbsp; 平时比较忙，所以旅游就只好凑热闹赶在了国庆节，本人在成都，距离云南不远不近吧<br>
行程开始了，<br>
9-28下午1点成都火车出发，经过18个小时<br>
9-29早上8点抵达昆明。卧铺240RMB.<br>
昆明没有想象中美，印象中的春城该是绿色干净的，可是城市绿化一般，交通拥堵很厉害。<br>
去了云南大学，昆明医学院，和翠湖，因为时间不对，据说过一阵子就会见到无数海鸥，来这里过冬，翠湖的景致不错，但是由于国庆节便在湖中安放了巨大的灯笼，显示喜庆，本人拙见，俗气，破坏了翠湖的景致。<br>
9-29晚10点坐在了去丽江的火车，90RMB。睡了一卷，醒来人就踏在了丽江的土地上',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'夏威夷旅游攻略','可爱岛—夏威夷发现之岛<br>
这座最古老和最北端的小岛洋溢着让人赞叹的天然美感。户外探险和浪漫逃逸在可爱岛上随处可见。<br>
从纳帕利海岸（Napali Coast）的碧绿悬崖，到连绵的威美亚峡谷，可爱岛拥有与其它地方完全不同的景色。陆地旅游、乘船或直升机游览全岛，不一样的体验不一样的风景。从波普海滩（Poipu Beach）到哈纳雷海湾（Hanalei Bay）长50英里（90公里）是天堂般美丽的海滩。游览迷人的哈纳佩佩（Hanapepe）和可洛亚（Koloa）小镇，这里的房子都比椰子树都要矮。“夏威夷发现之岛”正等待您的到来，去探索无穷的景色。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'喀什有什么好玩的 喀什交通美食住宿攻略 喀什旅游全攻略','口岸位于帕米尔高原上的塔什库尔干塔吉克自治县。这是中国与巴基斯坦边界的通商口岸，也是新疆唯一的一个对第三国开放的公路口岸，是中国西部通往中东、南亚次大陆乃至欧洲的重要门户。口岸原来设在塔什库尔干的皮拉力，距中、巴边境34公里，海拔高度4700米，高寒缺氧。1993年，红旗拉甫口岸正式迁至海拔3200米的塔什库尔干县城。新址距中、巴边境131公里，离喀什290公里。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'瑞士旅游攻略：以中立著名的世界公园','瑞士有“世界公园”的美誉，也是世界著名的中立国，许多国际性组织的总部都设在瑞士。瑞士也是全球最富裕、经济最发达和生活水准最高的国家之一。<br>
瑞士是一个山国，山清水秀。在苏黎世，漫步在苏黎世湖边感受瑞士的宁静之美；在沙夫豪森，感受欧洲最大的瀑布“莱茵河瀑布”的气势如虹；在卢塞恩，看远处雪山倒映在清澈见底的琉森湖中；在因特拉肯，登上阿尔卑斯山著名的“少女峰”；在瑞士最大温泉胜地洛伊克巴德，伴着远处的山景泡个温泉彻底放松身心；在日内瓦，漫步在日内瓦湖畔的英国公园，欣赏日内瓦的象征“湖中150米高的大喷泉”的壮观景象。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'如何选择适合自己的海岛 摩登珠海：碧海蓝天风情游','宁静、休闲是人们对珠海的第一印象，初到珠海的人会感到惊奇，环岛一遍你会发现，亚热带特有的摩登气息充斥着整个珠海，碧海蓝天下的珠海无限风情。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'常州溧阳天目湖御水温泉 森林竹海里的养生典范','全国首屈一指的能在竹林中泡温泉的地方，怀古氛围不营自浓。<br>
&nbsp;',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'普罗旺斯，等待我和你的爱情重新开始','你说法国你最想去的地方不是巴黎，而是普罗旺斯。那薰衣草的故乡，蔚蓝的天空，紫色的花海，有你最钟情的蓝色，还有我偏执的紫色。我们曾经谈论着彼此的环游世界，可不可以有一天，在普罗旺斯，我等待着你和我们的爱情重新开始？',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'爱上沙巴那片天，恋上沙巴那片海','对于很多人来说，蜜月是不可多得的甜蜜时期。比起平日里随时可以出游观览的国内风景地来说，他们对蜜月旅游有更大的期待，希望能有更多不一样的，新鲜的尝试。因而，走出国门是他们的首选。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'夏天去哪里旅游比较好 原味洞头：生态游绝佳处','　洞头最美丽的海滩，又名“黄金滩”。其状呈畚箕形，东北朝大海。退潮时露滩，坡度平缓，海面开阔，海水清澈。沙质为纯净铁板沙，坚硬细腻，踩后无明显痕迹。半环抱浴场的岩怪,有“海豹石”，“老鹰捕雏”、“猛虎卧岗”等。浴场上部布着一条鹅卵石带；实为理想的游泳场和帆板、皮筏艇训练基地；此外还可以采贝，写生。<br>
&nbsp;在县城北岙镇的农贸市场有往大沙岙海滨浴场的的班车，票价1.5元。打的单程15元。',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'西行漫记——美景在远方','我们预定的最早一班海航上海飞往乌鲁木齐的飞机，于是早晨五点四十我就拉着个大箱子背着背包出了家门。最近飞机晚点的厉害，于是从乌鲁木齐到喀纳斯的飞机，我们选择了下午16:30起飞的一班。要说一下此次旅行最花钱的地方就在交通，新疆实在太远，我们又请不了太多的假，只好飞，上班的孩纸桑不起啊~~~',0,current_timestamp);
INSERT INTO zl_tourism_strategy VALUES(nextval('strategy_id_seq'),'沉醉不知归路，2个单身女孩的伊露岛之旅','<span style="background-color:#ffffff;color:#333333;">美好的时光,犹如流星一样，稍纵即逝。这篇游记，内容有点多，但不是攻略，而是个人感受。<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp; 我和eva是相识十多年的好友，这次还是第一次去旅行，本来我是计划去马来西亚的，她的一句话，顿时让我改变了出行的目的地，去马尔代夫！这是我一直一直以来的梦想，但之前总是以为，这么美丽的地方，是要和自己的另一半一起去的，这次不知怎么的，我认定就是去那了，说走就走，2个单身女孩子又怎样，一样也可以去蜜月圣地嘛！后来去的时候，完全没有见到像我们这样的组合过去玩的，大多都是夫妻，情侣，大家庭，我们2个女孩子，在这样浪漫的地方，也玩得很开心，所以，我的游记自娱自乐的成分较多，还请各位看官慢拍，嘿嘿。<br>
&nbsp;&nbsp;&nbsp; 选岛，这个过程十分痛苦，想必许多去过马代的兄弟姐妹们也有同样的感受，其实每个岛都有自己的特色，去哪个岛都不会后悔的。 问了几个代理，最终还是选择了某牛订了伊露岛，没别的原因，它家的报价比别家便宜了一点，我也图省事，就早早的签了合同，剩下的时间就是满怀期待的等待了。<br>
&nbsp;&nbsp; 掰着手指头，数啊数啊，终于过了3个月了，到了出发的那一刻，难以抑制内心的激动，历经千辛万苦到达了到达广州白云机场了，可是离登记时间还有8个小时，天啊！！好难熬啊，总算熬到上飞机那一刻，新加坡的航空服务实在是太好了，正当我和丽睡得昏昏沉沉的时候，突然传来一阵微弱的询问声“breakfast？”，我还没反应过来就说“ok",过了一秒钟，我突然看了一下表，现在是北京时间凌晨3点，吃早餐？？我晕倒，第一次在3点钟吃早餐，好吧，不同的体验即将要开始了，4点多钟到达新加坡机场，我一下飞机就激动的冲去那个画画的地方，好棒，我想玩这个东西想很久了，终于可以实现了，我和eva像2个小孩子一样，玩得不亦乐乎，引得大家驻足观看。</span>',0,current_timestamp);


--插入资讯
INSERT INTO zl_tourism_news VALUES(nextval('news_id_seq'),'祥鹏航空布局丽江市场 海航系发力地方航线','<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　8月23日，海航集团旗下云南祥鹏航空第二基地在<a href="http://jingqu.travel.sohu.com/c-100653.shtml" target="_blank">丽江</a>正式揭牌。至此，丽江机场基地航空公司除东航云南公司外又添新丁。这也意味着云南航运市场竞争再次升级。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　<strong>　“云南空战”升级</strong>
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　23日，云南祥鹏航空宣布，公司第二运营基地在丽江机场正式建成。这是继东航云南分公司2006年建立基地以来，丽江机场建成的第二个航空基地公司。云南其他航空公司也在加快合作进程。据云南当地媒体报道，<a href="http://jingqu.travel.sohu.com/c-100654.shtml" target="_blank">昆明</a>航空也正在与丽江机场就基地建设进行深入接触。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　旺盛的旅游业、复杂的地理环境让民航业成为云南省发展的重点。“云南民航业的发展有两个特点，一是由于地理环境原因，地面交通极其不发达，二是云南经济发展速度快，尤其是旅游业发展快。这两个因素决定云南民航业的发展相对于全国速度更快。”中国民航大学航空运输经济研究所所长李晓津对《每日经济新闻》记者表示。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　政府的支持与旅游业的发达让云南航空运输市场成为航空公司必争之地，以祥鹏航空为首的海航系在云南的市场份额约占17%，位居第二。云南祥鹏航空表示，将丽江作为第二基地可以开通以丽江为始发至省外多城市航线，此外，两个基地的建设能够开通更多中转、联城航线，完善航线网络。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　“要想占据更多的市场占有率，必须做大航线网络，做大航线网络仅依靠单一的基地很难做到。”云南民航业内人士在接受《昆明日报》采访时表示。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　<strong>发力地方航线市场</strong>
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　祥鹏航空系海南航空集团旗下的控股公司，云南省国资委持股32%，海航系持有祥鹏航空68%股权。祥鹏航空的丽江布局也是整个海航战略的一个缩影。《每日经济新闻》记者注意到，自去年8月民航局放宽对航空公司成立申请审批后，海航加快了与地方政府合作建立地方航空公司的步伐。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　不过，受到海航青睐的支线市场目前盈利能力并不理想。李晓津表示目前，从支线机场的建设，到支线航空的运营，普遍都需要当地政府及民航局的补贴才能为继。8月初，民航局公布了关于2013年支线航空补贴预算方案及民航小机场补贴方案，两项补贴共计9.58亿元。“在有补贴的情况下，支线航空在满足很低的客座率下也能够保证不亏本。”李晓津表示。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　李晓津表示，支线航空受地方政府欢迎，“即使支线航空业本身不盈利，它也能够带动相关产业的发展。”数据显示，民航的投入和产出比例为1:8，对地方经济有强烈的带动作用。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　而对于海航来说,“航空搭台，经济唱戏”是其常用的模式，“可能对于海航来说，地方航空对于集团旗下其他产业的带动作用比航线运输本身意义更大一些。”
</p>',0,current_timestamp);
INSERT INTO zl_tourism_news VALUES(nextval('news_id_seq'),'夫妇骑自行车2万公里 沿古丝绸之路到北京','<div style="text-align:center;background-color:#ffffff;margin:24px auto 0px;color:#333333;" class="text-pic">
	<table style="margin:0px auto;border-collapse:collapse;" class="tableImg ke-zeroborder" border="0" cellspacing="0" cellpadding="0" align="center">
		<tbody>
			<tr>
				<td style="text-align:center;vertical-align:top;font-weight:normal;">
					<img class="flag_bigP" alt="图为莱特纳(Leitner)夫妇在天安门广场前的合影" align="middle" src="http://photocdn.sohu.com/20130813/Img384037223.jpg"> 
					<div style="margin:0px;font-size:14px;" class="conserve-photo">
						<div style="margin:0px;color:white;" class="comCount">
							147
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td style="text-align:center;background-color:#f2f2f2;font-size:12px;vertical-align:top;font-weight:normal;" class="text-pic-tt">
					图为莱特纳(Leitner)夫妇在天安门广场前的合影&nbsp;<a class="savePicBtn" href="javascript:void(0);">[保存到相册]</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　据德国之声8月11日报道，如今，出门旅行的方式多种多样，然而德国的一对夫妇却选择了最不轻松的一种：他们骑自行车从德国出发，沿着古丝绸之路赶赴中国，二人总共花了10个月的时间，行程近2万公里，最终到达北京。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　报道称，这对夫妇名叫雅斯敏(Jasmin)和莱特纳(Leitner)。当他们经历了漫长的旅程并最终站在天安门广场上时，连他们自己都不敢相信所发生的一切。2012年10月，二人从德国的弗莱堡(Freiburg)出发，带着轻便的行囊、笔记本电脑、相机和帐篷，途经意大利、斯洛文尼亚、克罗地亚、阿尔巴尼亚、土耳其、伊朗、乌兹别克斯坦等国前往中国，并将旅途中的点点滴滴记录在自己的博客上。今年6月中旬，他们从吉尔吉斯斯坦进入中国喀什地区，进而穿越沙漠，途经新疆、宁夏，并由西安往北骑至北京。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　莱特纳对中国的第一印象是天气异常炎热。他表示，放在背包中用于补充能量的糖果经常在取出时已经化成一团。连日来的炙热天气将二人的手臂晒得黝黑，他们笑称自己像是煤炭工人。此外，中国的地大物博、快速发展的经济和优良的基础建设也给他们留下了深刻的印象。而最令雅斯敏难以忘怀的是在戈壁沙漠中的旅程。她回忆道：“在沙漠中我们经历了最糟糕的一天，眼前的是无止境的直路和大片黄沙，令人相当沮丧。天气十分炎热，我们几乎脱水。但也是在同一天，先后有三辆车停下递水给我们，询问我们是否一切都好，这种感觉真的很美妙。” 在中国旅行了三周后，这对德国夫妇爱上了各种口味的中国菜，对于中国菜的烹调方式和变化多样赞不绝口。唯一美中不足的是，无论他们怎样拜托店家别放辣椒，食物上桌后还是辣得两人汗如雨下。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　许多得知莱特纳夫妇经历的人都很好奇：为什么他们要以自行车作为交通工具，并且选择北京作为旅途的终点呢？雅斯敏说，他们希望依靠自己的力量征服这段路程，不搭乘任何其他交通工具。早在多年前他们便有了骑自行车外出旅游的念头，只是不知道该骑往何方，直到她在一本游记上得到启发，并决定以最能贴近当地民众和文化的方式游历丝绸之路。
</p>',0,current_timestamp);
INSERT INTO zl_tourism_news VALUES(nextval('news_id_seq'),'女子因故误机 飞机滑行5公里后为其折返(图)','<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	昨天，萧山国际机场，收到了一封特殊的挂号信。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　白色的信纸、朴素的笔迹，这封手写的表扬信来自<a href="http://jingqu.travel.sohu.com/c-100529.shtml" target="_blank">长沙</a>，落款是“陈静”。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　信里讲述了一份感激之情、一次不多见的返航、一个不多见的特例：
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　9月15日，陈静正在<a href="http://jingqu.travel.sohu.com/c-100618.shtml" target="_blank">杭州</a>出差，突然接到家里打来的电话，称她家中的女儿和婆婆出了车祸，女儿当场就走了。心急如焚的她急于从杭州赶回长沙，但等到她赶到机场时，已经错过了最后一班从杭州直飞长沙的班机。绝望无助之际，机场叫回了已经准备起飞的班机，重新搭上了陈静，让她能第一时间赶回长沙。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　为迟到的旅客返航，在萧山国际机场的历史上也不多见。而这一次，不是为了某个明星，也不因特权，只是因为一份母亲家逢意外时想要“回家”的迫切之情。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　千言万语，就像信里写的一样，归结起来只有两个字：谢谢。
</p>
<div style="margin:0px auto;font-size:12px;" id="formsSurvey">
	<h2 style="text-align:left;color:#047297;font-size:14px;font-weight:bold;">
		1.您认为航空公司是否应该为该女子返航？
	</h2>
	<ul style="font-size:12px;">
		<li style="text-align:left;color:#333333;font-size:12px;">
			情况特殊，应该
		</li>
		<li style="text-align:left;color:#333333;font-size:12px;">
			严重浪费公共资源，不应该
		</li>
	</ul>
	<h2 style="text-align:left;color:#047297;font-size:14px;font-weight:bold;">
		2.如果您在该次航班上，您会支持航空公司返航吗？
	</h2>
	<ul style="font-size:12px;">
		<li style="text-align:left;color:#333333;font-size:12px;">
			支持，值得同情和理解
		</li>
		<li style="text-align:left;color:#333333;font-size:12px;">
			不支持，会影响我的个人安排
		</li>
		<li style="text-align:left;color:#333333;font-size:12px;">
			无所谓
		</li>
	</ul>
	<div style="text-align:left;margin:0px auto;font-size:12px;" class="btn">
		<a id="result" href="javascript:void()">查看结果&gt;&gt;</a>
	</div>
</div>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　<strong>没赶上飞机，她失声痛哭</strong>
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	<strong>　　133名乘客、7个部门为她返航</strong>
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　昨天记者联系上陈静时，她还沉浸在失去亲人的悲痛中。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　不过，提起9月15日在萧山机场的一幕，陈静还是连说了几次“谢谢”。“接到家里面的电话后，我马上安排人帮我订好机票，原定起飞时间是9月16日0点05分，但我从杭州市区往机场赶时已是晚上10点了，只有不到两小时。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　紧赶慢赶，等她赶到机场时，还是错过了办理登机牌的时间。“当时我真的已经绝望了。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　赶不上飞机的焦急，加上失去亲人的痛苦，走投无路的陈静在候机室里失声痛哭，而这也引起了机场工作人员的注意。“当时这一班飞机是南航的，值班人员问了我的情况后，立即说替我想想办法。十几分钟后，他们告诉我，飞机返航，叫我准备登机，当时我真的不知道说什么好。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　众所周知，飞机返航不是闹着玩的，更不比班车可以多等几分钟。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　昨天下午，经过辗转打听，记者终于联系上“下令”让飞机返航的李惠敏，他的身份是南方航空杭州站站长。说起9月15日晚上的那一幕，李惠敏也感叹，这样的情况在南航杭州地区还是第一次。“主要是因为这位乘客的情况太特殊了。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　原来，当晚一开始，包括李惠敏在内的其他工作人员都只是把陈静当作了一位常见的误机旅客。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　陈静要坐的航班号是CZ6490，杭州直飞长沙，当天晚上23点25分已停止办理登机牌，但工作人员发现一个名叫陈静的旅客还未登机。“这种情况平时也经常出现，一般情况下，我们会通过旅客购票时登机的联系方式去联系乘客，然后再通过机场广播寻找旅客。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　连续拨打了8次陈静的手机，都无法接通，机场广播也没消息。工作人员还分组到登机口、安检口等多处寻找，均无旅客身影。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　23点45分，CZ6490航班关闭舱门，并开始滑向指定跑道，等待起飞命令。机场塔台指挥中心给CZ6490航班的起飞时间是9月16日0点05分。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　23点50分左右，陈静终于出现在了登机口。此时，飞机已经在离登机口5公里之外的跑道上，即将起飞。“我当时也只能试一试，先是联系机组，让机组人员说服飞机上的乘客，然后立即向机场报告此事。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　机上133名乘客需要说服、机场涉及地服调度、配载等7个部门需要沟通……20分钟后，CZ6490航班返航。由于跑道上不能开行接送车辆，飞机再次滑回登机口，接上了本已经迟到的陈静。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　最终，飞机在晚点了一个小时之后，9月16日0点54分从杭州起飞。
</p>',0,current_timestamp);
INSERT INTO zl_tourism_news VALUES(nextval('news_id_seq'),'“旅游法”实施 国庆内地团访港或减三成(图)','<div style="text-align:center;background-color:#ffffff;margin:15px auto 0px;color:#333333;" class="text-pic">
	<table style="margin:0px auto;border-collapse:collapse;" class="tableImg ke-zeroborder" border="0" cellspacing="0" cellpadding="0" align="center">
		<tbody>
			<tr>
				<td style="text-align:center;vertical-align:top;font-weight:normal;">
					<img class="flag_bigP" alt="" align="middle" src="http://photocdn.sohu.com/20130922/Img386979447.jpg"> 
					<div style="margin:0px;font-size:14px;" class="conserve-photo">
						<div style="margin:0px;color:white;" class="comCount">
							2
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td style="text-align:center;font-size:12px;vertical-align:top;font-weight:normal;" class="text-pic-tt">
					&nbsp;李先生和太太表示，以往未试过乘搭邮轮，这次主要看澳洲、纽西兰等地的邮轮团。 来源：<a href="http://jingqu.travel.sohu.com/c-100589.shtml" target="_blank">香港</a>《文汇报》&nbsp;<a class="savePicBtn" href="javascript:void(0);">[保存到相册]</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　中新网9月22日电 据香港《文汇报》报道，“十一黄金周”临近，大批内地旅客将会来港旅游，近日有意见指应为香港旅客量设上限，香港旅游业议会主席胡兆英21日出席电台节目时表示，香港作为旅游城市，很难为旅客量设上限，又指香港今年上半年的平均酒店入住率只有约84%，而香港的景点及交通都仍剩余一定接待能力，所以香港能够再接待更多旅客。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　对于近日有意见认为过多的旅客已超出香港承受能力，应限制个人游旅客数目。旅游业议会主席胡兆英出席电台节目时表示，业界不会只为做生意，就要求再开放个人游城市，强调港人的感受才是最重要，但香港作为国际性的旅游城市，很难为旅客量设置上限。“你不可能对旅客说客量已到上限，这样做有损香港作为国际性旅游城市的形象。”
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　他又指，今年上半年香港酒店平均入住率只有约84%，主题公园只于假日较挤拥，不论景点及交通都仍剩余一定接待能力，所以香港能够再接待更多过夜旅客，但他明白过多旅客会干扰到市民的日常生活，所以必须考虑香港市民的承受能力，而当局在发展旅游的同时，需要平衡市民生活及旅游业发展两方面。对于旺角、尖沙咀及铜锣湾等<a href="http://travel.sohu.com/shoppingc/index.shtml" target="_blank">购物</a>地区被旅客“迫爆”，他建议当局可以研究在远离市区的地区如东涌及机场开设大型购物城。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	<strong>　　“旅游法”实施 内地团访港减三成</strong>
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	　　随着内地新实施“旅游法”打击廉价团及购物团，胡兆英表示，实施“旅游法”会令内地出境团费上升，必定会影响内地旅客的报团人数，他预计“十一黄金周”内地到香港旅游团会因价格调整而下跌约30%，虽然个人游旅客仍会继续上升，但整体访港内地客在国庆期间仍会比去年同期下跌15%。
</p>
<p style="background-color:#ffffff;text-indent:0px;color:#000000;">
	&nbsp;
</p>',0,current_timestamp);
INSERT INTO zl_tourism_news VALUES(nextval('news_id_seq'),'旅游法》实施前抄底游火爆 入台证大面积延误','<div style="background-color:#ffffff;margin:0px auto 24px;color:#333333;" id="contentText" class="text clear">
	<div style="margin:0px;font-size:14px;">
		<p style="color:#000000;font-size:14px;">
			移民署电脑大塞车，入台证无法按时办理，每天有几十个团行程延误。<a href="http://jingqu.travel.sohu.com/c-100680.shtml" target="_blank">深圳</a>有台湾游资质的组团社也出现游客延滞。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　昨日上午，深圳6家有台湾游资质的旅行社之一建南国旅总经理助理何仕新表示，该旅行社9月中旬也发生了旅游团延滞，有的甚至延后一周左右。
		</p>
		<p style="color:#000000;font-size:14px;">
			<strong>　　延误损失由旅行社承担</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　“一年来都没有遇到这种情况。”何仕新说，受《旅游法》的影响，十一之后，赴台游的价格将毫无悬念地大幅上涨，许多游客便选择在9月“抄底”参团赴台游。“以前入台证3个工作日就可以办妥了，现在则要5个工作日甚至更长的时间”。她转述台湾地接社反馈的消息，台北移民署每天都要面对两三万份入台申请，严重超出了每天仅9000多的配额人数限制。入台证无法按期办下来，导致后面机票、酒店、行程安排等一系列问题的出现。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　据何仕新介绍，该旅行社有五六个团、两三百人发生了延误，“延后1天到7天的都有”。许多游客对此不理解，抱怨旅行社办事不力，“他们不知道，其实旅行社也决定不了入台证的办理时间，但由此产生的机票、酒店和餐厅的损失则只能由组团社和地接社共同承担”。据何仕新透露，仅最近这一项的损失就超过10万元。据悉，有台湾地接社考虑“跑路”。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　华侨城旅行社台湾部主管杨帆也表示，办理入台证确有延误现象发生，但对该旅行社的影响没有建南国旅那么大。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　<strong>“旅游淡季也变成旺季了”</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　业界人士认为，这次堵车是赴台游热潮所致，加上《旅游法》所规范的“纯玩团”，有台湾游资质的其他地区旅行社也会面临这样的问题。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　对此，深圳市旅游协会副秘书长周泉霖表示，这一现象可能是综合因素造成，但《旅游法》所造成的旅游产品价格上涨是不可忽视的因素。周泉霖说，此次中秋节和国庆节相隔不久，许多人会选择在9月休假出游，而《旅游法》十一后实施，更是让许多人觉得应赶紧去享受最后的便宜价格，毕竟团费几千元的涨幅对许多人来说，是一个不小的数字，“以前9月份是旅游淡季，现在也变成旺季了”。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　<strong><a href="http://jingqu.travel.sohu.com/c-100589.shtml" target="_blank">香港</a>反应</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			<strong>　　香港旅行社称旅游法<a href="http://travel.sohu.com/shoppingc/index.shtml" target="_blank">购物</a>规定理解不一影响内地客</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　<strong>部分内地旅行社酝酿变招吸客</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　有香港当地接待旅行社表示，不同省份的内地旅行社对新《旅游法》理解不一，故迟迟未推出十一黄金周行程，希望国家旅游局厘清。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　香港旅游业议会主席胡兆英表示，新法不是要赶绝购物团，若旅行社清楚列明购物详情，获旅客同意仍可带他们购物。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　有香港地接社负责人表示，内地旅行社对新法有不同理解，如<a href="http://jingqu.travel.sohu.com/c-100399.shtml" target="_blank">上海</a>、<a href="http://jingqu.travel.sohu.com/c-100721.shtml" target="_blank">北京</a>旅行社相信当地执法较严，倾向只推出纯玩团。但山西一带旅行社，则打算在行程中详细列明购物行程，若顾客同意才报团，“内地旅行社无法掌握法律细节，担心犯法，到现在都未有行程”。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　香港入境旅行社协会名誉会长吴光伟表示，旅游法指示不清，内地旅行社难定行程，未知如何带旅客购物才算合法。部分内地旅行社亦酝酿变招吸客，包括提议本地接待社与商户合作，为旅客提供现金券，鼓励旅客到相关店铺购物，并由本地接待社抽取回佣，续办廉价团，避过新法严禁强迫购物或定点购物条款。另一方法是与旅客签署正价团合约后，若他们同意到指定地点购物，签署附属合同，可获半价团费优惠。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　胡兆英表示，香港当地旅行社推出现金券可抽佣，续办低价旅行团属合法，但新法严禁内地旅行社强迫购物，本地旅行社有可能“无法回本”，故廉价团会减少。至于附属合同犹如“假合约”，若实际团费低于合理水平，内地组团社已违旅游法，强调旅游法将有效保障旅客。 中新社
		</p>
		<p style="color:#000000;font-size:14px;">
			　<strong>　专家说法</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			<strong>　　“看起来报价高了，其实总花费差不多”</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			<strong>　　<a href="http://travel.sohu.com/shijie.shtml" target="_blank">出境游</a>旅行方式将发生变化</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　针对抢搭“中秋游末班车”现象，<a href="http://jingqu.travel.sohu.com/fp-100001.shtml" target="_blank">泰国</a>旅游局驻<a href="http://jingqu.travel.sohu.com/c-100687.shtml" target="_blank">广州</a>办事处市场经理潘国鹏说，“这也提醒我们要对中国旅游者消费习惯的改变尽早作出回应，适应更高旅游产品价格带来的种种挑战。”
		</p>
		<p style="color:#000000;font-size:14px;">
			　　“原来的低团费游让很多中国游客被频繁要求前往珠宝店之类的购物场所，游客没有得到应有的旅游享受。同时，低廉成本还让赴泰中国游客‘过度发展’。”潘国鹏说。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　以消除“零、负团费”等恶性竞争为主旨的《旅游法》10月1日将正式实施。有迹象显示，作为世界最大出境旅游市场，中国游客正在改变传统路线选择和旅游消费习惯，这可能使规模超过千亿美元的出境旅游消费发生巨大改变。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　广之旅总裁陈白羽说，新法将使“低价团费+高价购物”的模式被市场遗弃，使已被严重扭曲的旅游产品价格真正回归其价值本身。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　一些市场机构认为，随着法规完善和市场模式转变，中国出境游客的旅行方式、旅游目的地选择和旅行时间都将发生一定变化。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　<strong>全球旅游产业界或需“闻法而变”</strong>
		</p>
		<p style="color:#000000;font-size:14px;">
			　　市场人士认为，全球旅游产业界或许都需要“闻法而变”，通过优化和丰富产品体系，实现稳定市场价格和降低消费门槛。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　<a href="http://jingqu.travel.sohu.com/fp-100003.shtml" target="_blank">马来西亚</a>旅游局华南区市场经理李翠玉说，在新法推动下，中国游客将从以往的观光游向深度度假游转变，“除了一价全包的团队游外，旅游目的地需要更注重半自助游和自助游的开发与完善。”
		</p>
		<p style="color:#000000;font-size:14px;">
			　　此外，全球酒店、民航等产业也需做好应变准备。业界人士认为，新法会导致中国旅行社两极化发展，小型旅行社的客源受冲击，令大部分资源向大型旅行社聚集，将对全球酒店、航运市场产生重大影响。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　长期研究旅游业发展的安徽大学旅游系主任李经龙分析认为，新法实施后，旅行社不会顶风作案，旅游行业肯定会经历一个阵痛期，但新法实施后，所有收费明朗化，将消除众多隐形消费，少花冤枉钱，看起来报团价提高了，事实上旅途总花费相差不多，而行程则会更清净。
		</p>
		<p style="color:#000000;font-size:14px;">
			　　“许多游客在初期对新法不是很了解，直观认为要涨价了，于是扎堆抢先游玩，其实无须有恐慌心理。”李经龙说，新法实施，将有利于保护游客的合法权益及旅游市场的长期健康发展。 新华社
		</p>
	</div>
</div>
<div style="background-color:#ffffff;margin:0px auto 13px;color:#333333;" class="original-title">
	<span style="font-size:14px;" class="editer">(责任编辑：季轲)</span>原标题：新法前“抄底”游火爆 入台证大面积延误
</div>',0,current_timestamp);
