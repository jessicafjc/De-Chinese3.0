//
//  ChineseDeViewController.swift
//  De-Chinese01
//
//  Created by jessicafu on 2017/2/12.
//  Copyright © 2017年 jessicafu. All rights reserved.
//

import UIKit
class ChineseDeViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    var gifView = GIFView()
    var TapTarget = " "   //点击传值
    var ChineseDeTarget = " "
        override func viewDidLoad() {
        super.viewDidLoad()
        
            
        //页面背景颜色
        self.view.backgroundColor = UIColor(colorLiteralRed: 190/255, green: 169/255, blue: 131/255, alpha: 0.0)
            ChineseDeBgImgeView.image = UIImage(named: TapTarget+"_bgimg")
            self.view.addSubview(ChineseDeBgImgeView)

//            var navigationBar:UINavigationBar?
//            navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: deviceWidth, height: 88))
//            let NavBarBackgroundImg:UIImage = UIImage(named: "NavBarBgImg")!
//            //顶部导航栏拉伸填充-->防止重复填充
//            navigationBar?.setBackgroundImage(NavBarBackgroundImg.resizableImage(withCapInsets: UIEdgeInsets.init(top: 0, left: 100, bottom: 0, right: 100), resizingMode: UIImageResizingMode.stretch) , for: UIBarMetrics.default)
//            self.view.addSubview(navigationBar!)
            self.navigationController?.navigationBar.isHidden = true

                //拼音&英语
        pinyinLable.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.0)
        pinyinLable.layer.masksToBounds = true;
        //    label圆角半径
        pinyinLable.layer.cornerRadius = 10;
        //    label圆角边框颜色ChineseDeLable.layer.borderColor = UIColor.blueColor().CGColor;
        pinyinLable.layer.borderColor = UIColor.clear.cgColor
            //    label圆角边框宽度
        pinyinLable.layer.borderWidth = 1;
        
        englishLable.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.0)
        englishLable.layer.masksToBounds = true;
        //    label圆角半径
        englishLable.layer.cornerRadius = 10;
        //    label圆角边框颜色
        englishLable.layer.borderColor = UIColor.clear.cgColor
        //    label圆角边框宽度
        englishLable.layer.borderWidth = 1;
        //
        engParaphrasingLable.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.0)
        engParaphrasingLable.layer.masksToBounds = true;
            //    label圆角半径
        engParaphrasingLable.layer.cornerRadius = 10;
            //    label圆角边框颜色
        engParaphrasingLable.layer.borderColor = UIColor.clear.cgColor
            //    label圆角边框宽度
        engParaphrasingLable.layer.borderWidth = 1;
            
            var pyText = " "
            var engText = " "
            var engParaphrasingText = " "
            switch TapTarget {
            case "1":
                pyText = "[zhú]"
                engText = "bamboo"
                engParaphrasingText = "文言版《説文解字》：竹，冬生艸也。象形。下垂者，箁箬也。凡竹之屬皆从竹。  白话版《说文解字》：竹，冬季生长的植物。象形。下垂的，像箁箬。所有与竹相关的字，都采用“竹”作边旁。  【造字本义】：名词，温带或热带禾本科植物，空心，有结，长笋。"
            case "2":
                pyText = "[niǎo]"
                engText = "bird"
                engParaphrasingText = "文言版《説文解字》：鳥，長尾禽緫名也。象形。鳥之足似匕，从匕。凡鳥之屬皆从鳥。  白话版《说文解字》：鸟，长尾禽的总称。象形。鸟的足形似匕，所以字形采用“匕”作边旁。所有与鸟相关的字，都采用“鸟”作边旁。  【造字本义】：长尾飞禽。"
            case "3":
                pyText = "[chē]"
                engText = "car"
                engParaphrasingText = "车，是古代对舆、轮的总称，即对名词的“车箱”、动词的“转动”都叫“车”。据说车是夏后时代叫奚仲的人创造的。字形像车的形状。所有与车相关的字，都采用“车”作边旁。  【造字本义】：有轮子、靠牛马驱动的战斗工具。"
            case "4":
                pyText = "[yún]"
                engText = "cloud"
                engParaphrasingText = "文言版《説文解字》：云，古文省雨。  白话版《说文解字》：云，是“雲”的古文写法，省去了“雨”。  【造字本义】：气团在天空飘浮。"
            case "5":
                pyText = "[niú]"
                engText = "bovine"
                engParaphrasingText = "文言版《説文解字》：牛，大牲也。牛，件也；件，事理也。象角頭三、封尾之形。凡牛之屬皆从牛。  白话版《说文解字》：牛，大型牲口。牛，也有“件”的意思；件，表示事理分析。像角头三、封尾的形状。所有与牛相关的字，都采用“牛”作边旁。   【造字本义】：哺乳动物，体型粗壮，角中空，力大，能耕田、拉车。"
            case "6":
                pyText = "[quǎn]"
                engText = "dog"
                engParaphrasingText = "文言版《説文解字》：狗，孔子曰：“狗，叩也。叩气吠以守。”从犬，句聲。  白话版《説文解字》：狗，孔子说：“狗，叩叫。叩气吠叫为主人守门。”字形采用“犬”作边旁，“句”是声旁。"
            case "7":
                pyText = "[lóng]"
                engText = "dragon"
                engParaphrasingText = "白话版《说文解字》：龙，鳞甲动物之王。能变暗，能变亮，能变细，能变大，能变短，能变长；春分时刻而登天，秋分时刻而潜渊。字形采用“肉”作边旁，一副飞腾造型，以有所省略的“童”作声旁。所有与龙相关的字，都采用“龙”作边旁。  【造字本义】：中生代一种头上长角、大口利齿的巨型爬行动物。"
            case "8":
                pyText = "[huǒ]"
                engText = "fire"
                engParaphrasingText = "文言版《説文解字》：火，燬也。南方之行，炎而上。象形。凡火之屬皆从火。  白话版《说文解字》：火，可以烧毁一切的东西。五行之中，火代表南方属性，火光熊熊气势向上。字形像火的形象。所有与火相关的字，都采用“火”作边旁。  【造字本义】：物体燃烧时产生的光焰。"
            case "9":
                pyText = "[mǎ]"
                engText = "horse"
                engParaphrasingText = "文言版《説文解字》：馬，怒也。武也。象馬頭髦尾四足之形。凡馬之屬皆从馬。  白话版《说文解字》：马，一种会昂首怒吼的动物。马勇武无比。字形像马头、马鬃、马尾、四足的造型。所有与马相关的字，都采用“马”作边旁。  【造字本义】：善跑的力畜。"
            case "10":
                pyText = "[yàn]"
                engText = "wild goose"
                engParaphrasingText = "文言版《説文解字》：雁，鳥也。从隹，从人，厂聲。   白话版《说文解字》：雁，一种徙鸟。字形采用“隹、人”作边旁，“厂”是声旁。   【造字本义】：一种习惯以“人”字阵形迁徙的大型候鸟。"
            case "11":
                pyText = "[shān]"
                engText = "mountain"
                engParaphrasingText = "文言版《説文解字》：山，宣也。宣气散，生萬物，有石而高。象形。凡山之屬皆从山。  白话版《说文解字》：山，宣发地气。高山宣发地气，散布四方，促生万物，有石崖而高耸。象高峰连绵之形。所有与山相关的字，都采用“山”作边旁。  【造字本义】：起伏叠嶂的峰岭。"
            case "12":
                pyText = "[rén]"
                engText = "person"
                engParaphrasingText = "文言版《説文解字》：人，天地之性最貴者也。此籒文。象臂脛之形。凡人之屬皆从人。  白话版《说文解字》：人，天地间品性最高贵的生物。这是籀文。字形像垂着手臂、挺着腿胫的形象。所有与人相关的字，都采用“人”作边旁。  【造字本义】：躬身垂臂的劳作者，地球上唯一会创造文明符号、自觉进化的动物。"
                /*
                 let dict = [NSFontAttributeName: UIFont.systemFont(ofSize: 18)]
                 let w = NSString(string: pyText).boundingRect(with: CGSize(width: 420, height: 100), options: .usesLineFragmentOrigin, attributes: dict, context: nil).size.width
                 */
                
            case "13":
                pyText = "[yǔ]"
                engText = "rain"
                engParaphrasingText = "文言版《説文解字》：雨，水从雲下也。一象天，冂象雲，水霝其閒也。凡雨之屬皆从雨。   白话版《说文解字》：雨，水从雲层降下地面。字形顶部的“一”，像天穹，“冂”像低垂的雲团，水零落其间。所有与雨相关的字，都采用“雨字头”。   【造字本义】：天空降水。"
            case "14":
                pyText = "[fà]"
                engText = "hair"
                engParaphrasingText = "文言版《説文解字》：髪，根也。从髟，犮聲。髪或从首。  白话版《说文解字》：发，根部。繁体字形采用“髟”作边旁，采用“犮”作声旁。  【造字本义】：名词，人或动物头上的长毛。"
            case "15":
                pyText = "[fēng]"
                engText = "wind"
                engParaphrasingText = "白话版《说文解字》：风，八方的风。東方的风叫“明庶风”，东南的风叫“清明风”，南方的风叫“景风”，西南的风叫“涼风”，西方的叫“闾阖风”，西北的风叫“不周风”，北方的叫“广漠风”，东北的叫“融风”。  【造字本义】：使鸟类得以飞翔的气流。"
            case "16":
                pyText = "[é]"
                engText = "goose"
                engParaphrasingText = "文言版《説文解字》：鵝，鴚鵝也。从鳥，我聲。   白话版《说文解字》：鹅，哦哦叫的鹅。字形采用“鸟”作边旁，“我”是声旁。   【造字本义】：“哦哦”叫的鸭科水鸟，头大，喙扁阔，颈长，尾短。"
                
                /*    case数据示例
                 case "":
                 pyText = "[]"
                 engText = ""
                 engParaphrasingText = "文言版《説文解字》：   白话版《说文解字》：   【造字本义】："
                 */
            case "17":
                pyText = "[shí]"
                engText = "stone"
                engParaphrasingText = "文言版《説文解字》：石，山石也。在厂之下；囗，象形。凡石之屬皆从石。   白话版《说文解字》：石，山上的石头。好像石头在山崖之下；囗，是石块的象形。所有与石相关的字，都采用“石”作边旁。   【造字本义】：坚硬的矿物质，山岩，岩块。"
            case "18":
                pyText = "[cǎo]"
                engText = "grass"
                engParaphrasingText = "文言版《説文解字》：草，草斗，櫟實也。一曰象斗子。从艸早聲。   白话版《说文解字》：草，包裹着籽实的植物壳斗，即栎树的籽实。另一种叫法叫“象斗子”。字形采用“艸”作边旁，“早”作声旁。   【造字本义】：地面上片状生长的禾本科植物。"
            case "19":
                pyText = "[fèng]"
                engText = "phoenix"
                engParaphrasingText = "白话版《说文解字》：凤，神鸟。天老说：“凤的形象，像鸿前麐后，蛇头鱼尾，鹳胫鸳腮，龙文虎背，燕颔鸡喙，五色备举。凤出于东方君子之国，翱翔于四海之外，过崐仑，饮水于砥柱，濯羽于弱水河，暮宿风穴。凤鸟现则天下大安宁。”   【造字本义】：远古祭师用来祭祀通神的完美神鸟，传说中的百鸟之王，头顶华冠，羽披百眼，形似今日孔雀；雄的称为“凤”，雌的称为“凰”。"
            case "20":
                pyText = "[yǎn]"
                engText = "eye"
                engParaphrasingText = "文言版《説文解字》：眼，目也。从目，艮聲。   白话版《说文解字》： 眼，目。字形采用“目”作边旁，“艮”作声旁。"
            case "21":
                pyText = "[mén]"
                engText = "door"
                engParaphrasingText = "文言版《説文解字》：門，聞也。从二戶。象形。凡門之屬皆从門。   白话版《说文解字》：门，活动的两户，开或关时可以听到转动的声响。字形采用两个“户”会义。像门板的样子。所有与门相关的字，都采用“门”作边旁。   【造字本义】：房屋入口处可开关的双户。"
            case "22":
                pyText = "[qín]"
                engText = "qin"
                engParaphrasingText = "文言版《説文解字》：琴，禁也。神農所作。洞越。練朱五弦，周加二弦。象形。凡珡之屬皆从珡。，古文珡字，从金。   白话版《说文解字》：琴，用来安顿心灵、禁止邪念的巧具。   【造字本义】：多枕多弦的弹拨乐器。"
            case "23":
                pyText = "[yá]"
                engText = "cliff"
                engParaphrasingText = "文言版《説文解字》：崖，高邊也。从屵圭聲。   白话版《说文解字》：崖，高耸的河岸。字形采用“屵”作边旁，“圭”是声旁。   【造字本义】：耸立岩壁之上的悬崖。"
            case "24":
                pyText = "[gē]"
                engText = "dove"
                engParaphrasingText = "文言版《説文解字》：鴿，鳩屬。从鳥，合聲。   白话版《说文解字》：鸽，鸠属的鸟。字形采用“鸟”作边旁，“合”是声旁。   【造字本义】：一种形似鸠的鸟，合群，和平，与人类关系友好，经过训练可用于通信。"
            case "25":
                pyText = "[tián]"
                engText = "field"
                engParaphrasingText = "文言版《説文解字》：田，陳也。樹穀曰田。象四囗。十，阡陌之制也。凡田之屬皆从田。   白话版《说文解字》：田，纵横摆列。种谷子的地方叫“田”。象四个“囗”。字形中央的“十”，表现的是阡陌纵横的格式。所有与田相关的字，都采用 “田”作边旁。   【造字本义】：阡陌纵横的农耕之地。"
            case "26":
                pyText = "[shā]"
                engText = "sand"
                engParaphrasingText = "文言版《説文解字》：沙，水散石也。从水从少。水少沙見。楚東有沙水。譚長說：沙或从尐。   白话版《说文解字》：沙，水中细散的石粒。字形采用“水、少”会义。水少沙现。楚东有沙河。谭长说：有的“沙”采用“尐”作边旁。   【造字本义】：水边极细微的石粒。"
            case "27":
                pyText = "[yá]"
                engText = "bud"
                engParaphrasingText = "文言版《説文解字》：崖，高邊也。从屵圭聲。   白话版《说文解字》：崖，高耸的河岸。字形采用“屵”作边旁，“圭”是声旁。   【造字本义】：造字本义：耸立岩壁之上的悬崖。"
            case "28":
                pyText = "[qiáo]"
                engText = "bridge"
                engParaphrasingText = "文言版《説文解字》： 橋，水梁也。从木，喬聲。   白话版《说文解字》：桥，跨河的大梁。字形采用“木”作边旁，“乔”是声旁。   【造字本义】：古人用原木高架在在沟壑或溪流上通道。"
            case "29":
                pyText = "[zhēng]"
                engText = "kite"
                engParaphrasingText = "文言版《説文解字》：箏，鼓弦竹身樂也。从竹，爭聲。   白话版《说文解字》：箏，拨动竹身乐器的琴弦而奏乐。字形采用“竹”作边旁，“争”是声旁。   【造字本义】：古代用两手抓拨、以竹筒为共鸣箱的弦乐器。"
            case "30":
                pyText = "[fēng]"
                engText = "peak"
                engParaphrasingText = "文言版《説文解字》：峯，山耑也。从山，夆聲。   白话版《说文解字》： 峯，高山的顶端。字形采用“山”作边旁，“夆”是声旁。   【造字本义】：比喻刀尖一样高耸的山顶。"
            case "31":
                pyText = "[yā]"
                engText = "duck"
                engParaphrasingText = "文言版《説文解字》：鴨，鶩也。俗謂之鴨。从鳥，甲聲。   白话版《说文解字》：鸭，鹜鸟。俗称为“鸭”。字形采用“鸟”作边旁，“甲”是声旁。   【造字本义】：一种“呷呷”叫的水禽，嘴扁脚矮，趾间有蹼，善游泳。"
            case "32":
                pyText = "[shǒu]"
                engText = "hand"
                engParaphrasingText = "文言版《説文解字》：手，拳也。象形。凡手之屬皆从手。   白话版《说文解字》：手，可以握成拳。字形像五指张开的手。所有与手相关的字，都采用“手”作边旁。   【造字本义】：名词，伸张的五指，人的前肢。"
            case "33":
                pyText = "[lín]"
                engText = "forest"
                engParaphrasingText = "文言版《説文解字》：林，平土有叢木曰林。从二木。凡林之屬皆从林。   白话版《说文解字》：林，平坦地面上有丛生的树木叫作“林”。字形采用两个“木”会义。所有与林相关的字，都采用“林”作边旁。   【造字本义】：丛生的竹木。"
            case "34":
                pyText = "[yú]"
                engText = "fish"
                engParaphrasingText = "文言版《説文解字》：魚，水蟲也。象形。魚尾與燕尾相似。凡魚之屬皆从魚。   白话版《说文解字》：鱼，水中生物。象形。鱼尾与燕尾相似。所有与鱼相关的字，都采用“鱼”作边旁。   【造字本义】：有鳍、鳃和流线体型的冷血水生脊椎动物。"
            case "35":
                pyText = "[electricity]"
                engText = "diàn"
                engParaphrasingText = "文言版《説文解字》：電，陰陽激燿也。从雨从申。   白话版《说文解字》：電，天空中阴阳能量激合而爆发的耀眼光带。字形采用“雨、申”会义。   【造字本义】：名词，下雨时天幕上出现的锋利多齿的闪光。"
            case "36":
                pyText = "[shǔ]"
                engText = "mouse"
                engParaphrasingText = "文言版《説文解字》：鼠，穴蟲之緫名也。象形。凡鼠之屬皆从鼠。   白话版《说文解字》：鼠，穴居虫蛇的总称。象形。所有与鼠相关的字，都采用“鼠”作边旁。   【造字本义】：啮齿动物，门齿可终生维持生长，常借啮物以磨耗门齿，故俗称“耗子”；但其主要危害在于它能传播疫病。"
            case "37":
                pyText = "[fáng]"
                engText = "room"
                engParaphrasingText = "文言版《説文解字》：房，室在旁也。从戶，方聲。   白话版《说文解字》：房，正室两侧的旁室。字形采用“户”作边旁，采用“方”作声旁。   【造字本义】：正室两旁的卧间。"
            case "38":
                pyText = "[mǐ]"
                engText = "rice"
                engParaphrasingText = "文言版《説文解字》：米，粟實也。象禾實之形。凡米之屬皆从米。   白话版《说文解字》：米，粟的籽实。字形像粟禾结实的形状。所有与米相关的字，都采用“米”作边旁。   【造字本义】：粟子。"
            case "39":
                pyText = "[qí]"
                engText = "flag"
                engParaphrasingText = "文言版《説文解字》：旗，熊旗五游，以象罰星，士卒以爲期。从，其聲。《周禮》曰：“率都建旗。”   白话版《说文解字》：旗，画着熊的图案的军旗上有五根飘带，用以象征罚星，士卒把军中飘起熊旗的时刻，当作部队集合、公开行罚的时间。《周礼》上说，“率部至都，并立熊旗。”   【造字本义】：古人系在树杆上、标志领地或军队的醒目彩绸。"
            case "40":
                pyText = "[guī]"
                engText = "tortoise"
                engParaphrasingText = "文言版《説文解字》：龜，舊也。外骨内肉者也。从它，龜頭與它頭同。天地之性，廣肩無雄；龜鼈之類，以它爲雄。象足甲尾之形。   白话版《说文解字》：龟，古老的动物。外部是骨质的护甲，甲壳内是龟的肉身。字形采用“它”作边旁，龟的头与蛇的头外形相同。   【造字本义】：鳖目动物，一般具有厚重、梅花状的四肢和高耸的圆形甲壳。："
            case "41":
                pyText = "[chuáng]"
                engText = "bed"
                engParaphrasingText = "文言版《説文解字》：牀，安身之坐者。从木，爿聲。   白话版《说文解字》：床，一种可以安卧的坐具。字形采用“木”作边旁，采用“爿”作声旁。   【造字本义】：供睡卧的木制台式家具"
            case "42":
                pyText = "[hé]"
                engText = "river"
                engParaphrasingText = "文言版《説文解字》：河，水。出焞煌塞外昆侖山，發原注海。从水可聲。   白话版《说文解字》：河，北方大川。源出墩煌塞外的昆侖山，西北发原，东南注海。字形采用“水”作边旁，“可”是声旁。   【造字本义】：非舟船无以越渡的大川，即北方第一大川， 即黄河，发源于青海、流入渤海的中国第二大川流。"
            case "43":
                pyText = "[jūn]"
                engText = "army"
                engParaphrasingText = "文言版《説文解字》：軍，圜圍也。四千人爲軍。从車，从包省。車，兵車也。   白话版《说文解字》：軍，环形围绕。四千人成一军。字形采用“车”和省略了“巳”的“包”会义。“军”字里面的“车”，就是战车。   【造字本义】：动词，会战双方以相同数量的战车对等交战，对阵。"
            case "44":
                pyText = "[zhū]"
                engText = "pig"
                engParaphrasingText = "文言版《説文解字》：豬，豕而三毛叢居者。从豕，者聲。   白话版《说文解字》：猪，体毛稀疏、群居的猪。字形采用“豕”作边旁，“者”作声旁。   【造字本义】：名词，作为古代食物油重要来源的肥豚，一种家畜，短尾短足，鼻子短凹平直，耳大下垂，好睡多肉，其肉多油脂。"
            case "45":
                pyText = "[xīng]"
                engText = "star"
                engParaphrasingText = "文言版《説文解字》：星，万物之精，上为列星。从晶，生聲。一曰象形，从口，古口復注中，故与日同。曐，古文星。星，曐或省。   白话版《说文解字》：星，宇宙万物的精华，字形上部是星群呈列的样子。   【造字本义】：从空寂的夜幕中出现的众多发光天体。"
            case "46":
                pyText = "[rì]"
                engText = "run"
                engParaphrasingText = "文言版《説文解字》：日，實也。太陽之精不虧。从囗一。象形。凡日之屬皆从日。   白话版《说文解字》：日，能量充盈。太阳没有圆缺变化，精华永不枯竭。字形采用“囗”和“一”构成。字形像太阳的形状。所有与日相关的字都采用“日字边”。   【造字本义】：造字本义：名词，太空运行、发光的天体；因为在白天发光，与黑夜发光的月亮“太阴”相对，故称“太阳”。"
            case "47":
                pyText = "[yuè]"
                engText = "moon"
                engParaphrasingText = "文言版《説文解字》：月，闕也。太陰之精。象形。凡月之屬皆从月。   白话版《说文解字》： 月，有如太空阙门，富于阴晴圆缺变化。月是宇宙间太阴的精魂。象月缺之形。所有与月相关的字，都采用“月”作边旁。   【造字本义】：通过折射日光在夜空中可以观察到的离地球最近的、圆缺变化的星球。"
            case "48":
                pyText = "[dāo]"
                engText = "knife"
                engParaphrasingText = "文言版《説文解字》：刀，兵也。象形。凡刀之屬皆从刀。   白话版《说文解字》：刀，兵器。象刀锋之形。所有与刀相关的字，都采用“刀”作边旁。   【造字本义】：有锋刃的切割器具。"
            case "49":
                pyText = "[tán]"
                engText = "altar"
                engParaphrasingText = "文言版《説文解字》：壇，祭場也。从土，亶聲。   白话版《说文解字》：壇，祭场。字形采用“土”作边旁，“亶”是声旁。   【造字本义】：古代为祭祀、朝会、盟誓而筑的塔台。"
            case "50":
                pyText = "[suì]"
                engText = "spike"
                engParaphrasingText = "文言版《説文解字》：穗，俗从禾。惠聲。   白话版《说文解字》：穗，俗体字“穗”采用“禾”作边旁，“惠”是声旁。   【造字本义】：从成熟庄稼上采摘的成串的籽实。"
            case "51":
                pyText = "[xiā]"
                engText = "shrimp"
                engParaphrasingText = "文言版《説文解字》：蝦，蝦蟆也。从虫，叚聲。   白话版《说文解字》：虾，虾蟆。字形采用“虫”作边旁，“叚”作声旁。   【造字本义】：名词，一种似鱼非鱼、似虫非虫的生活在水中的节肢动物，有长须，背甲上有长如脊刺的突起，尾部有硬鳞脚，善于跳跃，以水中微小生物为食。"
            case "52":
                pyText = "[shuāng]"
                engText = "frost"
                engParaphrasingText = "文言版《説文解字》：霜，喪也。成物者。从雨相聲。   白话版《说文解字》：霜，使万物丧失生机的东西，也是促进部分作物成熟的东西。字形采用“雨字头”，“相”是声旁。   【造字本义】：零度以下的低温中，接近地面的空气所含水汽凝结的白色晶体，类似薄雪，导致植物的枯败。"
            case "53":
                pyText = "[yān]"
                engText = "smoke"
                engParaphrasingText = "文言版《説文解字》：煙，火气也。从火垔聲。烟，或从因。，古文。，籒文从宀。   白话版《说文解字》：煙，燃烧时发出的混合气体。字形采用“火”作边旁，“垔”是声旁。“烟”，有的“煙”采用“因”作边旁，写作“烟”。，是 古文写法的“烟”。，籒文字形采用“宀”作边旁。   【造字本义】：由未完全燃烧的物质和空气混合成的黑色气体。"
            case "54":
                pyText = "[hǎi]"
                engText = "sea"
                engParaphrasingText = "文言版《説文解字》：海，天池也。以納百川者。从水每聲。   白话版《说文解字》：海，天然大池。赖以浩纳百川的大池。字形采用“水”作边旁，“每”是声旁。   【造字本义】：水之母，比喻河流的发源地，即陆地上的大湖或大池。"
            case "55":
                pyText = "[sleeve]"
                engText = "xiù"
                engParaphrasingText = "文言版《説文解字》：褎，袂也。从衣，聲。袖，俗褎从由。   白话版《说文解字》： 袖，衣袂。字形采用“衣”作边旁，采用“”作声旁。袖，这是俗体的“褎”字，采用“由”作声旁。  【造字本义】：衣服中护臂、又让双臂能自由活动的衣管。"
            case "56":
                pyText = "[ròu]"
                engText = "meat"
                engParaphrasingText = "文言版《説文解字》：肉，胾肉。象形。凡肉之屬皆从肉。   白话版《说文解字》：肉，大块肉。字形像宰切下的大块兽肉。所有与肉相关的字，都采用“肉”作边旁。   【造字本义】：屠夫用刀切成块的禽兽软组织，主要由骨骼肌和脂肪构成的可食用的软组织。"
            case "57":
                pyText = "[qí]"
                engText = "chess"
                engParaphrasingText = "文言版《説文解字》：棊，博棊。从木，其聲。   白话版《说文解字》： 棋，博奕玩具。字形采用“木”作边旁，“其”是声旁。  【造字本义】：博弈玩具，在箕筐内投掷有不同记号的若干小木块，或手持盛有小木块的箕筐不断摇动，以小木块记号的组合结果定输赢。"
            case "58":
                pyText = "[xuě]"
                engText = "snow"
                engParaphrasingText = "文言版《説文解字》：雪，凝雨說物者。从雨，彗聲 。   白话版《说文解字》：雪，凝结雨水而成、从天上飘落并带给天下万物喜悦的美丽冰晶。字形采用“雨字头”，“彗”是声旁。   【造字本义】：零度以下的低温状态，空气中的部分水汽凝结成的、从天空飘落的羽绒状冰晶。"
            case "59":
                pyText = "[yàn]"
                engText = "swallow"
                engParaphrasingText = "文言版《説文解字》：燕，玄鳥也。籋口，布翄，枝尾。象形。凡燕之屬皆从燕。   白话版《说文解字》： 燕，玄鸟。箝形的口，如布般轻薄的翼，枝叉状的尾。象形。所有 与燕相关的字，都采用燕作边旁。  【造字本义】：一种喜欢在民居筑巢的候鸟 。"
            case "60":
                pyText = "[gōng]"
                engText = "arch"
                engParaphrasingText = "文言版《説文解字》：弓，以近窮遠。象形。古者揮作弓。《周禮》六弓：王弓、弧弓以射甲革甚質；夾弓、庾弓以射干侯鳥獸；唐弓、大弓以授學射者。凡弓之屬皆从弓。   白话版《说文解字》：以近射远的武器。字形像弓的形象。古昔朝代名叫“挥”的人创制了弓。《周礼》上说的六弓是：王弓、弧弓用来射击铠甲或射击甲革制的耙子；夹弓、庾弓用去射击胡地野狗皮或其他鸟兽皮作的耙子；唐弓、大弓用去教练初学射箭的人。所有与弓有关的字， 都采用“弓”作边旁。   【造字本义】：利用有弹性的弯拱和丝弦射箭或发弹的古代战械。"
            case "61":
                pyText = "[zhī]"
                engText = "branch"
                engParaphrasingText = "文言版《説文解字》：木别生條也。从木，支聲。   白话版《说文解字》：枝，树干之外另生的旁条。字形采用“木”作边旁，“支”是声旁。   【造字本义】：名词，竹、木主干上分出的细条。"
            case "62":
                pyText = "[lán]"
                engText = "orchid"
                engParaphrasingText = "文言版《説文解字》：蘭，香艸也。从艸闌聲。   白话版《说文解字》：兰（蘭），一种香草。字形采用“艸”作边旁，“闌”是声旁。   【造字本义】：古人挂在小栅门上的一种多年生香草，生于山中湿地，花紫红色，其茎、叶、花有微香。"
            case "63":
                pyText = "[tǎ]"
                engText = "tower"
                engParaphrasingText = "文言版《説文解字》：塔，西域浮屠也。从土，荅聲。   白话版《说文解字》：塔，西域礼佛的高层建筑（浮屠，是汉语对梵语“宝塔”的音译）。字形采用“土”作边旁，“荅”是声旁。   【造字本义】：用土石砖木搭建的多层尖顶建筑。"
            case "64":
                pyText = "[làng]"
                engText = "wave"
                engParaphrasingText = "文言版《説文解字》：浪，滄浪水也。南入江。从水良聲。   白话版《说文解字》：浪，沧浪河。从南边汇入长江。字形采用“水”作边旁，“良”是声旁。   【造字本义】：水波腾空后形成的晶莹壮观的水花。"
            case "65":
                pyText = "[wěi]"
                engText = "reed"
                engParaphrasingText = "文言版《説文解字》：葦，大葭也。从艸韋聲。   白话版《说文解字》：苇，高大的葭草。字形采用“艸”作边旁，采用“韦”作声旁。   【造字本义】：名词，一种长在湿地的葭草，其茎杆长而柔韧，多用于编席。"
            case "66":
                pyText = "[zhū]"
                engText = "spider"
                engParaphrasingText = "文言版《説文解字》：鼄，鼅鼄也。从黽朱聲。蛛，鼄或从虫。   白话版《说文解字》：鼄，蜘蛛。字形采用“黽”作边旁，“朱”作声旁。蛛，异体的“鼄”采用“虫”作边旁。   【造字本义】：一种有八只足、两条触角和毒牙的昆虫，有一个不分节的腹部，腹部上有几个吐丝器，能产生透明而有韧性的粘丝来结网以捕食其他昆虫。"
            case "67":
                pyText = "[dàn]"
                engText = "dawn"
                engParaphrasingText = "文言版《説文解字》：旦，明也。从日見一上。一，地也。凡旦之屬皆从旦。   白话版《说文解字》：旦，天亮。字形采用“日”作边旁，像“日”出现在“一”之上。一，表示地平线。所有与“旦”相关的字，都采用“旦”作边旁。   【造字本义】：世界从黑暗混沌合一的状态中分离出天地，即天亮。"
            case "68":
                pyText = "[xī]"
                engText = "stream"
                engParaphrasingText = "文言版《説文解字》：谿，山瀆無所通者。从谷，奚聲。   白话版《说文解字》：谿，山中与河川不相通的水沟。字形采用“谷”作边旁，“奚”是声旁。   【造字本义】：名词，山间石壁或沙床上“嘻嘻”流淌的水流。"
            case "69":
                pyText = "[qiāng]"
                engText = "gun"
                engParaphrasingText = "文言版《説文解字》：槍，歫也。从木，倉聲。一曰槍，欀也。   白话版《说文解字》： 枪，抗拒入侵者的器械。字形采用“木”作边旁，“仓”是声旁。一种说法认为，“枪”是“欀”，支撑屋架的部件。   【造字本义】：古代用于刺击或投击的长柄木制武器。"
            case "70":
                pyText = "[xiàng]"
                engText = "elephant"
                engParaphrasingText = "文言版《説文解字》：象，長鼻牙，南越大獸，三秊一乳，象耳牙四足之形。凡象之屬皆从象。   白话版《说文解字》：象，长鼻长牙的南越大兽，三年一胎，字形像大象的耳牙四足之形。所有与象相关的字，都采用“象”作边旁。   【造字本义】：鼻子超长、体形超大的食草动物。"
            case "71":
                pyText = "[tíng]"
                engText = "hall"
                engParaphrasingText = "文言版《説文解字》：庭，宮中也。从广，廷聲。   白话版《说文解字》：庭，宫室的中央。字形采用“广”作边旁，采用“廷”作声旁。   【造字本义】：宫中宽阔的大殿。"
            case "72":
                pyText = "[yī]"
                engText = "clothing"
                engParaphrasingText = "文言版《説文解字》：衣，依也。上曰衣，下曰裳。象覆二人之形。凡衣之屬皆从衣。   白话版《说文解字》：衣，人们遮羞蔽体所依赖的东西。上身穿的叫“衣”，下身穿的叫“裳”。“衣”字的字形，像是一个“人”字覆盖了两个“人”字。所有与衣相关的字，都采用“衣”作边旁。   【造字本义】：两臂插入两袖、穿起上装。"
            case "73":
                pyText = "[lǐ]"
                engText = "carp"
                engParaphrasingText = "文言版《説文解字》：鯉，鱣也。从魚，里聲。   白话版《说文解字》：鲤，鳣鱼。字形采用“鱼”作边旁，“里”作声旁。   【造字本义】：一种饲养于田园水塘的软鳍淡水鱼。"
            case "74":
                pyText = "[hé]"
                engText = "lotus"
                engParaphrasingText = "文言版《説文解字》：荷，芙蕖葉。从艸，何聲。   白话版《说文解字》：荷，芙蕖叶。字形采用“艸”作边旁，“何”是声旁。   【造字本义】：名词，芙蕖、水芙蓉，水上部分的叶子与花称作“荷”；水下泥中的茎称作“藕”，子实称作“莲”。莲的主茎生长在水下，使得荷花、荷叶看起来是独自扛着，高高亭立水面，别样美丽。"
            case "75":
                pyText = "[zào]"
                engText = "stove"
                engParaphrasingText = "文言版《説文解字》：炊也。从穴，省聲。或不省。   白话版《说文解字》：炊炙食物的灶穴。字形采用“穴”作边旁，采用省略了的“”作声旁。，这是的异体字，并不省略。   【造字本义】：有开口、有烟洞、可以架锅烧煮的台子。"
            case "76":
                pyText = "[huà]"
                engText = "draw"
                engParaphrasingText = "文言版《説文解字》：畫，界也。象田四界。聿，所以畫之。凡畫之屬皆从畫。，古文畫省。，亦古文畫。   白话版《说文解字》：画，用笔划定边界线。字形像田畴四边的界线。聿，表示用以画界的笔。所有与画相关的字，都采用“画”作边旁。，这是古文 写法的“畫”字，字形省略了横笔。，这也是古文写法的“畫”字。   【造字本义】：描绘地图，显示地界。"
            case "77":
                pyText = "[qún]"
                engText = "skirt"
                engParaphrasingText = "文言版《説文解字》：帬，下裳也。从巾，君聲。裠，帬或从衣。   白话版《说文解字》：裙，下裳。字形采用“巾”作边旁，采用“君”作声旁。裠，这是“帬”的异体字，字形采用“衣”作边旁。   【造字本义】：古代男子穿的长衫，男裳。"
            case "78":
                pyText = "[shuài]"
                engText = "smart"
                engParaphrasingText = "文言版《説文解字》：帥，佩巾也。从巾、。帨，帥或从兌。   白话版《说文解字》：帅，佩巾。字形采用“巾、”会义。“帨”，有的“帥”字采用“兌”作边旁，写作“帨”。   【造字本义】：军官挺剑呐喊，指挥作战。"
            case "79":
                pyText = "[guā]"
                engText = "melon"
                engParaphrasingText = "文言版《説文解字》：瓜，也。象形。凡瓜之屬皆从瓜。   白话版《说文解字》：瓜，也。象形。凡瓜之屬皆从瓜。   【造字本义】：挂在藤上的葫芦状果实。"
            case "80":
                pyText = "[jī]"
                engText = "chicken"
                engParaphrasingText = "文言版《説文解字》：雞，知時畜也。从隹，奚聲。   白话版《说文解字》：鸡，对天亮敏感知时的家禽。字形采用“隹”作边旁，“奚”是声旁。   【造字本义】：古人从林野抓捕后用绳子系爪驯养在家的飞禽，高冠长尾、形似孔雀。"
                
            case "81":
                pyText = "[cài]"
                engText = "vegetable"
                engParaphrasingText = "文言版《説文解字》：菜，艸之可食者。从艸，采聲。   白话版《说文解字》：菜，百草中可以食用的植物。字形采用“艸”作边旁，“采”是声旁。   【造字本义】：古人采摘来当作食物的植物。"
                
            case "82":
                pyText = "[chéng]"
                engText = "wall"
                engParaphrasingText = "文言版《説文解字》：城，以盛民也。从土从成，成亦聲。   白话版《说文解字》：城，用来容纳万民的系列建筑群。字形采用“土、成”会义，“成”也是声旁。   【造字本义】：配备武装、用以围护都邑的郭墙。"
            case "83":
                pyText = "[chóng]"
                engText = "insect"
                engParaphrasingText = "文言版《説文解字》：虫，一名蝮，博三寸，首大如擘指。象其臥形。物之微細，或行，或毛，或蠃，或介，或鱗，以虫爲象。凡虫之屬皆从虫。蟲 （chónɡ）有足謂之蟲，無足謂之豸。从三虫。凡蟲之屬皆从蟲。   白话版《说文解字》： 虫，一个名字叫“蝮”，宽三寸，头部大如拇指。字形像蝮蛇趴臥的样子。小动物的微细差别，体现于它们有的能走动，有的长毛， 有的寄生，有的披甲，有的披鳞，都以虫的特征为形象基础。所有与虫相关的字，都采用“虫”作边旁。蟲（ chónɡ）有脚的叫它 “蟲”，没有脚的叫“豸”。字形采用三个“虫”会义。所有与蟲相关的字，都采用“蟲”作边旁。  【造字本义】：蛇。"
            case "84":
                pyText = "[liǔ]"
                engText = "willow"
                engParaphrasingText = "文言版《説文解字》： 桺，小楊也。从木，丣聲。丣，古文酉。   白话版《说文解字》：柳，小杨木。字形采用“木”作边旁，“卯”是声旁。“卯”，古文写作“酉”。   【造字本义】：种在池塘边、喜阴耐湿的落叶树种，叶子狭长，枝条柔韧，柔荑花序内有雌雄同蕊的花，木质结实且轻。"
            case "85":
                pyText = "[nǚ]"
                engText = "female"
                engParaphrasingText = "文言版《説文解字》：女，婦人也。象形。王育說。凡女之屬皆从女。   白话版《说文解字》：女，妇人。像妇人之形。这是王育的说法。所有与女相关的字，都采用“女”作边旁。   【造字本义】：两胸饱满的妇人，能生育、哺乳的人类中雌性"
            case "86":
                pyText = "[nán]"
                engText = "male"
                engParaphrasingText = "文言版《説文解字》：男，丈夫也。从田，从力。言男用力於田也。凡男之屬皆从男。   白话版《说文解字》：男，丈夫，即成年雄性。字形采用“田、力”会义，意思是男子在田间劳动耕作。   【造字本义】：在田间出力做事的雄性劳动者。"
            case "87":
                pyText = "[tù]"
                engText = "rabbit"
                engParaphrasingText = "文言版《説文解字》：兔，獸名。象踞，後其尾形。兔頭與頭同。凡兔之屬皆从兔。   白话版《说文解字》：兔，兽名。像蹲着，后部像兔子的尾巴。兔头与头相同。所有与兔相关的字，都采用“兔”作边旁。   【造字本义】：性情温驯的食草类哺乳动物。"
            case "88":
                pyText = "[cāng]"
                engText = "storehouse"
                engParaphrasingText = "文言版《説文解字》：倉，榖藏也。倉黃取而藏之，故謂之倉。从食省，口象倉形。凡倉之屬皆从倉。仺，奇字倉。   白话版《说文解字》：仓，收藏稻谷的粮库。通常在稻谷成熟、颜色仓黄之时将它们收割入库，因此称粮库为“仓”。字形采用有所省略的“食”和“口”                                         会义，“囗”像粮仓形状。所有与仓相关的字，都采用“仓”作边旁。仺，这是“仓”的奇怪写法。   【造字本义】：古代用于存储谷物的、用墙围筑的简易建筑。"
            case "89":
                pyText = "[huā]"
                engText = "flower"
                engParaphrasingText = "文言版《説文解字》：花，（華）俗，今通用。   白话版《说文解字》：花，華也。   【造字本义】：名词，草本种子植物的有性繁殖器官。"
            case "90":
                pyText = "[shé]"
                engText = "snake"
                engParaphrasingText = "文言版《説文解字》：蛇，它或从虫（邵瑛群經正字：“今經典凡它蟲字从或體作蛇”）。   白话版《说文解字》：蛇，“它”字有时采用“虫”作边旁，写作“蛇”（邵瑛群经正字：“现在的经史典籍，凡遇到‘它’、‘蟲’字时采用异体字形写作‘蛇’。  【造字本义】：名词，一种身体圆细而长、有鳞无爪的动物，贴着地面蜿蜒前行，代表一种神秘的生存方式。"
            
                
            default:
                print("相关资料还在整理中，请查看其它汉字吧~")
            }
        pinyinLable.text = pyText
        pinyinLable.textAlignment = .right
        pinyinLable.font = UIFont.systemFont(ofSize: 28)
        englishLable.text = engText
        englishLable.textAlignment = .right
        englishLable.font = UIFont.systemFont(ofSize: 28)
        engParaphrasingLable.text = engParaphrasingText
        
            if #available(iOS 10.0, *) {
                engParaphrasingLable.adjustsFontForContentSizeCategory = true
            } else {
                // Fallback on earlier versions
            }
        engParaphrasingLable.numberOfLines=0

        self.view.addSubview(pinyinLable)
        self.view.addSubview(englishLable)
        self.view.addSubview(engParaphrasingLable)

        //文字解说背景图--“”
        //var engParaphrasingLable_bgView = UIImageView(image:UIImage(named:"engParaphrasingLable_bg"))
        //var engParaphrasingLable_bgView = UIImageView(image:UIImage.init(named: "engParaphrasingLable_bg")?.resizableImage(withCapInsets: UIEdgeInsetsMake(56, 56, 50, 50)))
        //engParaphrasingLable_bgView.frame = engParaphrasingLable.frame
        //self.view.addSubview(engParaphrasingLable_bgView)
        leftcomma.image = UIImage(named: "leftcomma")
        self.view.addSubview(leftcomma)
        rightcomma.image = UIImage(named: "rightcomma")
        self.view.addSubview(rightcomma)
                //

        jgwCHineseView.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.0)
        jgwCHineseView.layer.masksToBounds = true;
        //    label圆角半径
        jgwCHineseView.layer.cornerRadius = 10;
        //    label圆角边框颜色
        jgwCHineseView.layer.borderColor = UIColor.clear.cgColor
        //    label圆角边框宽度
        jgwCHineseView.layer.borderWidth = 1;
            
        jgwCHineseView_bgView.frame = CGRect(x: ChineseDeLable.frame.origin.x-20, y:ChineseDeLable.frame.origin.y-7, width: ChineseDeLable.frame.width+40, height:ChineseDeLable.frame.height+14  )
        //self.view.addSubview(jgwCHineseView_bgView)
    
        //
        jgwGridBtn_1.setBackgroundImage(UIImage(named:TapTarget+"_"+"1"),for:UIControlState.normal)
        jgwGridBtn_2.setBackgroundImage(UIImage(named:TapTarget+"_"+"2"),for:UIControlState())
        jgwGridBtn_3.setBackgroundImage(UIImage(named:TapTarget+"_"+"3"),for:UIControlState())
        jgwGridBtn_4.setBackgroundImage(UIImage(named:TapTarget+"_"+"4"),for:UIControlState())
        jgwGridBtn_5.setBackgroundImage(UIImage(named:TapTarget+"_"+"5"),for:UIControlState())
        
        //
        jgwGridBtn_1.addTarget(self, action:#selector(jgwGridBtn_1Click(_:)), for:.touchUpInside)
        jgwGridBtn_2.addTarget(self, action:#selector(jgwGridBtn_2Click(_:)), for:.touchUpInside)
        jgwGridBtn_3.addTarget(self, action:#selector(jgwGridBtn_3Click(_:)), for:.touchUpInside)
        jgwGridBtn_4.addTarget(self, action:#selector(jgwGridBtn_4Click(_:)), for:.touchUpInside)
        jgwGridBtn_5.addTarget(self, action:#selector(jgwGridBtn_5Click(_:)), for:.touchUpInside)
       
        //jgwGridBtn_1.addTarget(self, action: #selector(ChineseDeViewController.jgwGridBtn_1Click), for: .touchUpInside)

        self.view.addSubview(jgwCHineseView)
            
        self.view.addSubview(jgwGridBtn_1)
        self.view.addSubview(jgwGridBtn_2)
        self.view.addSubview(jgwGridBtn_3)
        self.view.addSubview(jgwGridBtn_4)
        self.view.addSubview(jgwGridBtn_5)
    

        //backBtn点击事件-->backBtnClick
        let backBtn:UIButton = UIButton(type:.system)
        backBtn.frame = CGRect(x: 0, y: 18, width: 97, height: 90)
        backBtn.setBackgroundImage(UIImage(named:"jiantou"),for:UIControlState())
        backBtn.addTarget(self, action: #selector(ChineseDeViewController.backBtnClick), for: .touchUpInside)
        self.view.addSubview(backBtn)
        self.showGridChineseGif()
            
        //cameraBtn点击事件-->camera
        let cameraBtn:UIButton = UIButton(type: .system)
        cameraBtn.frame = CGRect(x: deviceWidth-20-34, y:englishLable.frame.origin.y+englishLable.frame.height-30, width: 34, height: 30)
        cameraBtn.setBackgroundImage(UIImage(named:"camera"), for: UIControlState())
        cameraBtn.addTarget(self, action: #selector(ChineseDeViewController.camera), for: .touchUpInside)
        self.view.addSubview(cameraBtn)
        //字源解说栏
        ChineseDeLable.backgroundColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 0.0)
        //ChineseDeLable.layer.masksToBounds = true;
        //    label圆角半径
        //ChineseDeLable.layer.cornerRadius = 10;
        //    label圆角边框颜色
        //ChineseDeLable.layer.borderColor = UIColor.blueColor().CGColor;
        //    label圆角边框宽度
        //ChineseDeLable.layer.borderWidth = 1;
        ChineseDeLable.adjustsFontSizeToFitWidth=true
        ChineseDeLable.font = UIFont.systemFont(ofSize: 20)
        ChineseDeLable.numberOfLines=0
    }
    //gif动画
    func showGridChineseGif() -> Void {
        gifView.frame = CGRect(x: deviceWidth/2, y: 40, width: GifW, height: GifH)
        gifView.contentMode = UIViewContentMode.scaleAspectFit
        gifView.showGIFImageWithLocalName(name: "")
        self.view.addSubview(gifView)
    }
    
    //字源解说-->>甲骨文、金文、篆书、隶书、楷书
    func jgwGridBtn_1Click(_ jgwGridBtn_1:UIButton) {
        ChineseDeTarget = TapTarget+"000"+"01" //点击的第几个汉字+000+01
        switch ChineseDeTarget {
        case "100001":
            ChineseDeLable.text = "甲骨文，像两根细枝上垂下的六片叶子。"
        case "200001":
            ChineseDeLable.text = "甲骨文，像长尾飞禽，描画了飞禽的喙、羽、爪。"
        case "300001":
            ChineseDeLable.text = "甲骨文像某种器械两边各有一个轮子，中间的箱体表示保护性的设备，人在箱体中可以避免受到攻击。"
        case "400001":
            ChineseDeLable.text = "甲骨文字形表示气流在天上流动。"
        case "500001":
            ChineseDeLable.text = "甲骨文像动物头部的线描，突出了鼻孔在鼻尖上形成“V”字形状，以及向两侧弧形伸出的一对尖角。"
        case "600001":
            ChineseDeLable.text = "甲骨文像腹瘦尾长的动物，是狗的线描。"
        case "700001":
            ChineseDeLable.text = "甲骨文在大口曲身的动物头上加“辛”，表示“龙”头上长着锋利的角，整个字形像长角的爬行巨兽。"
        case "800001":
            ChineseDeLable.text = "甲骨文字形、与“山”相似，像地面上的三（多）股腾腾热焰。"
        case "900001":
            ChineseDeLable.text = "甲骨文是长脸、大眼、鬃毛飞扬、长尾有蹄的动物形象。"
        case "1000001":
            ChineseDeLable.text = " "
        case "1100001":
            ChineseDeLable.text = "甲骨文像遥望中地平线上起伏连绵的群峰的线描，有三（众多）座峰头。"
        case "1200001":
            ChineseDeLable.text = "甲骨文像是垂臂直立的动物形象。"
        case "1300001":
            ChineseDeLable.text = "甲骨文在“水帘”之上加一横代表“上天”的指事符号，表示天空降水。"
        case "1400001":
            ChineseDeLable.text = " "
        case "1500001":
            ChineseDeLable.text = "甲骨文卜辞中有时假借“鳳”代替“風”。"
//        case "1600001":
//            ChineseDeLable.text = "字体缺失"
        case "1700001":
            ChineseDeLable.text = "甲骨文“厂”像悬崖，“口”像岩块，表示山岩。"
        case "1800001":
            ChineseDeLable.text = "甲骨文字形像刚破土萌发出两瓣叶子的嫩芽。"
        case "1900001":
            ChineseDeLable.text = "早期甲骨文是象形字，像华美堂皇的大鸟孔雀，头顶华冠，身披带孔眼的修长翎羽。晚期甲骨文表示祭师抓住传说中的神鸟，进行祭祀通神活动。"
        case "2000001":
            ChineseDeLable.text = "甲骨文“艮”像一个人在回头张望。"
        case "2100001":
            ChineseDeLable.text = "甲骨文像在房屋入口并装两“户”、。有的甲骨文省去房屋入口的上框。"
//        case "2200001":
//            ChineseDeLable.text = ""
//        case "2300001":
//            ChineseDeLable.text = ""
//        case "2400001":
//            ChineseDeLable.text = ""
        case "2500001":
            ChineseDeLable.text = "甲骨文在一大片垄亩上画出三横三纵的九个方格，表示阡（竖线代表纵向田埂）陌（横线代表横向田埂）纵横的无数井田。有的甲骨文像畸形的地亩。有的甲骨文将甲骨文字形中阡陌（无数的纵横田埂）简化为一纵一横。"
        case "2600001":
            ChineseDeLable.text = "甲骨文像众多（三）沙粒。金文承续甲骨文字形。"
//        case "2700001":
//            ChineseDeLable.text = ""
//        case "2800001":
//            ChineseDeLable.text = ""
//        case "2900001":
//            ChineseDeLable.text = ""
//        case "3000001":
//            ChineseDeLable.text = ""
//        case "3100001":
//            ChineseDeLable.text = ""
        case "3200001":
            ChineseDeLable.text = "甲骨文的“手”像五指伸张的样子"
        case "3300001":
            ChineseDeLable.text = "甲骨文像两棵树并排"
        case "3400001":
            ChineseDeLable.text = "甲骨文字形中的像张着凶猛虎口的大鱼；"
        case "3500001":
            ChineseDeLable.text = "甲骨文像神秘而令人惊恐的霹雳、朝各个方向开裂伸展的闪电。"
        case "3600001":
            ChineseDeLable.text = "甲骨文的‘鼠’像一只尖嘴、大耳、长尾的动物在啃啮什么，四点指事符号表示代表啮碎的物屑。"
//        case "3700001":
//            ChineseDeLable.text = ""
        case "3800001":
            ChineseDeLable.text = "甲骨文字形像是围绕着穗梗结满了粟子，像众多籽粒。"
        case "3900001":
            ChineseDeLable.text = "甲骨文像在树杆上飞舞的飘带。"
        case "4000001":
            ChineseDeLable.text = "甲骨文像侧视的鳖类突出背部的甲壳。"
        case "4100001":
            ChineseDeLable.text = "甲骨文像有两个脚架、铺着木板的床。"
        case "4200001":
            ChineseDeLable.text = "甲骨文表示隔水吆喝，唤船摆渡。"
//        case "4300001":
//            ChineseDeLable.text = ""
//        case "4400001":
//            ChineseDeLable.text = ""
        case "4500001":
            ChineseDeLable.text = "甲骨文在“晶”的字形（星群）基础上加“生”（从无到有）另造“曐”代替，表示星群在夜幕中“无中生有”的现象。"
        case "4600001":
            ChineseDeLable.text = "甲骨文在天体形状的圆圈内加一点指事符号，表示发光特性的天体。由于甲骨文刻画的不流畅，有的甲骨文将天体形状的圆圈刻成五边形；有的甲骨文将圆圈刻成棱形。"
        case "4700001":
            ChineseDeLable.text = "“月”与“夕”在甲骨文中本是同一个字，后分化。月，甲骨文在半圆形中加一短竖指事符号，表示半圆形天体发光的特性。古人发现月亮有圆缺变化，月满时短，月缺时长，遂以残缺的圆形即半圆代表月亮。"
        case "4800001":
            ChineseDeLable.text = "甲骨文像有锋刃的长柄工具或兵器。"
//        case "4900001":
//            ChineseDeLable.text = ""
        case "5000001":
            ChineseDeLable.text = "字体缺失"
//        case "5100001":
//            ChineseDeLable.text = ""
//        case "5200001":
//            ChineseDeLable.text = ""
//        case "5300001":
//            ChineseDeLable.text = ""
//        case "5400001":
//            ChineseDeLable.text = ""
//        case "5500001":
//            ChineseDeLable.text = ""
        case "5600001":
            ChineseDeLable.text = "甲骨文在“刀”的刀刃和刀背之间加一短竖指事符号，表示要用刀来切割的东西。有的甲骨文隐去“刀”形。"
        case "5700001":
            ChineseDeLable.text = "甲骨文“木”小木块，“其”箕筐，“双手”抓持。"
        case "5800001":
            ChineseDeLable.text = "甲骨文（羽，白色轻盈的绒毛）（雨点），比喻天空中纷纷扬扬的羽状飘落物。有的甲骨文将雨点状的写成“雨”，强调降雪的天象特点，表示空中飘飞的冰晶像白色羽绒一样。"
        case "5900001":
            ChineseDeLable.text = "甲骨文 像一种翅膀尖长 、尾巴剪形的候鸟，秋南春北。"
        case "6000001":
            ChineseDeLable.text = "甲骨文像一个弯拱上绷着的丝弦，上端有挂钩。"
        case "6100001":
            ChineseDeLable.text = "篆文（竹—竹族）（又，持握），表示手握竹枝或树枝拄地。"
//        case "6200001":
//            ChineseDeLable.text = ""
//        case "6300001":
//            ChineseDeLable.text = ""
//        case "6400001":
//            ChineseDeLable.text = ""
//        case "6500001":
//            ChineseDeLable.text = ""
//        case "6600001":
//            ChineseDeLable.text = ""
//        case "6700001":
//            ChineseDeLable.text = ""
//        case "6800001":
//            ChineseDeLable.text = ""
//        case "6900001":
//            ChineseDeLable.text = ""
//        case "7000001":
//            ChineseDeLable.text = ""
//        case "7100001":
//            ChineseDeLable.text = ""
//        case "7200001":
//            ChineseDeLable.text = ""
//        case "7300001":
//            ChineseDeLable.text = ""
//        case "7400001":
//            ChineseDeLable.text = ""
//        case "7500001":
//            ChineseDeLable.text = ""
        case "7600001":
            ChineseDeLable.text = "甲骨文（聿，手执毛笔）（分界符号），表示执笔绘图，显示地界。"
//        case "7700001":
//            ChineseDeLable.text = ""
        case "7800001":
            ChineseDeLable.text = "帅，甲骨文像一个人双手持剑。有的甲骨文省去人形。"
//        case "7900001":
//            ChineseDeLable.text = ""
        case "8000001":
            ChineseDeLable.text = "鷄，甲骨文是象形字，像头顶有冠的大型飞禽。有的甲骨文写成会义字：（奚，捆绑并戏弄）（有冠的大鸟），表示观赏性强、可驯养的大型飞禽。"
//        case "8100001":
//            ChineseDeLable.text = ""
//        case "8200001":
//            ChineseDeLable.text = ""
        case "8300001":
            ChineseDeLable.text = "虫，甲骨文像头尖身长的爬行动物，蛇。"
        case "8400001":
            ChineseDeLable.text = "柳，甲骨文（木，树）（卯，“留”的省略，积水池），表示长在池边的、喜湿的树木。"
        case "8500001":
            ChineseDeLable.text = "甲骨文像一个屈膝跪坐的人娴静地交叠着双手。有的甲骨文头部位置加一横指事符号，表示发簪。"
        case "8600001":
            ChineseDeLable.text = "甲骨文（田，田野，庄稼地）（力，体力），表示种地的劳力。"
        case "8700001":
            ChineseDeLable.text = "甲骨文像只张着嘴巴、长耳短尾的小动物"
        case "8800001":
            ChineseDeLable.text = "爿，既是声旁也是形旁，表示筑版，借代墙。倉，甲骨文（合，并）（爿，墙），表示用墙围成的建筑。有的甲骨文误将“爿”写成“户”。"
        case "8900001":
            ChineseDeLable.text = "“花”是“華”的异体字。華，甲骨文写作像一棵树上满是花枝的样子。"
        case "9000001":
            ChineseDeLable.text = "虫、它，甲骨文像头尖身长的爬行动物，即蛇。有的甲骨文将尖圆的蛇头写成棱形的。金文承续甲骨文字形。"


        default:
            print("古人象形造字，通过外观、声音等特征创造甲骨文字。")
        }
        self.view.addSubview(jgwCHineseView_bgView)
        self.view.addSubview(ChineseDeLable)
        
    }
    func jgwGridBtn_2Click(_ jgwGridBtn_2:UIButton) {
        ChineseDeTarget = TapTarget+"000"+"02"
        switch ChineseDeTarget {
        case "100002":
            ChineseDeLable.text = "金文基本承续甲骨文字形。"
        case "200002":
            ChineseDeLable.text = "金文淡化鸟喙形象。"
        case "300002":
            ChineseDeLable.text = "金文强调牲畜拉车用的轭具。"
//        case "400002":
//            ChineseDeLable.text = ""
//        case "500002":
//            ChineseDeLable.text = ""
//        case "600002":
//            ChineseDeLable.text = ""
//        case "700002":
//            ChineseDeLable.text = ""
        case "800002":
            ChineseDeLable.text = "简化了两侧的焰苗，并将火堆主焰写成“人”形"
        case "900002":
            ChineseDeLable.text = "金文简化字形。"
        case "1000002":
            ChineseDeLable.text = "金文简化火炬字形。"
        case "1100002":
            ChineseDeLable.text = "金文将三个峰头简化成三个短竖，淡化峰尖形象。"
//        case "1200002":
//            ChineseDeLable.text = ""
        case "1400002":
            ChineseDeLable.text = "金文（犮，即“跋”，拔腿奔跑）（首，顶部长有长毛的人的头部），表示人拔腿奔跑时头上飞扬的长毛。"
//        case "1500002":
//            ChineseDeLable.text = ""
        case "1600002":
            ChineseDeLable.text = "古匋金文（黑）+（土，泥），表示黑泥。"
//        case "1700002":
//            ChineseDeLable.text = ""
        case "1800002":
            ChineseDeLable.text = "金文承续甲骨文字形。有的金文在艸丛中加“早”；“早”既是声旁也是形旁，表示日照草地。"
        case "1900002":
            ChineseDeLable.text = "金文承续甲骨文字形，表示孔雀带孔眼图案的羽毛。"
        case "2000002":
            ChineseDeLable.text = "金文（目，视觉器官） （艮，回头张望），表示人类用以张望的视觉器官。"
//        case "2100002":
//            ChineseDeLable.text = ""
//        case "2200002":
//            ChineseDeLable.text = ""
//        case "2300002":
//            ChineseDeLable.text = ""
//        case "2400002":
//            ChineseDeLable.text = ""
//        case "2500002":
//            ChineseDeLable.text = ""
        case "2600002":
            ChineseDeLable.text = "当“小”的“沙粒”本义消失后，金文在细颗粒形象基础上再加“水”另造“沙”代替，表示水边的细砂。"
//        case "2700002":
//            ChineseDeLable.text = ""
//        case "2800002":
//            ChineseDeLable.text = ""
//        case "2900002":
//            ChineseDeLable.text = ""
//        case "3000002":
//            ChineseDeLable.text = ""
//        case "3100002":
//            ChineseDeLable.text = ""
//        case "3200002":
//            ChineseDeLable.text = ""
//        case "3300002":
//            ChineseDeLable.text = ""
        case "3400002":
            ChineseDeLable.text = "金文中的简体字形将金文字形中的鱼头简化成“人”形，将鱼尾简化成“人”形。"
        case "3500002":
            ChineseDeLable.text = "金文在“申”的字形基础上再加“雨”另造“電”代替，强调“电”与雨天相伴的霹雳天象特征。"
        case "3600002":
            ChineseDeLable.text = "金文突出它的利齿、爪子、长尾。"
//        case "3700002":
//            ChineseDeLable.text = ""
//        case "3800002":
//            ChineseDeLable.text = ""
        case "3900002":
            ChineseDeLable.text = "金文以“其”（既是声旁也是形旁，表示何其、多么）代“斤”，表示古人对军旗的强烈感情。"
        case "4000002":
            ChineseDeLable.text = "金文像俯视的鳖类：蛇形头部、圆形背盖、肥短四肢、短促尾巴。"
//        case "4100002":
//            ChineseDeLable.text = ""
        case "4200002":
            ChineseDeLable.text = "金文将甲骨文的“可”写成“何”，强调吆喝、叫唤。有的金文承续甲骨文字形。"
        case "4300002":
            ChineseDeLable.text = "金文的‘军’=金文的‘勻’+金文的‘車’，表示相同数量的战车。"
//        case "4400002":
//            ChineseDeLable.text = ""
//        case "4500002":
//            ChineseDeLable.text = ""
//        case "4600002":
//            ChineseDeLable.text = ""
//        case "4700002":
//            ChineseDeLable.text = ""
        case "4800002":
            ChineseDeLable.text = "金文有所变形。有的金文画出锋刃与握柄。"
//        case "4900002":
//            ChineseDeLable.text = ""
        case "5000002":
            ChineseDeLable.text = "金文（苗（齐，整齐），表示田地里整片同时成熟的串串庄稼籽实。有的金文（爪，表示抓、采摘（禾，庄稼），表示可收割的成熟庄稼。"
//        case "5100002":
//            ChineseDeLable.text = ""
        case "5200002":
            ChineseDeLable.text = "金文（雨，来自天上的水汽）（倒写的“毛”，表示植物枯败倒垂）。"
        case "5300002":
            ChineseDeLable.text = "金文（宀，房屋）（西，香袋）（火，烧香）（示，祭祀），表示古人在屋里祭祀时烧熏香产生的雾状气体。"
        case "5400002":
            ChineseDeLable.text = "金文（水）（每，母），表示海是万川之母。"
//        case "5500002":
//            ChineseDeLable.text = ""
        case "5600002":
            ChineseDeLable.text = "金文在甲骨文字形的基础上加一点指事符号，表示纹理。"
//        case "5700002":
//            ChineseDeLable.text = ""
//        case "5800002":
//            ChineseDeLable.text = ""
//        case "5900002":
//            ChineseDeLable.text = ""
//        case "6000002":
//            ChineseDeLable.text = ""
//        case "6100002":
//            ChineseDeLable.text = ""
//        case "6200002":
//            ChineseDeLable.text = ""
//        case "6300002":
//            ChineseDeLable.text = ""
//        case "6400002":
//            ChineseDeLable.text = ""
//        case "6500002":
//            ChineseDeLable.text = ""
//        case "6600002":
//            ChineseDeLable.text = ""
//        case "6700002":
//            ChineseDeLable.text = ""
//        case "6800002":
//            ChineseDeLable.text = ""
//        case "6900002":
//            ChineseDeLable.text = ""
//        case "7000002":
//            ChineseDeLable.text = ""
//        case "7100002":
//            ChineseDeLable.text = ""
//        case "7200002":
//            ChineseDeLable.text = ""
//        case "7300002":
//            ChineseDeLable.text = ""
//        case "7400002":
//            ChineseDeLable.text = ""
//        case "7500002":
//            ChineseDeLable.text = ""
        case "7600002":
            ChineseDeLable.text = "金文（聿，手执毛笔）（囗，一定地域），表示在图纸上用毛笔将某一地域一分为二。"
//        case "7700002":
//            ChineseDeLable.text = ""
        case "7800002":
            ChineseDeLable.text = "金文（双手挺剑）（巾，小旗），强调最高军官一手挺举利剑，一手执握令旗，指挥作战。"
        case "7900002":
            ChineseDeLable.text = "金文像藤茎上挂着葫芦状的果实。"
        case "8000002":
            ChineseDeLable.text = "金文突出了爪和长尾形象。"
//        case "8100002":
//            ChineseDeLable.text = ""
        case "8200002":
            ChineseDeLable.text = "城，金文（郭，环绕村邑的护墙）（成，用武力实现霸业），表示用武力保护郭墙"
        case "8300002":
            ChineseDeLable.text = "金文承续甲骨文字形。有的金文在蛇的头部加两点，表示胸前伪装两个大眼睛的眼镜蛇。"
//        case "8400002":
//            ChineseDeLable.text = ""
//        case "8500002":
//            ChineseDeLable.text = ""
//        case "8600002":
//            ChineseDeLable.text = ""
//        case "8700002":
//            ChineseDeLable.text = ""
//        case "8800002":
//            ChineseDeLable.text = ""
        case "8900002":
            ChineseDeLable.text = "金文将甲骨文的“木”写成，同时加“于”（竽），表示古人用花枝装饰欢庆的乐器。籀文像枝叶茂盛的植物有许多灿烂的亮点闪烁其间。"
        case "9000002":
            ChineseDeLable.text = "的金文将棱形的蛇头写成，并在蛇的“大腹”部位加一竖指事符号，表示蛇腹中的吞噬物，强调蛇腹神奇的弹性与消化能力，突出“蛇吞象”的特性。"


        default:
            ChineseDeLable.text = "金文承续甲骨文字形，在其基础上稍作简化"
        }
        self.view.addSubview(jgwCHineseView_bgView)
        self.view.addSubview(ChineseDeLable)
    }
    func jgwGridBtn_3Click(_ jgwGridBtn_3:UIButton) {
        ChineseDeTarget = TapTarget+"000"+"03"
        switch ChineseDeTarget {
        case "100003":
            ChineseDeLable.text = "篆文承续金文字形，并加强了叶子下垂、堆叶成簇的形象。"
        case "200003":
            ChineseDeLable.text = "篆文在金文的基础上，淡化鸟喙形象，并将飞禽的爪形简化成“匕”。"
        case "300003":
            ChineseDeLable.text = "篆文承续金文字形，在其基础上继续简化，以一轮代两轮"
        case "400003":
            ChineseDeLable.text = "篆文承续金文字形。"
        case "500003":
            ChineseDeLable.text = "篆文加强了中间的竖笔，彻底抹去牛鼻的形象，同时也淡化了牛角的形象。"
        case "600003":
            ChineseDeLable.text = "篆文变形较大，狗的形象消失。"
        case "700003":
            ChineseDeLable.text = "篆文将金文字的写成“辛”，并在兽身上加“匕”加“彡”，表示“龙”有利爪、背上长鳍。"
//        case "800003":
//            ChineseDeLable.text = ""
        case "900003":
            ChineseDeLable.text = "篆文承续金文字形。"
        case "1000003":
            ChineseDeLable.text = "篆文略有变形。"
        case "1100003":
            ChineseDeLable.text = "篆文保留中间一座峰岭的象形特征。"
        case "1200003":
            ChineseDeLable.text = "篆文突出了弯腰垂臂、脸朝黄土背朝天的劳作形象，像是双手采摘或在地里忙活。"
        case "1500003":
            ChineseDeLable.text = "（凡，即“鳳”的省略，大鹏）（云）（气），表示大鹏飞翔所依赖的空中气流。有的篆文省去“云”，并将“气”竖写成形似“川”的。有的篆文将“凡”写成，并误将三竖构成的“气”写成“虫”。"
        case "1600003":
            ChineseDeLable.text = "篆文（鸟，鸭）（我，“哦哦”叫），表示“哦哦”的鸭叫声。"
        case "1700003":
            ChineseDeLable.text = "篆文（禾，谷物）（石，钧石），表示古代谷物称重标准，一相当于一百二十斤。古籍多以“石”代替“”。"
        case "1800003":
            ChineseDeLable.text = "篆文承续甲骨文和金文字形。当“屮”成为单纯字件后，再加一个“屮”另造会义字代替，字形像两茎四叶的一株草。有的篆文承续金文字形。隶书将篆文的“艸”写成“卄”；将篆文的写成。"
        case "1900003":
            ChineseDeLable.text = "篆文误将甲骨文字形中的“丮”写成“凡”（并以“凡”为声旁），将甲骨文字形中的“隹”写成“鳥”。"
        case "2000003":
            ChineseDeLable.text = "篆文将金文字形中的写成。隶书将篆文中的“目”写成“日”，将“人”写成“匕”。"
//        case "2100003":
//            ChineseDeLable.text = ""
        case "2200003":
            ChineseDeLable.text = "篆文简化了象形特征：用两个（王）代表多排的弦枕和弦线；用（今）代表像乐器半圆体式的共鸣箱。"
        case "2300003":
            ChineseDeLable.text = "篆文（厂，石崖）（圭，高耸的岩壁）当“厓”作为单纯字件后，篆文再加“山”另造“崖”代替，强调“崖”的山体特征。"
        case "2400003":
            ChineseDeLable.text = "篆文（合，和谐）（鸟），表示合群的鸟。"
//        case "2500003":
//            ChineseDeLable.text = ""
        case "2600003":
            ChineseDeLable.text = "篆文将金文的“小”写成“少”。隶书 将篆文的“水” 写成“三点水” 。"
        case "2700003":
            ChineseDeLable.text = "篆文（厂，石崖）（圭，高耸的岩壁）当“厓”作为单纯字件后，篆文再加“山”另造“崖”代替，强调“崖”的山体特征。"
        case "2800003":
            ChineseDeLable.text = "篆文（木）（乔，高），表示高架的原木。"
        case "2900003":
            ChineseDeLable.text = "篆文（竹）（争，两手抓抢），表示手拨竹器。"
        case "3000003":
            ChineseDeLable.text = "篆文（山）（夆，即“锋”，刀尖）"
        case "3100003":
            ChineseDeLable.text = "鸭，篆文（甲，“呷呷”禽鸣）（鸟），"
//        case "3200003":
//            ChineseDeLable.text = ""
//        case "3300003":
//            ChineseDeLable.text = ""
        case "3400003":
            ChineseDeLable.text = "篆文则将鱼尾形状简成“火”形。"
        case "3500003":
            ChineseDeLable.text = "篆文误将金文字形中劈雳形象写成“申”，误将金文字形中霹雳两端的杈枝形状写成两手，导致霹雳的形象消失。"
//        case "3600003":
//            ChineseDeLable.text = ""
        case "3700003":
            ChineseDeLable.text = "篆文的‘房’=篆文的‘户’+篆文的‘方’。"
        case "3800003":
            ChineseDeLable.text = "篆文误将金文字形中穗梗中间的上下两颗粟子连写成“十”字。隶书则写成“木”加两点，穗梗上结粟子的形象完全消失。"
        case "3900003":
            ChineseDeLable.text = "篆文‘旗’误将金文‘旗’分写成和两个部分"
        case "4000003":
            ChineseDeLable.text = "篆文用篆文的‘它’代替金文字形的头部和尾部，并突出背部的甲盖"
//        case "4100003":
//            ChineseDeLable.text = ""
//        case "4200003":
//            ChineseDeLable.text = ""
//        case "4300003":
//            ChineseDeLable.text = ""
        case "4400003":
            ChineseDeLable.text = "篆文的‘猪’=篆文的‘豕’+篆文的‘者’，表示烹煮必须的肥豚的油脂。"
        case "4500003":
            ChineseDeLable.text = "篆文将籀文的“晶”省略为“日”。"
        case "4600003":
            ChineseDeLable.text = "篆文将金文字形中的圆点指事符号写成短横，并与方框连接，字形由此抽象化。"
//        case "4700003":
//            ChineseDeLable.text = ""
        case "4800003":
            ChineseDeLable.text = "篆文写成弯柄形。"
        case "4900003":
            ChineseDeLable.text = "篆文（土台）（亶，塔形谷仓）。"
//        case "5000003":
//            ChineseDeLable.text = ""
        case "5100003":
            ChineseDeLable.text = "篆文（魚）（叚，即“假”，虚伪、不真实），表示假鱼。篆文异体字“蝦”用“虫”代替“魚”，表示假虫。"
        case "5200003":
            ChineseDeLable.text = "篆文误将金文的果子形状写成“目”，误将萧蓑的植物写成“木”，使本义线索完全消失。"
        case "5300003":
            ChineseDeLable.text = "篆文误将金文的“示”写成“火”，却误将金文的“火”写成“土”，并将香袋“西”写成。有的篆文省去“宀”（房屋）。"
//        case "5400003":
//            ChineseDeLable.text = ""
        case "5500003":
            ChineseDeLable.text = "篆文（衣）（爪，代手臂）（禾，“和”的省略，表示协同），表示衣服中与双臂协和的部分。"
        case "5600003":
            ChineseDeLable.text = "篆文将金文字形中表示纹理的一点指事符号写成平行的曲形，表示肌腱纹路。"
        case "5700003":
            ChineseDeLable.text = "篆文将甲骨文的和合写成“其”。"
        case "5800003":
            ChineseDeLable.text = "篆文误将甲骨文字形中的“羽”写成帚草，并加“又”（抓），连写成“帚”"
        case "5900003":
            ChineseDeLable.text = "篆文 将鸟头和鸟喙写成，将鸟的两翼 写成。"
        case "6000003":
            ChineseDeLable.text = "篆文略有变形。"
        case "6100003":
            ChineseDeLable.text = "当“支”的“竹木枝条”本义消失后，篆文再加“木”另造“枝”代替，隶书淡去了树枝、竹枝的形象。"
        case "6200003":
            ChineseDeLable.text = ""
        case "6300003":
            ChineseDeLable.text = ""
        case "6400003":
            ChineseDeLable.text = ""
        case "6500003":
            ChineseDeLable.text = ""
        case "6600003":
            ChineseDeLable.text = ""
        case "6700003":
            ChineseDeLable.text = ""
        case "6800003":
            ChineseDeLable.text = ""
        case "6900003":
            ChineseDeLable.text = ""
        case "7000003":
            ChineseDeLable.text = ""
        case "7100003":
            ChineseDeLable.text = ""
        case "7200003":
            ChineseDeLable.text = ""
        case "7300003":
            ChineseDeLable.text = ""
        case "7400003":
            ChineseDeLable.text = ""
        case "7500003":
            ChineseDeLable.text = ""
        case "7600003":
            ChineseDeLable.text = "篆文在“田”的四周加“边界”"
        case "7700003":
            ChineseDeLable.text = "裙，篆文（君，男子尊称）（巾，布），表示古代男子遮羞的布巾。篆文异体字用“衣”（服装）代替“巾”（布），表示古代男子的下装。"
        case "7800003":
            ChineseDeLable.text = "篆文误将金文的（手挺利剑）写成（象征军权的兵符），强调军队指挥权。篆文异体字（巾，令旗）（兑，说），强调指挥命令。"
        case "7900003":
            ChineseDeLable.text = "篆文将葫芦状写成“厶”。有的篆文在葫芦和藤茎上加草“艸”另造会义字“苽”，强调“瓜”的植物属性。“蓏”的字形表示一藤挂多果。"
//        case "8000003":
//            ChineseDeLable.text = ""
        case "8100003":
            ChineseDeLable.text = "篆文（采，摘）（艸，植物），"
        case "8200003":
            ChineseDeLable.text = "篆文将金文的上下结构调整成左右结构。"
        case "8300003":
            ChineseDeLable.text = "篆文夸大蛇的头部。"
        case "8400003":
            ChineseDeLable.text = ""
        case "8500003":
            ChineseDeLable.text = ""
        case "8600003":
            ChineseDeLable.text = ""
        case "8700003":
            ChineseDeLable.text = "篆文误将甲骨文张口的形象“口”写成了“刀”，又将金文的“目”写成，兔形消失。有的篆文将石鼓文的兔尾形状写成兔足“匕”。"
        case "8800003":
            ChineseDeLable.text = ""
        case "8900003":
            ChineseDeLable.text = "篆文将金文的写成，将金文的写成。有的篆文加“艸”（草），误定了“華”的草本属性，于是“華”的含义遂发生了由“木”变“草”的大转变。"
        case "9000003":
            ChineseDeLable.text = "当“虫”和“它”的“蛇”本义被淡化后，篆文将“虫”和“它”加在一起另造“蛇”代替。"


        default:
            ChineseDeLable.text = "篆文基本承续金文字形，或在其基础上对其特点进行突出荷字形简化。"
        }
        self.view.addSubview(jgwCHineseView_bgView)
        self.view.addSubview(ChineseDeLable)
    }
    func jgwGridBtn_4Click(_ jgwGridBtn_4:UIButton) {
        ChineseDeTarget = TapTarget+"000"+"04"
        switch ChineseDeTarget {
        case "100004":
            ChineseDeLable.text = "隶书则写成了两个“个”。"
        case "200004":
            ChineseDeLable.text = "隶书变形较大，误将篆文的尾羽与鸟爪合写成“四点底”，至此，羽、爪形象尽失。"
        case "300004":
            ChineseDeLable.text = "隶书承续篆文。"
        case "400004":
            ChineseDeLable.text = "隶书承续篆文。"
        case "500004":
            ChineseDeLable.text = "隶书将篆文的一对尖角简化，使整体字形完全失去动物形象。"
        case "600004":
            ChineseDeLable.text = "隶书字形简化较大。"
        case "700004":
            ChineseDeLable.text = "隶书误将篆文的“辛”写成“立”。"
        case "800004":
            ChineseDeLable.text = "隶书承续篆文。"
        case "900004":
            ChineseDeLable.text = "隶书将篆文字形中侧视的两只马蹄与马尾写成“四点底”加折笔。"
//        case "1000004":
//            ChineseDeLable.text = ""
        case "1100004":
            ChineseDeLable.text = "隶书完全失去峰岭形象。"
        case "1200004":
            ChineseDeLable.text = "隶书变形较大，弯腰垂臂的形象完全消失。"
//        case "1400004":
//            ChineseDeLable.text = ""
        case "1600004":
            ChineseDeLable.text = "隶书误将篆文的鸟羽与鸟爪写成“四点底”。"
//        case "1700004":
//            ChineseDeLable.text = ""
//        case "1800004":
//            ChineseDeLable.text = ""
        case "1900004":
            ChineseDeLable.text = "隶书将篆文字形中的写成，将篆文字形中的写成。"
//        case "2000004":
//            ChineseDeLable.text = ""
//        case "2100004":
//            ChineseDeLable.text = ""
        case "2200004":
            ChineseDeLable.text = "隶书误将篆文半圆形的音箱与弦枕 写成“今”。"
//        case "2300004":
//            ChineseDeLable.text = ""
        case "2400004":
            ChineseDeLable.text = "隶书误将篆文的鸟羽与鸟爪写成“四点底”。"
//        case "2500004":
//            ChineseDeLable.text = ""
//        case "2600004":
//            ChineseDeLable.text = ""
//        case "2700004":
//            ChineseDeLable.text = ""
//        case "2800004":
//            ChineseDeLable.text = ""
//        case "2900004":
//            ChineseDeLable.text = ""
//        case "3000004":
//            ChineseDeLable.text = ""
//        case "3100004":
//            ChineseDeLable.text = ""
        case "3200004":
            ChineseDeLable.text = "隶书将篆文的五指形象，简化成一撇两横。"
        case "3300004":
            ChineseDeLable.text = "隶书将篆文进一步去形象化，变成了现在的‘林’"
        case "3400004":
            ChineseDeLable.text = "隶书将篆文的“火”写成“四点底”。"
        case "3500004":
            ChineseDeLable.text = "隶书将篆文字形中的“申”写成“电”。"
//        case "3600004":
//            ChineseDeLable.text = ""
//        case "3700004":
//            ChineseDeLable.text = ""
//        case "3800004":
//            ChineseDeLable.text = ""
        case "3900004":
            ChineseDeLable.text = "隶书将篆文左边部分进行了修改，形成了隶书的‘旗’"
//        case "4000004":
//            ChineseDeLable.text = ""
        case "4100004":
            ChineseDeLable.text = "隶书将“爿”写成“广”，完全变形。"
        case "4200004":
            ChineseDeLable.text = "隶书将篆文左边部分写成三点水形式"
        case "4300004":
            ChineseDeLable.text = "隶书误将篆文字形中的“勹”写成“秃宝盖”。"
        case "4400004":
            ChineseDeLable.text = "隶书将篆文字形中‘‘豕’进行了监护室，将篆文字形的右边部分写成隶书的‘者’。"
        case "4500004":
            ChineseDeLable.text = "隶书将篆文的下半部分进行了简化。"
//        case "4600004":
//            ChineseDeLable.text = ""
        case "4700004":
            ChineseDeLable.text = "隶书进一步变形，失去半圆形象。离地球最近的天体本身不发光，它通过折射太阳光在地球的夜空中“发光”。造字时代的古人误以为夜空中看到的、周期性地呈现圆缺的天体是发光体，因为月亮出现在夜晚、光线缺乏热量，古人称之为“太阴”，与出现在白天、光线充满热量的“太阳”相对。"
        case "4800004":
            ChineseDeLable.text = "隶书失去手柄形状。"
//        case "4900004":
//            ChineseDeLable.text = ""
//        case "5000004":
//            ChineseDeLable.text = ""
        case "5100004":
            ChineseDeLable.text = "隶化后楷书将篆文字形中的写成“虫”，将篆文字形中的写成“叚”。"
//        case "5200004":
//            ChineseDeLable.text = ""
//        case "5300004":
//            ChineseDeLable.text = ""
        case "5400004":
            ChineseDeLable.text = "隶书将篆文的 “水”写成“三点水”，将篆文的写成“每”。"
        case "5500004":
            ChineseDeLable.text = "隶书将篆文的“衣”写成。"
        case "5600004":
            ChineseDeLable.text = "隶书将篆文字形中的写成两个“人”的“仌”形，使“肉”的字形明显区别于“月”。"
        case "5700004":
            ChineseDeLable.text = "隶书写成左右结构。"
        case "5800004":
            ChineseDeLable.text = "隶书承续篆文字形。有的隶书省去帚草，写成了“雨”、“又”会义，“天降白羽”的隐喻线索消失。"
        case "5900004":
            ChineseDeLable.text = "隶书误将篆文的鸟尾 形象当作“火”写成“四点底” ，候鸟形象完全消失。"
//        case "6000004":
//            ChineseDeLable.text = ""
//        case "6100004":
//            ChineseDeLable.text = ""
//        case "6200004":
//            ChineseDeLable.text = ""
//        case "6300004":
//            ChineseDeLable.text = ""
//        case "6400004":
//            ChineseDeLable.text = ""
//        case "6500004":
//            ChineseDeLable.text = ""
//        case "6600004":
//            ChineseDeLable.text = ""
//        case "6700004":
//            ChineseDeLable.text = ""
//        case "6800004":
//            ChineseDeLable.text = ""
//        case "6900004":
//            ChineseDeLable.text = ""
//        case "7000004":
//            ChineseDeLable.text = ""
//        case "7100004":
//            ChineseDeLable.text = ""
//        case "7200004":
//            ChineseDeLable.text = ""
//        case "7300004":
//            ChineseDeLable.text = ""
//        case "7400004":
//            ChineseDeLable.text = ""
//        case "7500004":
//            ChineseDeLable.text = ""
//        case "7600004":
//            ChineseDeLable.text = ""
//        case "7700004":
//            ChineseDeLable.text = ""
//        case "7800004":
//            ChineseDeLable.text = ""
//        case "7900004":
//            ChineseDeLable.text = ""
//        case "8000004":
//            ChineseDeLable.text = ""
        case "8100004":
            ChineseDeLable.text = "隶书 将篆文的“艸”写成 “艹”。"
//        case "8200004":
//            ChineseDeLable.text = ""
//        case "8300004":
//            ChineseDeLable.text = ""
//        case "8400004":
//            ChineseDeLable.text = ""
        case "8500004":
            ChineseDeLable.text = "隶书严重变形，以致“人”形消失，“手”形消失。"
//        case "8600004":
//            ChineseDeLable.text = ""
//        case "8700004":
//            ChineseDeLable.text = ""
//        case "8800004":
//            ChineseDeLable.text = ""
//        case "8900004":
//            ChineseDeLable.text = ""
//        case "9000004":
//            ChineseDeLable.text = ""

        default:
            ChineseDeLable.text = "隶书承续篆文字形，或在其基础上进行字形简化。"
        }
        self.view.addSubview(jgwCHineseView_bgView)
        self.view.addSubview(ChineseDeLable)
    }
    
    
    func jgwGridBtn_5Click(_ jgwGridBtn_7:UIButton) {
        ChineseDeTarget = TapTarget+"000"+"05"
        ChineseDeLable.text = "楷体，现代汉语，从甲骨、金、篆、隶演化而来，字形简化规范，为现代汉语书写字体。"
//        switch ChineseDeTarget {
//        case "100007":
//            ChineseDeLable.text = "现代汉语。"
//        case "200007":
//            ChineseDeLable.text = "现代汉语。"
//        case "300007":
//            ChineseDeLable.text = " "
//        case "400007":
//            ChineseDeLable.text = " "
//        case "500007":
//            ChineseDeLable.text = " "
//        case "600007":
//            ChineseDeLable.text = " "
//        case "700007":
//            ChineseDeLable.text = " "
//        case "800007":
//            ChineseDeLable.text = " "
//        case "900007":
//            ChineseDeLable.text = " "
//        case "1000007":
//            ChineseDeLable.text = " "
//        case "1100007":
//            ChineseDeLable.text = " "
//        case "1200007":
//            ChineseDeLable.text = " "
//        case "1300007":
//            ChineseDeLable.text = " "
//        case "1400007":
//            ChineseDeLable.text = " "
//        case "1500007":
//            ChineseDeLable.text = " "
//        case "1600007":
//            ChineseDeLable.text = " "
//        case "1700007":
//            ChineseDeLable.text = " "
//
//        default:
//            print("NELL")
//        }
        self.view.addSubview(jgwCHineseView_bgView)
        self.view.addSubview(ChineseDeLable)
    }
       //相机&相册
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //保存到相册
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func camera(){
        let pick:UIImagePickerController = UIImagePickerController()
        pick.delegate = self
        pick.sourceType = UIImagePickerControllerSourceType.camera
        self.present(pick, animated: true, completion: nil)
    }
  
    //返回按钮
    func backBtnClick () {
        
        dismiss(animated: true, completion: nil)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ChineseDeLable.removeFromSuperview()
        jgwCHineseView_bgView.removeFromSuperview()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


