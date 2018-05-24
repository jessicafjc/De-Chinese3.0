//
//  HomeViewController.swift
//  SwiftSideslipLikeQQ
//
//  Created by JohnLui on 15/4/10.
//  Copyright (c) 2015年 com.lvwenhan. All rights reserved.
//

import UIKit
var MainChineseView:UIView = UIView()

// 主页
class HomeViewController: UIViewController,UICollectionViewDelegate , UICollectionViewDataSource  {
    var collectionView:UICollectionView!
    var layout:UICollectionViewFlowLayout!
    var dataArr:NSMutableArray = NSMutableArray.init()
    
    var titleOfOtherPages = ""
    var tableCell : Int!
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        MainChineseView = getView(self.view)
        
        //self.navigationItem.title = "字解构"
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
        //self.view.backgroundColor = UIColor(colorLiteralRed: 190/255, green: 169/255, blue: 131/255, alpha: 0.0)
        let BgimgView = UIImageView(frame: CGRect(x: 0, y: 0, width: deviceWidth, height: deviceHeight))
        BgimgView.image = UIImage(named: "HomeBgImg")
        self.view.addSubview(BgimgView)
        
        self.initData()
        self.createCollectionView()
        
        
    }
    //
    func getView(_ view:UIView) -> UIView {
        let view1 = view
        return view1
    }
    
    func initData() -> Void {
        //共有89个字块
        for i in 0...89 {
            let str = NSString.init(string: "\(i+1)")
            dataArr.add(str)
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
//        let supplementLabel = UILabel(frame: CGRect(x: 0, y: GridW*30+7, width: deviceWidth, height: 40))
//        supplementLabel.textColor = UIColor(red: 245, green: 245, blue: 245, alpha: 0.8)
//        supplementLabel.text = "其余汉字还在努力整理中，敬请期待哟~"
//        supplementLabel.textAlignment = NSTextAlignment.center
//        self.collectionView.addSubview(supplementLabel)
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
        
        
        
        let ChineseDeVC = ChineseDeViewController()
        
        //nextVC.GridChineseGif.image = UIImage.init(named: dataArr[indexPath.row] as! String)
        ChineseDeVC.gifView.gifName = dataArr[indexPath.row] as! String
        ChineseDeVC.TapTarget = dataArr[indexPath.row] as! String
        self.present(ChineseDeVC, animated: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showOtherPages" {
            if let a = segue.destination as? OtherPageViewController {
                a.PageTitle = titleOfOtherPages
                a.tableCell = tableCell
            }
        }
    }
    
    
}
