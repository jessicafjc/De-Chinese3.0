//
//  OtherPageViewController.swift
//  SwiftSideslipLikeQQ
//
//  Created by JohnLui on 15/4/12.
//  Copyright (c) 2015年 com.lvwenhan. All rights reserved.
//

import UIKit

// 点击侧滑菜单中的条目，主页跳转到的 View Controller
class OtherPageViewController: UIViewController,UICollectionViewDelegate , UICollectionViewDataSource {
    /////
    var collectionView:UICollectionView!
    var layout:UICollectionViewFlowLayout!
    var dataArr:NSMutableArray = NSMutableArray.init()
    
    var PageTitle: String! // 从 HomeViewController 传递过来的值
    var tableCell : Int! //获取点击的行数
    
    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //////
        //print(tableCell)
        let BgimgView = UIImageView(frame: CGRect(x: 0, y: 0, width: deviceWidth, height: deviceHeight))
        BgimgView.image = UIImage(named: "HomeBgImg")
        self.view.addSubview(BgimgView)
        
        /////
        self.initData()
        self.createCollectionView()

/////
        self.title = PageTitle
        mainLabel.text = PageTitle
        
        // 自定义返回按钮
        let backButton = UIBarButtonItem(title: "く返回", style: UIBarButtonItemStyle.plain, target: self, action: #selector(OtherPageViewController.goBack))
        self.navigationItem.leftBarButtonItem = backButton
        
        // 弥补因为返回按钮被替换导致的边缘滑入手势失效的问题
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(OtherPageViewController.goBack))
        self.view.addGestureRecognizer(gesture)
    }
    ///////
    func getView(_ view:UIView) -> UIView {
        let view1 = view
        return view1
    }
    
    func initData() -> Void {
        switch tableCell {
        case 0:
            var sphericalArr = [46,47,45,15,4,13,35,52,58,67]
            for i in 0...Int(sphericalArr.count-1) {
                let str = NSString.init(string: "\(sphericalArr[i])")
                dataArr.add(str)
            }
        case 1:
            var geographyArr = [17,11,23,30,63,82,25,49,42,54,64,68,8,26,53]
            for i in 0...Int(geographyArr.count-1) {
                let str = NSString.init(string: "\(geographyArr[i])")
                dataArr.add(str)
            }
        case 2:
            var plantArr = [18,27,62,65,74,79,81,89,61,33,28,84,57,69,1,29,50,38]
            for i in 0...Int(plantArr.count-1) {
                let str = NSString.init(string: "\(plantArr[i])")
                dataArr.add(str)
            }
        case 3:
            var animalArr = [2,19,24,59,80,31,16,10,5,9,44,70,34,51,87,83,90,36,66,40,73]
            for i in 0...Int(animalArr.count-1) {
                let str = NSString.init(string: "\(animalArr[i])")
                dataArr.add(str)
            }
        case 4:
            var personArr = [12,20,32,76,56,14,85,86]
            for i in 0...Int(personArr.count-1) {
                let str = NSString.init(string: "\(personArr[i])")
                dataArr.add(str)
            }
        case 5:
            var constructionArr = [21,41,31,75,88,37]
            for i in 0...Int(constructionArr.count-1) {
                let str = NSString.init(string: "\(constructionArr[i])")
                dataArr.add(str)
            }
        case 6:
            var clothesArr = [22,72,77,55]
            for i in 0...Int(clothesArr.count-1) {
                let str = NSString.init(string: "\(clothesArr[i])")
                dataArr.add(str)
            }
        case 7:
            var weaponArr = [48,60,43,39,78]
            for i in 0...Int(weaponArr.count-1) {
                let str = NSString.init(string: "\(weaponArr[i])")
                dataArr.add(str)
            }

        default:
            for i in 0...93 {
                let str = NSString.init(string: "\(i+1)")
                dataArr.add(str)
            }
        }
        
    }
    func createCollectionView() -> Void {
        
        layout = UICollectionViewFlowLayout.init()//初始化UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10//垂直最小距离
        layout.minimumInteritemSpacing = 10//水平最小距离
        layout.itemSize = CGSize.init(width: GridW, height:GridH)//item的大小
        
        //滚动消失边界
        collectionView = UICollectionView.init(frame: CGRect.init(x: 30, y: 40+60, width: deviceWidth-60, height: deviceHeight-64-64), collectionViewLayout: layout)//初始化UICollectionView
        collectionView.backgroundColor = UIColor(colorLiteralRed: 190/255, green: 169/255, blue: 131/255, alpha: 0.0)//背景色
        collectionView.showsVerticalScrollIndicator = false//去除垂直滚动条
        collectionView.showsHorizontalScrollIndicator = false//去除水平滚动条
        collectionView.dataSource = self//代理方法
        collectionView.delegate = self
        self.view.addSubview(collectionView)//添加主视图
        collectionView.register(GridCollectionViewCell.classForCoder() ,forCellWithReuseIdentifier: "cellID")//注册cell
        let topjuanzhou = UIImageView(frame: CGRect(x: 0, y: 56, width: deviceWidth, height: 64))
        topjuanzhou.image = UIImage(named: "topjuanzhou")
        self.view.addSubview(topjuanzhou)
        
        let bottomjuanzhou = UIImageView(frame: CGRect(x: 0, y: deviceHeight-64, width: deviceWidth, height: 64))
        bottomjuanzhou.image = UIImage(named: "bottomjuanzhou")
        self.view.addSubview(bottomjuanzhou)
        
    }
    //组数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //行数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! GridCollectionViewCell
        cell.GridChineseImgV?.image = UIImage.init(named:dataArr[indexPath.row] as! String)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var ChineseDeVC = ChineseDeViewController()

        switch tableCell {
        case 0:
            var ChineseDeVC = ChineseDe_SKY_ViewController()
            ChineseDeVC.gifView.gifName = dataArr[indexPath.row] as! String
            ChineseDeVC.TapTarget = dataArr[indexPath.row] as! String
            self.present(ChineseDeVC, animated: true)
        default:
            var ChineseDeVC = ChineseDeViewController()

            ChineseDeVC.gifView.gifName = dataArr[indexPath.row] as! String
            ChineseDeVC.TapTarget = dataArr[indexPath.row] as! String
            self.present(ChineseDeVC, animated: true)
        }
        
        
        
   
        
    }
///////////

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goBack() {
        _ = self.navigationController?.popViewController(animated: true)
        //Common.rootViewController.mainTabBarController.tabBar.isHidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
