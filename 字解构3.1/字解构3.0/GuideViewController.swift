//
//  GuideViewController.swift
//  Guide
//
//  Created by Felix on 2017/9/21.
//  Copyright © 2017年 Felix. All rights reserved.
//

import UIKit

private let minX = 0
private let minY = 0
class GuideViewController: UIViewController,UIScrollViewDelegate {
    
    var scrollView:UIScrollView!
    var pageControl:UIPageControl!
    var startBtn:UIButton!
    var imageView:UIImageView!
    var startClosure:(() -> Void)?
    let x = CGFloat(Float(minX))
    let y = CGFloat(Float(minY))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    
    func setupUI(){
        let imageArr = ["guidance_1","guidance_2","guidance_3"]
        if scrollView == nil {
            self.scrollView = UIScrollView(frame: CGRect(x: x, y: y, width: deviceWidth, height: deviceHeight))
            self.scrollView.isPagingEnabled = true
            self.scrollView.showsVerticalScrollIndicator = false
            self.scrollView.showsHorizontalScrollIndicator = false
            self.scrollView.delegate = self
            self.view.addSubview(scrollView)
            //设置滑动视图的宽度
            self.scrollView.contentSize = CGSize(width:deviceWidth*CGFloat(Float(imageArr.count)),height:deviceHeight)
            for i in 0 ..< imageArr.count {
                imageView = UIImageView(frame: CGRect(x:CGFloat(i)*deviceWidth, y: 0, width: deviceWidth, height: deviceHeight))
                
                imageView.image = UIImage(named: imageArr[i])
                self.scrollView.addSubview(imageView)
                
                //在最后一页显示开始按钮
                if i == imageArr.count - 1 {
                    imageView.isUserInteractionEnabled = true
                    //设置开始体验按钮
                    startBtn = UIButton(type:UIButtonType.custom)
                    startBtn.frame = CGRect(x: (deviceWidth-120)/2, y: deviceHeight - 105, width: 137, height: 45)
                    startBtn.setTitle("", for: UIControlState.normal)
                startBtn.setBackgroundImage(UIImage(named:"start"),for:UIControlState())
                    startBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
                    startBtn.layer.cornerRadius = 5
                    startBtn.layer.masksToBounds = true
                    startBtn.alpha = 0
                    imageView.addSubview(startBtn)
                    startBtn.addTarget(self, action: #selector(GuideViewController.startInto(_:)), for: UIControlEvents.touchUpInside)
                }
                
            }
        }
        if self.pageControl == nil {
            
            self.pageControl = UIPageControl(frame:CGRect(x: (deviceWidth-150)/2, y: deviceHeight-45 , width:150 , height: 30))
            self.pageControl.numberOfPages = imageArr.count
            self.pageControl.pageIndicatorTintColor = UIColor.white
            self.pageControl.currentPageIndicatorTintColor = UIColor.orange
            self.view.addSubview(pageControl)
            
        }
        
    }
    
    func startInto(_ sender:UIButton){
        startClosure!()
        //print("按钮被点击了")
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x / deviceWidth)
        self.pageControl.currentPage = index
        print(index)
        if index == 2 {
            UIView.animate(withDuration: 0.5, delay: 0, animations: {() -> Void in
                self.pageControl.alpha = 0
            }, completion: {(finished) in
                UIView.animate(withDuration: 0.5, animations: {() -> Void in
                    self.startBtn.alpha = 0.8
                })
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
