//
//  File.swift
//  Emages01
//
//  Created by jessicafu on 2016/12/26.
//  Copyright © 2016年 jessicafu. All rights reserved.
//

import UIKit

var deviceWidth = UIScreen.main.bounds.width  //获取屏幕尺寸
var deviceHeight = UIScreen.main.bounds.height
var StartBtnW = 214/376*deviceWidth     //startBtn宽&高
var StartBtnH = 55/214*StartBtnW
//背景图片
var ChineseDeBgImgeView = UIImageView(frame: CGRect(x: 0, y:0, width: deviceWidth, height: deviceHeight))
var GridW = deviceWidth/4       //米字格宽&高
var GridH = GridW
/////
var GifW = 164/375 * deviceWidth //GIF汉字View大小
var GifH = GifW
 //gifView.frame = CGRect(x: deviceWidth/2, y: 64+20, width: GifW, height: GifH)
var pinyinLable = UILabel(frame: CGRect(x: deviceWidth/2-120, y: 40+GifH-100, width: 100, height: 40))
var englishLable = UILabel(frame: CGRect(x: deviceWidth/2-170, y: pinyinLable.frame.origin.y+pinyinLable.frame.height+20, width: 150, height: 40))
var engParaphrasingLable = UILabel(frame: CGRect(x: 52, y: englishLable.frame.origin.y+englishLable.frame.height+20, width: deviceWidth-104, height: deviceHeight/2 - 20 - 64 - 80))
//甲骨文横幅列表
var jgwCHineseView = UIView(frame: CGRect(x: 20, y: engParaphrasingLable.frame.origin.y+engParaphrasingLable.frame.height+20, width: deviceWidth-40, height: (deviceWidth-40)/5))
var jgwW = jgwCHineseView.frame.width / 5
var jgwH = jgwCHineseView.frame.width/5-8
var jgwImgW = jgwW-5
//甲骨文字按钮

var jgwGridBtn_1 = UIButton(frame: CGRect(x: 20, y: jgwCHineseView.frame.origin.y+4, width: jgwImgW, height: jgwH))
var jgwGridBtn_2 = UIButton(frame: CGRect(x: 20+jgwW, y: jgwGridBtn_1.frame.origin.y, width: jgwImgW, height: jgwH))
var jgwGridBtn_3 = UIButton(frame: CGRect(x: 20+jgwW*2, y: jgwGridBtn_1.frame.origin.y, width: jgwImgW, height: jgwH))
var jgwGridBtn_4 = UIButton(frame: CGRect(x: 20+jgwW*3, y: jgwGridBtn_1.frame.origin.y, width: jgwImgW, height: jgwH))
var jgwGridBtn_5 = UIButton(frame: CGRect(x: 20+jgwW*4, y: jgwGridBtn_1.frame.origin.y, width: jgwImgW, height: jgwH))
///
//var jgwGridBtnArr = [jgwGridBtn_1,jgwGridBtn_2,jgwGridBtn_3,jgwGridBtn_4,jgwGridBtn_5]
//

var ChineseDeLable = UILabel(frame: CGRect(x: 52, y: jgwGridBtn_1.frame.origin.y+10+jgwH, width: deviceWidth-104, height: deviceHeight-jgwGridBtn_1.frame.origin.y-20-jgwH-20))
var jgwCHineseView_bgView = UIImageView(image:UIImage(named:"jgwCHineseView_bg"))
var leftcomma = UIImageView(frame: CGRect(x: 20, y:englishLable.frame.origin.y+englishLable.frame.height, width: 32, height: 27 ))
var rightcomma = UIImageView(frame: CGRect(x: deviceWidth-20-32, y:leftcomma.frame.origin.y+engParaphrasingLable.frame.height, width: 32, height: 27))







