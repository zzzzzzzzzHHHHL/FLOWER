SET NAMES UTF8;
DROP DATABASE IF EXISTS flower;
CREATE DATABASE flower CHARSET=UTF8;
USE flower;

/**鲜花家族**/
CREATE TABLE flower_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);


/**鲜花**/
CREATE TABLE flower_details(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  serial_number VARCHAR(32),  #编号
  material VARCHAR(64),       #材料
  pack VARCHAR(32),           #包装
  blessing VARCHAR(32),       #祝福语
  annexation VARCHAR(32),     #附赠
  distribution VARCHAR(32),   #配送
  state VARCHAR(64),          #说明
  details VARCHAR(1024)       #产品详细说明
);

/**鲜花图片**/
CREATE TABLE flower_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #鲜花编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);	

/**用户信息**/
CREATE TABLE flower_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE flower_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE flower_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE flower_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE flower_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/****首页商品****/
CREATE TABLE flower_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128)
);

/****进口鲜花****/
CREATE TABLE flower_import_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128)
);


/****爱情鲜花****/
CREATE TABLE flower_import_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128)
);


/*******************/
/******数据导入******/
/*******************/
/**笔记本电脑型号家族**/
INSERT INTO flower_family VALUES
(NULL,'玫瑰');



/**鲜花**/
INSERT INTO flower_details VALUES
(NULL,1,'爱之物语-14朵红玫瑰','499','RW000021','14朵红玫瑰，搭配适量龙柳、小彩灯装饰。','白色雾面纸韩式扇形包装，精美黑色英文丝带蝴蝶结束扎。','相爱的人是自私的，他们只为对方开花。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p1.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'醉相思-19朵红玫瑰','399','RW000102','19朵红玫瑰','长方形礼盒装','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p2.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'永不变心-11朵红玫瑰','199','RW000270','11朵红玫瑰','白底黑边硬纸扇形包装，白色丝带束扎。','你是我最初也是最后爱的人','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p3.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱的宣言-19朵红玫瑰','399','RW000265','19朵红玫瑰。','黑色雾面纸+黑色硬网圆形包装，金色缎带蝴蝶结束扎。','浮世三千吾爱有三，日月与卿，日为朝，月为暮，卿为朝朝暮暮。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p4.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'初心不负-11朵红玫瑰','399 ','RW000098','11朵红玫瑰，搭配适量尤加利叶装饰。','长方形礼盒装。','蝶恋花，花恋蝶，相恋相陪情深切。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p5.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'我如此爱你-33朵红玫瑰','599','RW000134','33朵红玫瑰','白色灰边雾面纸包装，白色透明网纱装饰，黑色英文缎带束扎','我如此爱你，这是我存在的意义，我如此爱你，想把所有都给你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p6.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'心花怒放-11朵红玫瑰','399 ','RW000105','11朵红玫瑰，搭配适量尤加利叶、情人草装饰。','长方形礼盒装。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p7.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'似水年华-33朵混色玫瑰','599 ','RW000018','33朵混色玫瑰（红玫瑰、粉玫瑰），搭配适量尤加利叶装饰','白色灰边雾面纸+黑色雾面纸包装，黑色英文丝带束扎','一辈子走过许多地方的路，看过许多形状的云，却只爱过一个正当最好年龄的人','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p8.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'心动的理由-19朵精品红玫瑰','599','RW000403','19朵红玫瑰（新娘玫瑰）','高档黑色长方形礼盒装','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p9.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'微笑的眼睛-33支粉色康乃馨','499','RW000086','33支粉色康乃馨，搭配适量情人草装饰','白色雪梨纸+白色黑边雾面纸韩式包装，灰色缎带束扎。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p10.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'甜心守护-抖音网红气球翅膀抱抱桶','799','RW000289','52朵混色玫瑰（粉玫瑰+白玫瑰），精美气球装饰。','粉色抱抱桶包装。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p11.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'偏偏喜欢你-抖音网红气球抱抱桶','699','RW000288','粉玫瑰+粉色康乃馨+粉色荔枝玫瑰+艾莎玫瑰+粉色洋桔梗+浅紫色多头小菊，搭配粉色、白色气球装饰。','粉色抱抱桶包装，白色雪梨纸装饰。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p12.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱意浓-33朵红玫瑰网红抱抱桶','699','RW000281','33朵红玫瑰，黑色米奇气球装饰。','黑色抱抱桶，白色雪梨纸装饰。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p13.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'情窦初开-33朵粉玫瑰网红抱抱桶','799','RW000280','33朵粉玫瑰（粉佳人），5颗星星气球装饰、适量尤加利叶装饰。','粉色抱抱桶包装，粉色缎带装饰。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p14.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱的抱抱-33朵粉玫瑰网红抱抱桶','699','RW000279','33朵粉玫瑰，粉色羽毛气球装饰。','灰色抱抱桶装，白色雪梨纸装饰。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p15.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'给你我的心-52朵红玫瑰网红抱抱桶','899','RW000278','52朵红玫瑰，5颗红色心形气球装饰。','精美黑色抱抱桶，红色缎带蝴蝶结装饰。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p16.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱的纪念-抖音网红气球翅膀抱抱桶','699 ','RW000290','33朵红玫瑰，白色、银色、黑色气球装饰。','黑色抱抱桶包装。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p17.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'真情绽放-33朵紫玫瑰抱抱桶','699','RW000247','33朵紫玫瑰（紫美人）+1朵粉绣球，搭配丰满紫色多头小菊、尤加利叶间插装饰。','精美抱抱桶包装。','你的过去我来不及参与，你的未来我奉陪到底。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p18.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'执手问年华-11朵红玫瑰','239','RW000268','11朵红玫瑰，搭配适量尤加利叶装饰。','白色透明纸+咖啡色落水纸圆形包装，拉菲草束扎。','渴望时光的长河里，与你牵手，不离不弃，享受点点滴滴的快乐。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p19.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'粉色的回忆-12朵粉玫瑰','199','RW000269','12朵粉玫瑰（粉佳人)。','双面硬纸扇形包装（粉色+浅咖啡色），白色缎带蝴蝶结束扎。','你的一颦一笑，你的一举一动，我都像珍宝的一样收藏在我的脑海。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p20.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'素锦年时-11朵粉玫瑰花束','199 ','RW000271','11朵苏醒粉玫瑰，搭配3支白色多头康乃馨、适量银边翠、蕾丝花装饰。','白色雾面纸包装，白色缎带蝴蝶结束扎。','总想轻轻的告诉你，你是我素锦年华里最美的相遇。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p21.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'芬芳脱俗-12朵白玫瑰','299','RW000266','12朵白玫瑰。','粉色硬纸扇形包装，白色缎带蝴蝶结束扎','你就像偶入人间的仙女，从此映入我的眼帘，久久不能忘怀。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p22.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'幸福快乐-粉色康乃馨+向日葵混搭','299 ','RW000251','1朵向日葵+6朵粉色康乃馨+3朵粉玫瑰，搭配3支浅绿色洋桔梗、2支绿色多头小菊、2支白色相思梅、3支粉色相思梅，适量情人草、尤加利叶装饰。','浅蓝色雾面纸扇形包装，粉色英文缎带蝴蝶结束扎','余生不求荣华富贵，只求你幸福快乐。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p23.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'温馨祝福-3色玫瑰混搭','399','RW000244','19朵混色玫瑰（7朵粉玫瑰+6朵香槟玫瑰+6朵紫玫瑰），搭配2支浅绿色洋桔梗、适量栀子叶、银边翠装饰。','粉色雾面纸韩式包装，黑色因为丝带+银色缎带蝴蝶结束扎。','你是我今生最爱的人，希望我们的爱情永不老去。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p24.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'一往深情-19朵红玫瑰','599','RW000132','19朵红玫瑰，搭配适量熊猫竹叶装饰。','黑色硬网纱+红色黑色欧雅纸+黑色软纱韩式包装，红色英文丝带束扎','你的轻柔像阵微风，让我从容不迫，想让你知道，我对你始终一往情深。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p25.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'祝福挚爱-33朵混色玫瑰','599','RW000256','33朵混色玫瑰（红玫瑰、粉玫瑰），搭配2朵白色乒乓菊、适量粉色满天星、红豆花、绿叶装饰。','白色雪梨纸+灰色雾面纸+粉色雾面纸韩式包装，白色英文缎带蝴蝶结束扎。','最平凡的细水长流，也因牵着你的手而幸福荡漾。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p26.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'一池柔情','399 ','RW000202','进口厄瓜多尔玫瑰花、桑蚕真丝丝巾、进口绣球','独特双开门礼盒搭配俏皮蝴蝶结','一池柔情、一抹芳菲、万千痴情。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p27.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'一眼万年','299','RW000217','进口厄瓜多尔巨型玫瑰、高端黑色绣球、高透玻璃罩、实木底座','高透玻璃罩、实木底座、精致高档品牌礼盒','深情一眼，挚爱万年','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p28.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'如胶似漆','699','RW000230','甄选厄瓜多尔永生玫瑰花头，搭配白纱金色丝带','亚格力透明外观精致漂亮，内置彩灯，穿透玻璃外罩，光泽感十足','像胶和漆那样黏结，感情炽烈，难舍难分','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p29.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'白羊座守护花-巨型永生花礼盒','359','RW000204','进口厄瓜多尔巨型玫瑰','精美的星座礼盒，内镶嵌水晶星座符号，独一无二的星座印记。','深情一眼，挚爱万年','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p30.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'真情不变','499 ','RW000203','进口厄瓜多尔玫瑰、进口黑色绣球围绕花朵','高品质精美六角形礼盒搭配精工复古铜牌','非卿不娶，非君不嫁、挚爱永恒、真情不变。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p31.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'举案齐眉','699','RW000233','甄选厄瓜多尔永生玫瑰花头，搭配彩灯，进口拉菲草','高端礼盒精致漂亮，内置彩灯，简约白色pu皮礼盒，搭配烫金色丝带，高端奢华','两个人相互尊重，感情非常深厚，非常恩爱','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p32.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'长相厮守','699','RW000222','进口厄瓜多尔玫瑰、进口绣球、进口满天星、动物羽毛','白色玻璃罩音乐箱、高端精致礼盒','长久在一起，互相守候，不离不弃。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p33.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'柔情蜜意','699','RW000227','甄选厄瓜多尔永生玫瑰花头，搭配白纱金色丝带','亚格力透明外观精致漂亮，内置彩灯，穿透玻璃外罩，光泽感十足','温柔亲密的情意。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','此商品为快递商品，全国统一顺丰包邮，请提前3-5天预订！','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p34.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'万事如意-网红气球开业花篮','299 ','RW000168','白色缎带蝴蝶结装饰，三角架包装。','马卡龙色气球（白色、粉色），搭配适量粉色满天星、粉玫瑰（粉佳人）、散尾葵装饰。','深情一眼，挚爱万年','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p35.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'繁华兴旺-玫瑰+百合开业花篮','299','RW000165','粉色雾面纸+粉色缎带蝴蝶结，三角架包装。','粉玫瑰+多头白百合+多头粉百合，搭配适量白色洋兰+紫色洋兰+散尾葵+栀子叶装饰。','深情一眼，挚爱万年','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p36.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'兴旺发达-网红气球开业花篮','399','RW000173','马卡龙色气球（玫红色、粉红色、橘红色、紫色）+浅绿色洋桔梗+粉玫瑰，搭配适量龟背叶、散尾葵、情人草装饰。','双色平面纸（粉色、浅绿色）+双色缎带（白色、粉色）包扎，三角架包装。','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p337.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'开业志禧-高端罗马柱开业花篮','688 ','RW000191','粉玫瑰、红色康乃馨、粉色洋桔梗，搭配适量巴西叶、紫色洋兰、龟背叶、栀子叶、粉色金鱼草、水蜡叶装饰。','精美罗马柱花篮（注：罗马柱需要回收）','门迎晓日财源广，户纳春风喜庆多。','免费附送精美插排/对联，代写祝福语。(下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p38.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'红红火火-红玫瑰开业花篮','888','RW000176','红玫瑰（卡罗拉）+红色多头小玫瑰+红豆花，搭配适量粉色洋桔梗、红枫叶、尤加利叶、绿色银柳装饰。','红色蕾丝网纱+双面雾面纸（酒红色、红色），黑色英文缎带+红色缎带束扎，三角架包装、','天晴朗，所以阳光灿烂。你微笑，所以心花怒放。','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p39.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'开张大吉-高端艺术开业花篮','1299 ','RW000175','粉绣球+红玫瑰+粉色洋桔梗，搭配适量龟背叶装饰。','丰满水蜡叶（蒲棒叶）包装。','深情一眼，挚爱万年','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p40.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'敬贺开张-红玫瑰+绣球款开业花篮','999 ','RW000163','红玫瑰+多头红色小玫瑰+粉色多头小玫瑰+红色绣球花，搭配适量红豆花、栀子叶、绿叶装饰。','香槟色网纱+双面雾面纸（红色+酒红色）+黑色英文丝带+红色英文丝带，三角架包装。','深情一眼，挚爱万年','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p41.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'客似云来-网红气球开业花篮','399','RW000171','马卡龙色气球（大红色、玫红色、粉红色）+紫玫瑰+粉玫瑰+粉色洋桔梗，搭配适量龟背叶、散尾葵、栀子叶、尤加利叶装饰。','红色雾面纸+红色缎带束扎，三角架包装。','深情一眼，挚爱万年','免费代写贺词条幅，下单时可填写。','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p42.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'回眸三生-33朵糖果雪山','699','RW000031','33朵糖果雪山玫瑰。','精美抱抱桶包装。','最美不是一生一世一双人，而是三生三世皆是你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p43.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱在巴黎-19朵甜心玫瑰','1499','RW000042','19朵甜心玫瑰，搭配适量尤加利叶装饰。','白色雾面纸韩式扇形包装，精美白色字母丝带+黑色丝带束扎。','只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p44.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'你的眼神-9朵香槟玫瑰+5支白色洋桔梗混搭','599','RW000056','9朵香槟玫瑰，搭配5支白色洋桔梗、2支绿色小雏菊、适量尤加利叶装饰。','白色雪梨纸+浅绿色硬纸韩式包装，灰白罗文带束扎','只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p45.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'宝贝对不起-39朵白玫瑰','699','RW000025','39朵白玫瑰，搭配适量白色蝴蝶结等装饰。','方形灰色礼盒装。','那一身白衣，惊艳了我的眼眸，倾覆了我的城。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p46.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'心上人-13朵混色玫瑰韩式混搭','499','RW000036','5朵粉玫瑰（粉红雪山）、2朵紫玫瑰（海洋之歌）、6朵白玫瑰，搭配适量浅蓝色配花、白色蕾丝花、尤加利叶等配花装饰。','浅咖啡色软纸+白色条纹雾面纸韩式扇形包装，精美灰色丝带束扎。','全世界只有个你，叫我如何不珍惜。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p47.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'倩影翩翩-12朵甜心玫瑰','1499','RW000037','12朵厄瓜多尔甜心玫瑰，搭配适量鸟巢叶、蜈蚣草装饰。','精美长方形礼盒装。','独占你绝世的容颜，拥着你便拥有全世界','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p48.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'红豆相思-99朵红玫瑰','1199','RW000050','99朵红玫瑰','白色雾面纸+白色网纱韩式圆形包装，精美黑色缎带蝴蝶结束扎。','从不相信一见钟情，直到遇见命中注定，脑海中都是恋人的身影。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/p49.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱在巴黎-19朵甜心玫瑰','1499','RW000042','19朵甜心玫瑰，搭配适量尤加利叶装饰。','白色雾面纸韩式扇形包装，精美白色字母丝带+黑色丝带束扎。','只想和你忘掉一切烦恼，尽情沉醉在最浪漫的气氛中。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk1.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'青春之歌-11朵甜心玫瑰','1499','RW000043','11朵厄瓜多尔甜心玫瑰，搭配适量尤加利叶等装饰。','黑色雾面纸韩式扇形包装，精美黑色丝带束扎。','在青春的年华里，找到你爱的人，让她也爱你，这便是此生最大的幸福。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk2.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'悦动你心-19朵厄瓜多尔甜心玫瑰','1799','RW000083','19朵厄瓜多尔甜心玫瑰。','精美长方形礼盒装。','我的喜悦,我的快乐,全部都交付给你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk3.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'生命的主角-天空玫瑰韩式混搭','1999','RW000064','9朵厄瓜多尔天空玫瑰、6朵白玫瑰、1朵蓝绣球，搭配适量绿叶等配花装饰。','白色雾面纸、蓝色雾面纸、灰色皮纹硬纸韩式包装，精美灰色丝带蝴蝶结束扎。','你是我这一辈子的唯一主角。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk4.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'天使的心跳-9朵澳洲玫瑰','899','RW000046','7朵紫色澳洲玫瑰、2朵白色澳洲玫瑰，搭配适量白色火龙珠、紫色马尾草、尤加利叶等装饰。','黄色牛皮纸韩式扇形包装，精美灰色缎带蝴蝶结束扎。','你是我惟一的心脏，我的心跳不是为别人而跳，只是为你而跳。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk5.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'清水美嘉-9朵肯尼亚进口玫瑰','1499','RW000029','9朵肯尼亚进口复古色卡布基诺玫瑰，搭配适量进口茵芋、进口松虫草、进口康乃馨装饰。','粉色+浅灰色雾面纸韩式扇形包装。','把你的名字写在手心，摊开时是想念，握紧时是幸福。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk6.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'倩影翩翩-12朵甜心玫瑰','1499','RW000037','12朵厄瓜多尔甜心玫瑰，搭配适量鸟巢叶、蜈蚣草装饰。','精美长方形礼盒装。','独占你绝世的容颜，拥着你便拥有全世界。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk7.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'花月佳期-12朵天空玫瑰','1799','RW000027','12朵厄瓜多尔进口蓝白玫瑰。（只接受预定）','精美黑色长方形礼盒装。','你是雨天的七色伞，总是在我最需要的时候出现。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk8.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'叶上胭脂-19朵厄瓜多尔红玫瑰','1499','RW000054','19朵厄瓜多尔红玫瑰。','精美礼盒装。','我路过万家灯火，而你才是我的归途。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk9.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'美好如初-进口绿玫瑰海芋韩式混搭','1599','RW000088','7朵进口绿玫瑰、5朵进口海芋，搭配5支白色郁金香、3支白色洋牡丹、进口尤加利叶等装饰。','灰色雾面纸韩式扇形包装，精美灰色丝带蝴蝶结束扎。','最平凡的细水长流，也因牵着你的手而幸福荡漾。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk10.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'缘如花-9朵红玫瑰','1499','RW000004','7朵红玫瑰、2朵厄瓜多尔甜心玫瑰，搭配2朵永生棉花干花、5朵红色洋牡丹、5支红色风蜡花、4支红枫叶、若干藤枝装饰。','粉色雾面纸、粉色雾面纸韩式扇形包装，红色丝带蝴蝶结束扎。','遇见你，我信了这世间还有命中注定的情缘。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk11.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'梦幻星空-11朵七彩玫瑰','1299','RW000057','11朵七彩玫瑰，搭配适量尤加利叶装饰。','长方形礼盒装。','纵然繁星璀璨永恒，也不及你耀眼半分。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款产品由于花材特殊，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk12.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱情印记-14朵进口厄瓜多尔甜心玫瑰','1499','RW000089','14朵进口厄瓜多尔甜心玫瑰，搭配适量尤加利叶装饰。','长方形礼盒装。','赤诚热烈的爱，此生只给你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk13.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'时光舞步-10朵甜心玫瑰','1499','RW000019','10朵厄瓜多尔甜心玫瑰 ，搭配适量尤加利叶等装饰。','红色硬纸韩式扇形包装，精美黑色英文丝带蝴蝶结束扎。','也许你望着月亮时，我正在想你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk14.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'飞花似梦-19朵进口厄瓜多尔甜心玫瑰','1799','RW000091','19朵进口厄瓜多尔甜心玫瑰，搭配适量尤加利叶装饰。','长方形礼盒装。','岁月若诗，时光如画，只片刻，我爱上了你。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk15.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'简爱-6朵厄瓜多尔粉白玫瑰','999','RW000067','6朵厄瓜多尔粉白枪炮玫瑰，搭配适量尤加利叶装饰。','高档长方形礼盒装。','因为爱你，所以浪漫。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk16.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'爱的期许-11朵进口厄瓜多尔红玫瑰','999','RW000093','11支厄瓜多尔巨型红玫瑰，搭配多头红玫瑰、进口圆叶尤加利、尤加利果、松果、兔尾草装饰。','黑色雾面纸韩式扇形包装，精美黑白条纹丝带蝴蝶结束扎。','让我们乘着芬芳的清风，手牵手走过爱的四季春秋。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk17.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'纯美花开-11朵厄瓜多尔蓝色玫瑰','1999','RW000069','11朵厄瓜多尔蓝色玫瑰，搭配4支白色洋桔梗、进口尤加利叶装饰。','灰色雾面纸韩式扇形包装，精美黑色丝带蝴蝶结束扎。','你的笑脸是最好看的风景，一次次温暖我的心。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','特别说明：本款为特别款进口鲜花，请至少提前1-3天预订，或订购前咨询客服。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk18.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'无尽的爱-9朵肯尼亚卡布奇诺玫瑰','899','RW000264','9朵肯尼亚进口卡布奇诺玫瑰，搭配适量尤加利叶、排草、白色小花装饰。','白色硬网纱+咖啡色牛皮纸韩式包装，白色缎带蝴蝶结束扎。','为了你，我可上九天揽月，可下五洋捉鳖。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材 的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk19.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'布拉格之恋-9朵进口红玫瑰','999','RW000075','9朵进口厄瓜多尔红玫瑰，搭配适量尤加利叶装饰。','黑色长方形礼盒装。','一次偶然的凝眸，就注定了一生的痴情依托。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk20.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'你是对的人-新娘手捧花','999','RW000303','9朵肯尼亚进口卡布奇诺玫瑰+9朵浅粉色康乃馨+6朵干棉花+6朵粉玫瑰，搭配丰满白色澳洲腊梅+适量尤加利叶装饰。','新娘手捧花','为了你，我可上九天揽月，可下五洋捉鳖。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk21.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'倾情于你-9朵薄荷玫瑰','1799','RW000082','9朵薄荷玫瑰，搭配适量尤加利叶装饰。','白色雾面纸+白色硬网纱韩式包装，精美灰色+黑色丝带蝴蝶结束扎。','你的名字，是我见过最短的情诗，唤上一声都拨动心弦。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk22.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'梦境丛林—森系高档礼盒装','1599','RW000304','针垫1支+肯尼亚进口卡布奇诺玫瑰+进口厄瓜多尔甜心玫瑰+粉色洋牡丹+紫玫瑰，搭配黄色水仙百合、松果、尤加利叶，红豆花装饰。','高档复古方形礼盒装，黄色丝带装饰。','你的名字，是我见过最短的情诗，唤上一声都拨动心弦。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk23.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>'),
(NULL,1,'异域风情-进口花材混搭（送花瓶）','799','RW000372','1支绿色绣球花+5支厄瓜多尔甜心玫瑰，搭配丰满白色澳洲腊梅、红色澳洲腊梅、红枫叶、相思豆装饰。','各城市花瓶款式略有差异，以当地实物为准。','你的名字，是我见过最短的情诗，唤上一声都拨动心弦。','免费附送精美贺卡，代写您的祝福。(您下单时可填写留言栏)','全国 （可配送至全国1000多个城市，市区免配送费）','由于各地的花艺师不同，鲜花包扎可能在形式和搭配上与图片不完全一致，但保证主花材的新鲜程度、数量、颜色与说明一致，谢谢您的理解。','<div class="content_tpl"><div class="formwork"><div class="formwork_img"><img class="" src="img/product/details/jk24.jpg"><img class="" src="img/product/details/p50.jpg"></div></div></div>');




/**用户信息**/
INSERT INTO flower_user VALUES
(NULL, 'tom', '123456', 'ding@qq.com', '13501234567', '1'),
(NULL, 'jerrey', '123456', 'dang@qq.com', '13501234568', '1'),
(NULL, 'eric', '123456', 'dou@qq.com', '13501234569', '1'),
(NULL, 'lee', '123456', 'ya@qq.com', '13501234560', '0');


/****首页商品****/
INSERT INTO flower_index_product VALUES
(NULL, null, 'img/index-product/ip1.png', null, 'product_details.html?lid=1'),
(NULL, null, 'img/index-product/ip2.jpg', null, 'product_details.html?lid=2'),
(NULL, '永不变心-11朵红玫瑰', 'img/index-product/ip3.jpg', 199, 'product_details.html?lid=3'),
(NULL, '爱的宣言-19朵红玫瑰', 'img/index-product/ip4.jpg', 399, 'product_details.html?lid=4'),
(NULL, '初心不负-11朵红玫瑰', 'img/index-product/ip5.jpg', 399, 'product_details.html?lid=5'),
(NULL, '我如此爱你-33朵红玫瑰', 'img/index-product/ip6.jpg', 599, 'product_details.html?lid=6'),
(NULL, '心花怒放-11朵红玫瑰', 'img/index-product/ip7.jpg', 399, 'product_details.html?lid=7'),
(NULL, '似水年华-33朵混色玫瑰', 'img/index-product/ip8.jpg', 599, 'product_details.html?lid=8'),
(NULL, '心动的理由-19朵精品红玫瑰', 'img/index-product/ip9.jpg', 599, 'product_details.html?lid=9'),
(NULL, '微笑的眼睛-33支粉色康乃馨', 'img/index-product/ip10.jpg', 499, 'product_details.html?lid=10'),
(NULL, '甜心守护-抖音网红气球翅膀抱抱桶', 'img/index-product/ip11.jpg', 799, 'product_details.html?lid=11'),
(NULL, '偏偏喜欢你-抖音网红气球抱抱桶', 'img/index-product/ip12.jpg', 699, 'product_details.html?lid=12'),
(NULL, '爱意浓-33朵红玫瑰网红抱抱桶', 'img/index-product/ip13.jpg', 699, 'product_details.html?lid=13'),
(NULL, '情窦初开-33朵粉玫瑰网红抱抱桶', 'img/index-product/ip14.jpg', 799, 'product_details.html?lid=14'),
(NULL, '爱的抱抱-33朵粉玫瑰网红抱抱桶', 'img/index-product/ip15.jpg', 699, 'product_details.html?lid=15'),
(NULL, '给你我的心-52朵红玫瑰网红抱抱桶', 'img/index-product/ip16.jpg', 899, 'product_details.html?lid=16'),
(NULL, '爱的纪念-抖音网红气球翅膀抱抱桶', 'img/index-product/ip17.jpg', 699, 'product_details.html?lid=17'),
(NULL, '真情绽放-33朵紫玫瑰抱抱桶', 'img/index-product/ip18.jpg', 699, 'product_details.html?lid=18'),
(NULL, '执手问年华-11朵红玫瑰', 'img/index-product/ip19.jpg', 239, 'product_details.html?lid=19'),
(NULL, '粉色的回忆-12朵粉玫瑰', 'img/index-product/ip20.jpg', 199, 'product_details.html?lid=20'),
(NULL, '素锦年时-11朵粉玫瑰花束', 'img/index-product/ip21.jpg', 199, 'product_details.html?lid=21'),
(NULL, '芬芳脱俗-12朵白玫瑰', 'img/index-product/ip22.jpg', 299, 'product_details.html?lid=22'),
(NULL, '幸福快乐-粉色康乃馨+向日葵混搭', 'img/index-product/ip23.jpg', 299, 'product_details.html?lid=23'),
(NULL, '温馨祝福-3色玫瑰混搭', 'img/index-product/ip24.jpg', 399, 'product_details.html?lid=24'),
(NULL, '一往深情-19朵红玫瑰', 'img/index-product/ip25.jpg', 599, 'product_details.html?lid=25'),
(NULL, '祝福挚爱-33朵混色玫瑰', 'img/index-product/ip26.jpg', 599, 'product_details.html?lid=26'),
(NULL, '一池柔情', 'img/index-product/ip27.jpg', 399, 'product_details.html?lid=27'),
(NULL, '一眼万年', 'img/index-product/ip28.jpg', 299, 'product_details.html?lid=28'),
(NULL, '如胶似漆', 'img/index-product/ip29.jpg', 699, 'product_details.html?lid=29'),
(NULL, '白羊座守护花-巨型永生花礼盒', 'img/index-product/ip30.jpg', 359, 'product_details.html?lid=30'),
(NULL, '真情不变', 'img/index-product/ip31.jpg', 499, 'product_details.html?lid=31'),
(NULL, '举案齐眉', 'img/index-product/ip32.jpg', 699, 'product_details.html?lid=32'),
(NULL, '长相厮守', 'img/index-product/ip33.jpg', 699, 'product_details.html?lid=33'),
(NULL, '柔情蜜意', 'img/index-product/ip34.jpg', 699, 'product_details.html?lid=34'),
(NULL, '万事如意-网红气球开业花篮', 'img/index-product/ip35.jpg', 299, 'product_details.html?lid=35'),
(NULL, '繁华兴旺-玫瑰+百合开业花篮', 'img/index-product/ip36.jpg', 299, 'product_details.html?lid=36'),
(NULL, '兴旺发达-网红气球开业花篮', 'img/index-product/ip37.jpg', 399, 'product_details.html?lid=37'),
(NULL, '开业志禧-高端罗马柱开业花篮', 'img/index-product/ip38.jpg', 688, 'product_details.html?lid=38'),
(NULL, '红红火火-红玫瑰开业花篮', 'img/index-product/ip39.jpg', 888, 'product_details.html?lid=39'),
(NULL, '开张大吉-高端艺术开业花篮', 'img/index-product/ip40.jpg', 1299, 'product_details.html?lid=40'),
(NULL, '敬贺开张-红玫瑰+绣球款开业花篮', 'img/index-product/ip41.jpg', 999, 'product_details.html?lid=41'),
(NULL, '客似云来-网红气球开业花篮', 'img/index-product/ip42.jpg', 399, 'product_details.html?lid=42'),
(NULL, null, 'img/index-product/ip43.jpg', null, 'product_details.html?lid=43'),
(NULL, null, 'img/index-product/ip44.jpg', null, 'product_details.html?lid=44'),
(NULL, '你的眼神-9朵香槟玫瑰+5支白色洋桔梗混搭', 'img/index-product/ip45.jpg', null, 'product_details.html?lid=45'),
(NULL, '宝贝对不起-39朵白玫瑰', 'img/index-product/ip46.jpg', null, 'product_details.html?lid=46'),
(NULL, '心上人-13朵混色玫瑰韩式混搭', 'img/index-product/ip47.jpg', null, 'product_details.html?lid=47'),
(NULL, '倩影翩翩-12朵甜心玫瑰', 'img/index-product/ip48.jpg', null, 'product_details.html?lid=48'),
(NULL, '红豆相思-99朵红玫瑰', 'img/index-product/ip47.jpg', null, 'product_details.html?lid=49');


/****进口鲜花商品****/
INSERT INTO flower_import_product VALUES
(NULL, '爱在巴黎-19朵甜心玫瑰', 'img/jinkou-product/jk1.jpg', 1499, 'product_details.html?lid=50'),
(NULL, '青春之歌-11朵甜心玫瑰', 'img/jinkou-product/jk2.jpg', 1499, 'product_details.html?lid=51'),
(NULL, '悦动你心-19朵厄瓜多尔甜心玫瑰', 'img/jinkou-product/jk3.jpg', 1799, 'product_details.html?lid=52'),
(NULL, '生命的主角-天空玫瑰韩式混搭', 'img/jinkou-product/jk4.jpg', 1999, 'product_details.html?lid=53'),
(NULL, '天使的心跳-9朵澳洲玫瑰', 'img/jinkou-product/jk5.jpg', 899, 'product_details.html?lid=54'),
(NULL, '清水美嘉-9朵肯尼亚进口玫瑰', 'img/jinkou-product/jk6.jpg', 1499, 'product_details.html?lid=55'),
(NULL, '倩影翩翩-12朵甜心玫瑰', 'img/jinkou-product/jk7.jpg', 1499, 'product_details.html?lid=56'),
(NULL, '花月佳期-12朵天空玫瑰', 'img/jinkou-product/jk8.jpg', 1799, 'product_details.html?lid=57'),
(NULL, '美好如初-进口绿玫瑰海芋韩式混搭', 'img/jinkou-product/jk9.jpg', 1599, 'product_details.html?lid=58'),
(NULL, '缘如花-9朵红玫瑰', 'img/jinkou-product/jk10.jpg', 1499, 'product_details.html?lid=59'),
(NULL, '叶上胭脂-19朵厄瓜多尔红玫瑰', 'img/jinkou-product/jk11.jpg', 1499, 'product_details.html?lid=60'),
(NULL, '爱情印记-14朵进口厄瓜多尔甜心玫瑰', 'img/jinkou-product/jk12.jpg', 1499, 'product_details.html?lid=61'),
(NULL, '时光舞步-10朵甜心玫瑰', 'img/jinkou-product/jk13.jpg', 1499, 'product_details.html?lid=62'),
(NULL, '梦幻星空-11朵七彩玫瑰', 'img/jinkou-product/jk14.jpg', 1299, 'product_details.html?lid=63'),
(NULL, '飞花似梦-19朵进口厄瓜多尔甜心玫瑰', 'img/jinkou-product/jk15.jpg', 1799, 'product_details.html?lid=64'),
(NULL, '爱的期许-11朵进口厄瓜多尔红玫瑰', 'img/jinkou-product/jk16.jpg', 999, 'product_details.html?lid=65'),
(NULL, '简爱-6朵厄瓜多尔粉白玫瑰', 'img/jinkou-product/jk17.jpg', 999, 'product_details.html?lid=66'),
(NULL, '无尽的爱-9朵肯尼亚卡布奇诺玫瑰', 'img/jinkou-product/jk18.jpg', 899, 'product_details.html?lid=67'),
(NULL, '纯美花开-11朵厄瓜多尔蓝色玫瑰', 'img/jinkou-product/jk19.jpg', 1999, 'product_details.html?lid=68'),
(NULL, '你是对的人-新娘手捧花', 'img/jinkou-product/jk20.jpg', 999, 'product_details.html?lid=69'),
(NULL, '布拉格之恋-9朵进口红玫瑰', 'img/jinkou-product/jk21.jpg', 999, 'product_details.html?lid=70'),
(NULL, '梦境丛林—森系高档礼盒装', 'img/jinkou-product/jk22.jpg', 1599, 'product_details.html?lid=71'),
(NULL, '倾情于你-9朵薄荷玫瑰', 'img/jinkou-product/jk23.jpg', 1799, 'product_details.html?lid=72'),
(NULL, '异域风情-进口花材混搭（送花瓶）', 'img/jinkou-product/jk24.jpg', 799, 'product_details.html?lid=73');