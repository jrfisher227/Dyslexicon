//
//  CollectionViewTableViewCell.swift
//  Dyslexicon
//
//  Created by John R Fisher on 1/25/17.
//  Copyright © 2017 John R Fisher. All rights reserved.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
    
    
     @IBOutlet private weak var collectionView: UICollectionView!

    func setCollectionViewDataSourceDelegate
        <D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>
        (dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
    
}
