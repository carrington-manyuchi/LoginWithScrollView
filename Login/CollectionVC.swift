//
//  ViewController.swift
//  Login
//
//  Created by DA MAC M1 157 on 2023/08/29.
//

import UIKit

class CollectionVC: UIViewController {
    
    private let homeCollectionView: UICollectionView = {
        let collectionView = UICollectionView()
        return collectionView
    }() 

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        self.view.backgroundColor = .systemMint
        
    }


}

