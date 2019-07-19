<template>
    <div class="settlement"><!-- 购物车结算组件 -->
    <br><br><br>
        <!-- Nav -->
        <div class="topnav">
            <div></div>
        </div>
        <!-- 信息 -->
        <div class="information">
            <!-- 收货人信息 -->
            <div class="Consignee">
                <p>收货人信息</p>
                <!-- 添加新地址 -->
                <div class="address">
                    <img src="../../assets/Mig/location.png" alt="">
                    <p>添加新地址</p>
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
                    <textarea name="" id="" cols="30" rows="10" placeholder="贺卡留言+署名"></textarea>
                    <div>
                        <ul>
                            <li @click="who" :class="give1" data-num="1">送恋人</li>
                            <li @click="who" :class="give2">送朋友</li>
                            <li @click="who" :class="give3">送长辈</li>
                            <li @click="who" :class="give4">送花篮</li>
                        </ul>
                        <div class="biaoyu">
                            <!--送恋人-->
                            <ul>
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
                            <ul>
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
                            <ul>
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
                            <ul>
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
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            s:"",
            s1:{visibility:"visible"},
            s2:{visibility:"hidden"},
            s3:{visibility:"hidden"},
            give1:{givewho:true},
            give2:{},
            give3:{},
            give4:{},
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
            console.log(e.currentTarget);
        },
    },

}
</script>

<style scoped>
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
    height: 20px;
    overflow: hidden;
    font-size: 13px;
    color: #888888;
    margin: 6px 0;
}
</style>
