//
//  BestFareCollectionViewController.swift
//  Chfly
//
//  Created by Marton Zatrok on 04/07/17.
//  Copyright © 2017 Marton Zatrok. All rights reserved.
//

import UIKit

class BestFareCollectionViewController: UIViewController
{
    //MARK: Variables
    
    //MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: IBActions
    
    //MARK: Life-cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setupView()
        setupDelegation()
    }
    
    //MARK: Functions
    
    func setupView()
    {
        //
    }
    
    func setupDelegation()
    {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
