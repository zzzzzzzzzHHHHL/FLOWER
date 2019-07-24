<template>
    <div class="settlement"><!-- 购物车结算组件 -->
        <header00></header00>
        <navgitor></navgitor>
        <div class="fjx"></div>
        <!-- Nav -->
        <div class="topnav">
            <div></div>
        </div>
        <!-- 信息 -->
        <div class="information">
            <!-- 收货人信息 -->
            <div class="Consignee">
                <p>收货人信息</p>
                <div class="addressAll">
                    <!-- 已有收货地址 -->
                    <div class="address1">
                        <p class="text-truncate">收货人: <span>张三</span> </p>
                        <p class="text-truncate">收货人手机号: <span>18623222222</span> </p>
                        <p class="text-truncate">收货地址: <span>闪电发货时刻打开速度刷卡费多少公里数顺丰控股方大化工肯定是个符号是大法官狂欢节</span> </p>
                        <p class="text-truncate">订购人: <span>李四</span> </p>
                        <p class="text-truncate">订购人手机号: <span>18656566565</span> </p>
                        <a href="javacript:;">修改</a>
                        <a href="javacript:;">删除</a>
                        <span class="iconfont icon-xuanzhongkuang1"></span>
                    </div>
                    <!-- 添加新地址 -->
                    <div class="address">
                        <img src="../../assets/Mig/location.png" alt="">
                        <p @click="insertaddress">添加新地址</p>
                    </div>
                </div>
                
                
            </div>
            <!-- 配送费用 -->
            <div class="cost">
                <p>配送费用</p>
                <p>
                    <span @click="feiyong" data-num="s1">市区(免费)</span>
                    <span @click="feiyong" data-num="s2">郊区(+30元)</span>
                    <span @click="feiyong" data-num="s3">元郊(+50元)</span>    
                </p>
                <p>
                    <span class="iconfont icon-xuanzhongkuang" :style="s1"></span>
                    <span class="iconfont icon-xuanzhongkuang" :style="s2"></span>
                    <span class="iconfont icon-xuanzhongkuang" :style="s3"></span>
                </p>
            </div>
            <!-- 配送时间 -->
            <div class="delivery_time">
                <p>配送时间</p>
                <div>
                    <input type="date">
                    <span>时段</span>
                    <span class="iconfont icon-xuanzhongkuang"></span>
                    <select name="" id="">
                        <option value="">请选择</option>
                        <option value="">08-10点</option>
                        <option value="">10-12点</option>
                        <option value="">12-14点</option>
                        <option value="">14-16点</option>
                        <option value="">16-18点</option>
                        <option value="">18-20点</option>
                        <option value="">20-22点</option>
                        <option value="">上午</option>
                        <option value="">下午</option>
                        <option value="">晚上</option>
                        <option value="">全天配送</option>
                    </select>
                </div>
                <span>注意：您订购的商品中包含有预定商品。至少需提前1天预定！</span>
            </div>
            <!-- 贺卡留言 -->
            <div class="message">
                <p>贺卡留言+署名</p>
                <div>
                    <textarea name="" id="" cols="30" rows="10" placeholder="贺卡留言+署名" v-model="by"></textarea>
                    <div>
                        <ul>
                            <li @click="who" :class="give1" data-who="w1">送恋人</li>
                            <li @click="who" :class="give2" data-who="w2">送朋友</li>
                            <li @click="who" :class="give3" data-who="w3">送长辈</li>
                            <li @click="who" :class="give4" data-who="w4">送花篮</li>
                        </ul>
                        <div class="biaoyu" @click="selectby">
                            <!--送恋人-->
                            <ul :style="biaoyu1">
                                <li data-content="我多么希望，有一个门口，早晨，阳光照在草上，我们站着，扶着自己的门扇，门很低，但太阳是明亮的。草在结它的种子，风在摇它的叶子，我们站着，不说话，就十分美好。">
                                    1.我多么希望，有一个门口，早晨，阳光照在草上，我们站着，扶着自己的门扇，门很低，但太阳是明亮的。草在结它的种子，风在摇它的叶子，我们站着，不说话，就十分美好。
                                </li>
                                <li data-content="女王大人！原谅我吧！我知道我错了，你若不能原谅我的话，那就不断的打电话骂我吧！我愿意被你骂到老！">
                                    2.女王大人！原谅我吧！我知道我错了，你若不能原谅我的话，那就不断的打电话骂我吧！我愿意被你骂到老！
                                </li>
                                <li data-content="即使我五音不全，可还是想为你唱一万首情歌……">
                                    3.即使我五音不全，可还是想为你唱一万首情歌……
                                </li>
                                <li data-content="爱你是我一生无悔的决定，漫天星星都是我注视你的眼睛。无论结局如何，我都知道：此生最爱是你！">
                                    4.爱你是我一生无悔的决定，漫天星星都是我注视你的眼睛。无论结局如何，我都知道：此生最爱是你！
                                </li>
                                <li data-content="时间会慢慢地让你了解，一个外表很冷漠又很怕羞的人，他的心却充满了对你的爱。">
                                    5.时间会慢慢地让你了解，一个外表很冷漠又很怕羞的人，他的心却充满了对你的爱。
                                </li>
                                <li data-content="遇到你我感到很幸福，但是我不能成为世界上最幸福的人，因为我们在一起，我要让你成为世界上最幸福的人。">
                                    6.遇到你我感到很幸福，但是我不能成为世界上最幸福的人，因为我们在一起，我要让你成为世界上最幸福的人。
                                </li>
                                <li data-content="有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！">
                                    7.有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！
                                </li>
                                <li data-content="我想和你虚度时光，比如低头看鱼，比如把茶杯留在桌子上离开，浪费它们好看的阴影，我还想连落日一起浪费，比如散步，一直消磨到星光满天……">
                                    8.我想和你虚度时光，比如低头看鱼，比如把茶杯留在桌子上离开，浪费它们好看的阴影，我还想连落日一起浪费，比如散步，一直消磨到星光满天……
                                </li>
                                <li data-content="不要因为也许会改变，就不肯说那句美丽的誓言；不要因为也许会分离，就不敢求一次倾心的相遇。">
                                    9.不要因为也许会改变，就不肯说那句美丽的誓言；不要因为也许会分离，就不敢求一次倾心的相遇。
                                </li>
                                <li data-content="我从灵魂深处爱你，我愿把生命交给你，由你接受多少就多少，现在是这样，以后也决不变更！">
                                    10.我从灵魂深处爱你，我愿把生命交给你，由你接受多少就多少，现在是这样，以后也决不变更！
                                </li>
                            </ul>
                            <!-- 送朋友 -->
                            <ul :style="biaoyu2">
                                <li data-content="生日快乐么么哒，恭祝兄弟仙福永享寿与天齐。">
                                    1.生日快乐么么哒，恭祝兄弟仙福永享寿与天齐。
                                </li>
                                <li data-content="用友谊，为你披一件健康的衣裳防寒；用真诚，为你送一份吉祥的关怀送暖；用提醒，为你定一条如意的短信保安。朋友祝你健康缠绵，顺利无边，吉祥常伴！">
                                    2.用友谊，为你披一件健康的衣裳防寒；用真诚，为你送一份吉祥的关怀送暖；用提醒，为你定一条如意的短信保安。朋友祝你健康缠绵，顺利无边，吉祥常伴！
                                </li>
                                <li data-content="朋友是一颗心住在两个人的心房里">
                                    3.朋友是一颗心住在两个人的心房里
                                </li>
                                <li data-content="不管世界尽头多寂寞，你的身边一定有我">
                                    4.不管世界尽头多寂寞，你的身边一定有我
                                </li>
                                <li data-content="无私无邪无猜无疑的友情无价，你是我买不到的奢华">
                                    5.无私无邪无猜无疑的友情无价，你是我买不到的奢华
                                </li>
                                <li data-content="所有人都说我很坚强，只有你劝我别逞强">
                                    6.所有人都说我很坚强，只有你劝我别逞强
                                </li>
                                <li data-content="不求同年同月同日生，但求同年同月同日疯">
                                    7.不求同年同月同日生，但求同年同月同日疯
                                </li>
                                <li data-content="有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！">
                                    8.有些情感，无需多么华美，只是简单的遇见，简单的想念，哪怕它只是简单到：拉着你的手，迎着风走！
                                </li>
                                <li data-content="这些日子你过得还好吗？也许忙碌改变了我们的生活，但我永远珍惜我们的情谊。">
                                    9.这些日子你过得还好吗？也许忙碌改变了我们的生活，但我永远珍惜我们的情谊。
                                </li>
                                <li data-content="一切的不顺心都是纸老虎！希望你开心！">
                                    10.一切的不顺心都是纸老虎！希望你开心！
                                </li>
                            </ul>
                            <!-- 送长辈 -->
                            <ul :style="biaoyu3">
                                <li data-content="您是经霜的枫树老更红历尽悲欢，愈显得襟怀坦荡。衷心祝愿您生命之树常青！">
                                    1.您是经霜的枫树老更红历尽悲欢，愈显得襟怀坦荡。衷心祝愿您生命之树常青！
                                </li>
                                <li data-content="寿比南山不老松，松古长春朝朝永生。祝您生辰快乐！健康幸福！">
                                    2.寿比南山不老松，松古长春朝朝永生。祝您生辰快乐！健康幸福！
                                </li>
                                <li data-content="一斤花生二斤枣，好运经常跟您跑；三斤苹果四斤梨，吉祥和您不分离；五斤桔子六斤蕉，财源滚进您腰包；七斤葡萄八斤橙，愿您心想事就成；九斤芒果十斤瓜，愿您天天乐开花。">
                                    3.一斤花生二斤枣，好运经常跟您跑；三斤苹果四斤梨，吉祥和您不分离；五斤桔子六斤蕉，财源滚进您腰包；七斤葡萄八斤橙，愿您心想事就成；九斤芒果十斤瓜，愿您天天乐开花。
                                </li>
                                <li data-content="这一季有我最深的思念就让花儿捎去满心的祝福，缀满您甜蜜的梦境，祝您健康快乐！">
                                    4.这一季有我最深的思念就让花儿捎去满心的祝福，缀满您甜蜜的梦境，祝您健康快乐！
                                </li>
                                <li data-content="祝愿您长寿健康。这一季的花开得格外娇艳，您可知，那是因为我用情感在浇灌只等您的生日赠与您，愿您喜欢。">
                                    5.祝愿您长寿健康。这一季的花开得格外娇艳，您可知，那是因为我用情感在浇灌只等您的生日赠与您，愿您喜欢。
                                </li>
                                <li data-content="这一刻有我最深的思念。让云捎去满心的祝福，点缀您甜蜜的梦。愿您拥有一个幸福快乐的新年！">
                                    6.这一刻有我最深的思念。让云捎去满心的祝福，点缀您甜蜜的梦。愿您拥有一个幸福快乐的新年！
                                </li>
                                <li data-content="天给您温暖，地给您温馨，我给您祝福。祝您运气像雨点一样密集！烦恼像流云一样飞去，忧愁像恐龙一样灭绝，幸福像蜂蜜一样甜美。">
                                    7.天给您温暖，地给您温馨，我给您祝福。祝您运气像雨点一样密集！烦恼像流云一样飞去，忧愁像恐龙一样灭绝，幸福像蜂蜜一样甜美。
                                </li>
                                <li data-content="如果我有一棵快乐草，我想将它给您，我希望您快乐；如果我有两棵，我会给您一棵我一棵，希望我们都快乐；如果有三棵，我会给您两棵，希望您比我快乐！">
                                    8.如果我有一棵快乐草，我想将它给您，我希望您快乐；如果我有两棵，我会给您一棵我一棵，希望我们都快乐；如果有三棵，我会给您两棵，希望您比我快乐！
                                </li>
                                <li data-content="吉祥如意、富贵安康；让美丽的朝霞、彩霞、晚霞一起飞进您的生活，这就是我的祈愿！">
                                    9.吉祥如意、富贵安康；让美丽的朝霞、彩霞、晚霞一起飞进您的生活，这就是我的祈愿！
                                </li>
                                <li data-content="亲爱的妈妈，我也想嫁出去，只是没遇到对的人。但我保证会过得很好，你别担心。你和爸爸身体健康才是我最幸福的事情。多出去走走，看看这个世界。">
                                    10.亲爱的妈妈，我也想嫁出去，只是没遇到对的人。但我保证会过得很好，你别担心。你和爸爸身体健康才是我最幸福的事情。多出去走走，看看这个世界。
                                </li>
                            </ul>
                            <!-- 送花篮 -->
                            <ul :style="biaoyu4">
                                <li data-content="恒心有恒业，隆德享隆名。">
                                    1.恒心有恒业，隆德享隆名。
                                </li>
                                <li data-content="财源通四海，生意畅三春。">
                                    2.财源通四海，生意畅三春。
                                </li>
                                <li data-content="生意似春笋，财源如春潮。">
                                    3.生意似春笋，财源如春潮。
                                </li>
                                <li data-content="大展宏图，开业大吉。">
                                    4.大展宏图，开业大吉。
                                </li>
                                <li data-content="敬贺开张，并祝吉祥。">
                                    5.敬贺开张，并祝吉祥。
                                </li>
                                <li data-content="吉祥开业，大富启源。">
                                    6.吉祥开业，大富启源。
                                </li>
                                <li data-content="一门瑞气，万里和风。">
                                    7.一门瑞气，万里和风。
                                </li>
                                <li data-content="鸿基始创，骏业日新。">
                                    8.鸿基始创，骏业日新。
                                </li>
                                <li data-content="宏图大展，裕业有孚。">
                                    9.宏图大展，裕业有孚。
                                </li>
                                <li data-content="生意兴隆，恭喜发财。">
                                    10.生意兴隆，恭喜发财。
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 支付方式 -->
            <div class="payway">
                <p>支付方式</p>
                <div>
                    <p>
                        <span  @click="zf">
                            <img src="../../assets/Mig/zfb.png" alt="" data-zf="zfb">
                        </span>
                        <span @click="zf">
                            <img src="../../assets/Mig/wx.png" alt="" data-zf="wx">
                        </span>
                    </p>
                    <p>
                        <span class="iconfont icon-xuanzhongkuang" :style="zf1"></span>
                        <span class="iconfont icon-xuanzhongkuang" :style="zf2"></span>
                    </p>
                </div>
            </div>
            <!-- 商品信息 -->
            <div class="spxx">
                <p>商品信息 <span @click="fhgwc">返回购物车</span></p>
                <div>
                    <!-- 单件商品 -->
                    <div>
                        <!-- 左边 -->
                        <div>
                            <a href="#">
                                <img src="../../assets/Mig/15.jpg" alt="">
                            </a>
                            <span><a href="#">爱之物语-14朵红玫瑰</a></span>
                            
                        </div>
                        <!-- 右边 -->
                        <div>
                            <span>￥499.00</span>
                            <span>x1</span>
                            <span>有货</span>
                            <span>￥499.00</span>
                        </div>
                    </div>
                    <div>
                        <!-- 左边 -->
                        <div>
                            <a href="#">
                                <img src="../../assets/Mig/15.jpg" alt="">
                            </a>
                            <span><a href="#">爱之物语-14朵红玫瑰</a></span>
                            
                        </div>
                        <!-- 右边 -->
                        <div>
                            <span>￥499.00</span>
                            <span>x1</span>
                            <span>有货</span>
                            <span>￥499.00</span>
                        </div>
                    </div>
                    <div>
                        <!-- 左边 -->
                        <div>
                            <a href="#">
                                <img src="../../assets/Mig/15.jpg" alt="">
                            </a>
                            <span><a href="#">爱之物语-14朵红玫瑰</a></span>
                            
                        </div>
                        <!-- 右边 -->
                        <div>
                            <span>￥499.00</span>
                            <span>x1</span>
                            <span>有货</span>
                            <span>￥499.00</span>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- 订单备注 -->
            <div class="ddbz">
                <input type="text" placeholder="订单备注 限60个字">
                <span>提示：请勿填写有关支付、收货等信息</span>
            </div>
            <!-- 订单提交 -->
            <div class="ddtj">
                <p>商品总价：<span>￥898.00</span> </p>
                <p>应付款金额：<span>￥898.00</span> </p>
                <button>提交订单</button>
            </div>
            <!-- 新增收货人地址 -->
            <!-- 遮罩 -->
            <div class="inputaddress" :style="addressmask">
                <!-- 表单框 -->
                <div class="input1 animated zoomIn">
                    <!-- 新增收货人地址标题 -->
                    <div>
                        <span>新增收货人地址</span>
                        <span class="iconfont icon-tishikuangguanbi" @click="closemask"></span>
                    </div>
                    <!-- 表单 -->
                    <div>
                        <p> 
                            <span><span>*</span> 收货人姓名</span>
                            <input type="text" name="" id="" v-model="shname" onkeyup="this.value=this.value.replace(/\s+/g,'')">
                            <span class="Tips animated" :class="{fadeIn:isfadeIn1,fadeOut:isfadeOut1}" v-text="name1" :style="name1style" id="Tips1"></span>
                            <!-- infinite -->
                        </p>
                        <p>
                            <span><span>*</span> 收货人手机号</span>
                            <input type="text" name="" id="" v-model="shphone" onkeyup="this.value=this.value.replace(/\s+/g,'')">
                            <span class="Tips" v-text="phone1"></span>
                        </p>
                        <p>
                            <span><span>*</span> 所在地区</span>
                            <v-distpicker :placeholders="placeholders" class="disrpicker" @selected="selectdress"></v-distpicker>
                            <span class="Tips tipsderss" v-text="adress1"></span>
                        </p>
                        <p>
                            <span> <span>*</span> 详细街道地址 </span>
                            <input type="text" v-model="adressdetail" onkeyup="this.value=this.value.replace(/\s+/g,'')">
                            <span class="Tips" v-text="adress2"></span>
                        </p>
                        <p>
                            <span> <span>*</span> 订购人姓名 </span>
                            <input type="text" name="" id="" v-model="dgname" onkeyup="this.value=this.value.replace(/\s+/g,'')">
                            <span class="Tips" v-text="name2"></span>
                        </p>
                        <p>
                            <span> <span>*</span> 订购人手机号 </span>
                            <input type="text" v-model="dgphone" onkeyup="this.value=this.value.replace(/\s+/g,'')">
                            <span class="Tips" v-text="phone2">asdfafds</span>
                        </p>
                    </div>
                    <div>
                        <button @click="save">保存</button>
                        <button @click="closemask">取消</button>
                    </div>
                </div>
            </div>
        </div>
        <footer00 class="footer"></footer00>
    </div>
</template>

<script>
import Header from "../index/header/header0.vue"
import Footer from "../index/footer/footer0.vue"
import VDistpicker from 'v-distpicker'
import Nav from "./Nav.vue"
import { clearTimeout, setTimeout } from 'timers';
export default {
    components:{
      "header00":Header,
      "navgitor":Nav,
      "footer00":Footer,
      VDistpicker
     },
    data(){
        return{
            s:"",
            s1:{visibility:"visible"},
            s2:{visibility:"hidden"},
            s3:{visibility:"hidden"},
            give1:{givewho:true},
            give2:{givewho:false},
            give3:{givewho:false},
            give4:{givewho:false},
            biaoyu1:{display:"block"},
            biaoyu2:{display:"none"},
            biaoyu3:{display:"none"},
            biaoyu4:{display:"none"},
            by:"",
            zf1:{display:"block"},
            zf2:{display:"none"},
            placeholders: {
              province: '请选择省',
              city: '请选择市',
              area: '请选择区',
            },
            addressmask:{display:"none"},
            name1:"",
            name2:"订购人姓名不能为空",
            phone1:"手机号码格式不正确",
            phone2:"手机号码格式不正确",
            adress1:"请输入完整地区",
            adress2:"详细地址不能为空",
            shname:"",
            shphone:"",
            adress:{},
            adressdetail:"",
            dgname:"",
            dgphone:"",
            name1style:{display:"none"},
            isfadeIn1:false,
            isfadeOut1:false,
        }
    },
    methods:{
        feiyong(e){
            // console.log(e.currentTarget.dataset.num);
            this.s=e.currentTarget.dataset.num;
            // console.log(this.s);
            if(this.s=="s1"){
                this.s1.visibility="visible";
                this.s2.visibility="hidden";
                this.s3.visibility="hidden";
            }else if(this.s=="s2"){
                this.s1.visibility="hidden";
                this.s2.visibility="visible";
                this.s3.visibility="hidden";
            }else{
                this.s1.visibility="hidden";
                this.s2.visibility="hidden";
                this.s3.visibility="visible";
            }
        },
        who(e){
            // console.log(e.currentTarget);
            var w=e.currentTarget.dataset.who;
            // console.log(w);
            if(w=="w1"){
                this.give1.givewho=true;
                this.give2.givewho=false;
                this.give3.givewho=false;
                this.give4.givewho=false;
                this.biaoyu1.display="block";
                this.biaoyu2.display="none";
                this.biaoyu3.display="none";
                this.biaoyu4.display="none";
            }else if(w=="w2"){
                this.give1.givewho=false;
                this.give2.givewho=true;
                this.give3.givewho=false;
                this.give4.givewho=false;
                this.biaoyu1.display="none";
                this.biaoyu2.display="block";
                this.biaoyu3.display="none";
                this.biaoyu4.display="none";
            }else if(w=="w3"){
                this.give1.givewho=false;
                this.give2.givewho=false;
                this.give3.givewho=true;
                this.give4.givewho=false;
                this.biaoyu1.display="none";
                this.biaoyu2.display="none";
                this.biaoyu3.display="block";
                this.biaoyu4.display="none";
            }else if(w=="w4"){
                this.give1.givewho=false;
                this.give2.givewho=false;
                this.give3.givewho=false;
                this.give4.givewho=true;
                this.biaoyu1.display="none";
                this.biaoyu2.display="none";
                this.biaoyu3.display="none";
                this.biaoyu4.display="block";
            }
        },
        selectby(e){
            // console.log(e.target.attributes[1].value);
            this.by=e.target.attributes[1].value;
        },
        zf(e){
            // console.log(e.target.dataset.zf);
            if(e.target.dataset.zf=="zfb"){
                this.zf1.display="block";
                this.zf2.display="none";
            }else{
                this.zf1.display="none";
                this.zf2.display="block";
            }

        },
        fhgwc(){this.$router.push("/Gocart");},
        selectdress(a){
            // console.log(a);
            this.adress=a;
            console.log(this.adress);
        },
        insertaddress(){
            this.addressmask.display="flex";
        },
        closemask(){
            this.addressmask.display="none";
        },
        save(){
            console.log(this.shname);
            if(this.shname==""||this.shname==" "){
                this.name1="收货人姓名不能为空";
                this.name1style.display="inline-block";
                this.isfadeOut1=false;
                this.isfadeIn1=true;
                var timer=setTimeout(()=>{
                    this.isfadeOut1=true;
                    this.isfadeIn1=false;
                    var timer2=setTimeout(()=>{
                        this.name1style.display="none";
                    },1000)
                },3000)
               
            }
            
        },
    },

}
</script>

<style scoped>
.settlement .fjx{
    width: 100%;
    border-top: 1px solid #d2d2d2;
    position: relative;
    margin-bottom: 10px;
    top: -20px;
}
.settlement{
    background-color: #fff !important;
}
.givewho{
    background: #333 !important;
    color: #fff !important;
}
/* 顶部Nav */
.settlement .topnav{
    width: 100%;
    height:59px;
    background: #f4f4f4;
    border-top: 1px solid #d2d2d2;
    border-bottom: 1px solid #d2d2d2;
}
.settlement .topnav>div{
    width: 1200px;
    height: 57px;
    margin: 0 auto;
    background: url("../../assets/Mig/nav.png") no-repeat;
    background-position:center center;
    border-left: 1px solid #d2d2d2;
}
/* 信息 */
.settlement .information{
    width: 1200px;
    margin: 0 auto;
    border: 1px solid #d2d2d2;
    margin-top:30px;
    padding: 0 30px;
}
.settlement .information .Consignee>p{
    font-size: 18px;
    color: #555555;
    width: 1140px;
    height: 51px;
    padding: 20px 0px 10px;
    margin: 0;
    margin-top: 15px;
    border-bottom: 1px solid #d2d2d2;
    line-height: 20px;
}
.settlement .information .Consignee .addressAll{
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-wrap: wrap;
}
.settlement .information .Consignee .addressAll .address1 p{
    font-size: 14px;
    color: #8c8c8c;
    margin: 0;
    width: 288px;
    height: 23px;
    line-height: 23px;
    /* overflow: hidden; */
    
}
.settlement .information .Consignee .addressAll p:first-child{
    font-size: 18px;
    color: #555555;
}
.settlement .information .Consignee .addressAll .address1{
    width: 330px;
    height: 146px;
    margin-top: 30px;
    /* background-color: #ccc; */
    margin-right: 20px;
    padding: 8px 18px 18px 22px;
    position: relative;
    border: 1px dashed #333;
    /* border-color: #d2d2d2; */
}
.settlement .information .Consignee .addressAll .address1 a{
    position: absolute;
    font-size: 14px;
    color: #333 !important;
    top: 10px;
    left: 240px;
}
.settlement .information .Consignee .addressAll .address1>span{
    float: right;
    font-size: 22px;
    margin-top: -5px;
    margin-right: -19px;
}
.settlement .information .Consignee .addressAll .address1 a:nth-child(7){
    left: 280px;
}
.settlement .information .Consignee .address{
    width: 330px;
    height: 146px;
    margin-top: 30px;
    border: 1px dashed #d2d2d2;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.settlement .information .Consignee .address p{
    margin-top: 5px;
   font-size: 14px;
   color: #8c8c8c;
}
.settlement .information .Consignee .address p:hover{
    color: #333;
    cursor: pointer;
}
.settlement .information .cost{
    margin-top: 30px;
    position: relative;
}
.settlement .information .cost p:first-child{
    height: 66px;
    padding: 35px 0px 10px;
    font-size: 18px;
    color: #555555;
    margin-top: 15px;
    border-bottom: 1px solid #d2d2d2;
    border-top: 1px solid #d2d2d2;
    line-height: 20px;
}
.settlement .information .cost p:nth-child(2){
    position: relative;
}
.settlement .information .cost p:nth-child(2) span{
    display: inline-block;
    width: 100.16px;
    height: 30px;
    padding: 0 10px;
    font-size: 14px;
    color: #555555;
    text-align: center;
    line-height: 30px;
    margin-right: 20px;
    position: relative;
    z-index: 5;
}
.settlement .information .cost p:nth-child(2) span:hover{
    cursor: default;
}
.settlement .information .cost p:nth-child(3) span{
    display: inline-block;
    position: absolute;
    width: 100.16px;
    height: 30px;
    font-size: 38px !important;
    background: transparent;
    top: 69px;
}
.settlement .information .cost p:nth-child(3) span:nth-child(2){
    left: 120px;
}
.settlement .information .cost p:nth-child(3) span:nth-child(3){
    left: 240px;
}
.settlement .delivery_time{
    margin-top: 15px;
}
.settlement .delivery_time>p,.settlement .message>p{
    height: 51px;
    padding: 20px 0px 10px;
    font-size: 18px;
    color: #555555;
    line-height:20px;
    border-bottom: 1px solid #d2d2d2;
}
.settlement .delivery_time>div{
    margin-top: 20px;
    height: 31px;
    /* background-color: #8c8c8c; */
    position: relative;
    display: flex;
    justify-content:flex-start;
    align-items: center;
}
/* 日期选择器样式修改 */

/* 用来移除向下箭头 */
input[type="date"]{
    border: 1px solid #d2d2d2;
    font-size: 14px;
    padding:3px 0px 3px 10px;
    color: #555555;
}
input[type="date"]:focus{
    outline: none;
}
input[type="date"]::-webkit-calendar-picker-indicator {
   color: #d2d2d2;
   background: transparent;
}
input[type="date"]::-webkit-calendar-picker-indicator:hover{
    background:transparent;
}
/*用来移除上下箭头*/
input[type="date"]::-webkit-inner-spin-button {
	display: none;
}
/*用来移除叉叉按钮*/
input[type="date"]::-webkit-clear-button{
   display:none;
}

.settlement .delivery_time>div span:nth-child(2){
    display: inline-block;
    width: 50px;
    height: 30px;
    padding: 0 10px;
    margin: 0px 30px;
    font-size: 14px;
    color: #555555;
    line-height: 30px;
}
.settlement .delivery_time>div span:nth-child(3){
    font-size: 25px !important;
    background: transparent;
    position: absolute;
    left: 145px;
}
.settlement .delivery_time>div select{
    border: 1px solid #d2d2d2;
    font-size: 14px;
    padding:3px 0px 3px 10px;
    color: #555555;
}
.settlement .delivery_time>span{
    display: inline-block;
    width: 353.05px;
    height: 24px;
    margin: 12px 0 0;
    padding: 2px 10px;
    background: #f6f6f4;
    font-size: 12px;
    color: red;
    line-height: 17px;
    border: 1px solid #ccc;
    border-radius: 2px;
    margin-bottom: 15px;
}
.settlement .message>div{
    margin-top: 20px;
    width: 100%;
    margin: 0 auto;
    display: flex;
    justify-content: flex-start;
    align-items: center;
}
.settlement .message>div textarea{
    resize: none;
    width: 620px;
    height: 126px;
    padding: 4px 0 0 6px;
    font-size: 13px;
    color: #555555;
    border: 1px solid #ccc;
}
.settlement .message>div>div{
    width: 490px;
    height: 126px;
    margin-left: 30px;
    border: 1px solid #ccc;
    position: relative;
    padding: 6px;
}
.settlement .message>div>div>ul{
    list-style: none;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    margin: 0;
}
.settlement .message>div>div>ul li{
    width: 60px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    margin:0 8px 0 0;
    background-color: #eeeeee;
    color: #737373;
    font-size: 13px;
}
.settlement .message>div>div>ul li:hover{
    cursor: default;
}

.settlement .message>div>div>div{
    width: 482px;
    height: 86px;
    overflow-y: scroll;
    overflow-x: hidden;
    position: relative;
}
.settlement .message>div>div .biaoyu>ul{
    list-style: none;
    margin: 0;
}
.settlement .message>div>div .biaoyu>ul>li{
    width: 464px;
    height: 25px;
    overflow: hidden;
    font-size: 13px;
    color: #888888;
    padding: 6px 0;
    line-height: 25px;
}
.settlement .message>div>div .biaoyu>ul>li:hover{
    cursor: default;
}
.settlement .payway>p{
    height: 51px;
    padding: 20px 0 10px;
    font-size: 18px;
    color: #555555;
    border-bottom: 1px solid #d2d2d2;
    margin-top: 20px;
    line-height: 20px;
}
.settlement .payway>div{
    margin-top: 25px !important;
}
.settlement .payway>div img{
    height: 34px;
    position: relative;
    z-index: 5;
}
.settlement .payway>div p:nth-child(1) span{
    width: 160.18px;
    height: 40px;
    padding: 0 25px;
    margin-right: 20px;
}
.settlement .payway>div p:nth-child(2){
    position: relative;
}
.settlement .payway>div p:nth-child(2) span{
    font-size: 45px;
    position: absolute;
    top: -67px;
    left: 10px;
    background: transparent;
}
.settlement .payway>div p:nth-child(2) span:nth-child(2){
    left: 170px;
    /* display: none; */
}
.settlement .spxx>p{
    height: 51px;
    padding: 20px 0 10px;
    font-size: 18px;
    color: #555555;
    border-bottom: 1px solid #d2d2d2;
    margin-top: 30px;
    line-height: 20px;
    position: relative;
}
.settlement .spxx>p span{
    float: right;
    color: #438cde;
    font-size: 12px;
}
.settlement .spxx>p span:hover{
    cursor: pointer;
    color: #f42424;
}
.settlement .spxx>div{
    margin-top: 20px;
    background-color: #f8f8f8;
    padding: 10px 0;
}
.settlement .spxx>div>div{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 0 30px;
    padding: 20px 0;
}
.settlement .spxx>div>div:not(:last-child){
    border-bottom: 1px dashed #d2d2d2;
}
.settlement .spxx>div div img{
    width: 48px;
}
.settlement .spxx>div>div>div:nth-child(1) span{
    font-size: 13px;
    color: #333;
    display: inline-block;
    margin-left: 20px;
}
.settlement .spxx>div>div>div:nth-child(1) span a{
    color: #333 !important;
}
.settlement .spxx>div>div>div:nth-child(1) span a:hover{
    text-decoration: none;
    color: #f42424!important;
}
.settlement .spxx>div>div>div:nth-child(2) span{
    display: inline-block;
}
.settlement .spxx>div>div>div:nth-child(2) span:nth-child(1){
    color: #f42424;
    font-size: 16px;
    margin-right: 30px;
}
.settlement .spxx>div>div>div:nth-child(2) span:nth-child(2){
    font-size: 16px;
    color: #666666;
    margin-right: 50px;
}
.settlement .spxx>div>div>div:nth-child(2) span:nth-child(3){
    font-size: 14px;
    color: #666666;
    margin-right: 50px;
}
.settlement .spxx>div>div>div:nth-child(2) span:nth-child(4){
    font-size: 16px;
    color: #f42424;
    font-weight: bold;
}
.settlement .ddbz{
    margin-top: 40px;
}
.settlement .ddbz input{
    width: 856px;
    height: 40px;
    padding: 0 12px;
    background-color: #fff;
    border: 1px solid #d2d2d2;
    font-size: 14px;
    color:  #d2d2d2;
}
.settlement .ddbz input:focus{
    outline: none;
}
.settlement .ddbz span{
    display: inline-block;
    font-size: 12px;
    color: #8c8c8c;
    margin-left: 18px;
}
.settlement .ddtj{
    margin-top: 50px;
    text-align: right;
}
.settlement .ddtj p{
    text-align: right;
    font-size: 14px;
    color: #8c8c8c;
    margin: 10px 20px;
    margin-right: 10px;
}
.settlement .ddtj p:nth-child(1) span{
    display: inline-block;
    margin-left: 25px;
    font-size: 16px !important;
    color: #333;
    font-weight: 500;
}
.settlement .ddtj p:nth-child(2) span{
    display: inline-block;
    margin-left: 10px;
    font-size: 20px;
    font-weight: bold;
    color: #f42424;
}
.settlement .ddtj button{
    height: 50px;
    line-height: 50px;
    background-color: #c43f40;
    width: 160px;
    color: #fff;
    font-size: 24px;
    cursor: pointer;
    border: none;
    margin-top: 25px;
    margin-bottom: 40px;
}
.settlement input:focus{
    outline: none !important;
}
.settlement select:focus{
    outline: none;
}
.settlement button{
    outline: none;
}
.settlement .inputaddress{
    position: fixed;
    top: 0;
    left: 0;
    margin: 0;
    width: 100%;
    height: 100%;
    background-color: #33333375;
    z-index: 900;
    display: flex;
    justify-content: center;
    align-items: center;
    /* display: none; */
}
.settlement .inputaddress .input1{
    width: 986px;
    height: 397px;
    background-color: #fff;
    box-shadow: 0px 0px 0px 10px rgba(0, 0, 0, 0.144);
}
.settlement .inputaddress .input1>div:nth-child(1){
    height: 43px;
    padding: 0 20px 0 20px;
    color: #333;
    font-size: 14px;
    background-color: #f8f8f8;
    line-height: 43px;
}
.settlement .inputaddress .input1>div:nth-child(1) span:nth-child(2){
    float: right;
    font-size: 12px;
}
.settlement .inputaddress .input1>div:nth-child(1) span:nth-child(2):hover{
    cursor: pointer;
}
.settlement .inputaddress .input1>div:nth-child(2){
    height: 282px;
    color: #555555;
    font-size: 14px;
    padding: 1px 0;
}
.settlement .inputaddress .input1>div:nth-child(2) p{
    height: 34px;
    margin: 10px 0;
    font-size: 14px;
    color: #555555;
    line-height: 34px;
}
.settlement .inputaddress .input1>div:nth-child(2) p .Tips{
    display: inline-block;
    height: 32px;
    background: url("../../assets/Mig/tips.png") no-repeat;
    background-position: left center;
    background-size: cover;
    position: relative;
    padding: 0 20px 0 25px;
    line-height: 32px;
    text-align: center;
    color: #fff;
    font-size: 14px;
}
.settlement .inputaddress .input1>div:nth-child(2) p .tipsderss{
    margin-left: 10px;
}
.settlement .inputaddress .input1>div:nth-child(2) p>span:nth-child(1){
    display: inline-block;
    width: 138px;
    height: 30px;
    text-align: right;
    line-height: 30px;
    font-size: 14px;
    color: #555555;
    padding: 4px 9px;
}

.settlement .inputaddress .input1>div:nth-child(2) p>input{
    width: 200px;
    padding: 0 10px;
    margin: 0 10px 0 0;
    background-color: #fff;
    border: 1px solid #d2d2d2;
    height: 32px;
    line-height: 32px;
    font-size: 12px;
}
.settlement .inputaddress .input1>div:nth-child(2) p:nth-child(4)>input{
    width: 522px;
}
.settlement .inputaddress .input1>div:nth-child(2) p>span>span{
    color: #f42828;
}
.settlement .inputaddress .input1>div:nth-child(3){
    width: 100%;
    margin: 0 0 0 137px;
}
.settlement .inputaddress .input1>div:nth-child(3) button:first-child{
    background-color: #333;
    border-color: #333;
    height: 38px;
    line-height: 38px;
    font-size: 14px;
    color: #fff;
    width: 100px;
    margin-right: 10px;
    padding: 0 14px;
    cursor: pointer;
    border: 1px solid #ddd;
    font-weight: 400;
    border-radius: 3px;
}
.settlement .inputaddress .input1>div:nth-child(3) button:nth-child(2){
    height: 38px;
    line-height: 38px;
    font-size: 14px;
    width: 60px;
    text-align: center;
    margin-right: 10px;
    display: inline-block;
    padding: 0 14px;
    cursor: pointer;
    border: 1px solid #ddd;
    font-weight: 400;
    border-radius: 3px;
    background-color: #fff;
}
.settlement .inputaddress input:focus{
    outline: none;
}

/* 修改地址选择器样式 */
.distpicker-address-wrapper >>> select {
    padding: 0px 2px;
    width: 118px;
    border: 1px solid #ccc;
    height: 32px;
    font-size: 14px;
    color: #555555;
    border-radius: 0;
    overflow: hidden;
    display: inline-block;
    line-height: 32px;
}
.settlement .disrpicker{
    display: inline-block;
}
</style>
