//
//  GridCollectionViewCell.swift
//  De-Chinese01
//
//  Created by jessicafu on 2017/2/12.
//  Copyright © 2017年 jessicafu. All rights reserved.
//

import UIKit

class GridCollectionViewCell: UICollectionViewCell {
    
    var GridChineseImgV:UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.createGridChineseImgV()
        
    }
    
    public func createGridChineseImgV() -> Void {
        GridChineseImgV = UIImageView.init(frame:CGRect.init(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        self.addSubview(GridChineseImgV!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
