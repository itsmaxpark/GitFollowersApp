//
//  ThreeColumnFlowLayout.swift
//  Github Followers
//
//  Created by Max Park on 6/15/22.
//
 
import UIKit

class ThreeColumnFlowLayout: UICollectionViewFlowLayout {
    
    init(view: UIView) {
        super.init()
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
