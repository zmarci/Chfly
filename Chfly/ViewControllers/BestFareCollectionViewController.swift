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
    
    var fareCellId = "FareCellCollectionViewCell"
    
    var emptyCellId = "emptyCell"
    
    var faresFetchedArray: [(String, String, UIImage?)] = []
    
    //MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: IBActions
    
    //MARK: Life-cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setupView()
        setupDelegation()
        fetchFares()
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
    
    func fetchFares()
    {
        faresFetchedArray = [("Budapest", "15.60", UIImage(named: "Budapest")), ("Amsterdam", "6", UIImage(named: "Amsterdam"))]
    }
}

    // MARK: Extensions

    // MARK: UICollectionViewDelegate

extension BestFareCollectionViewController: UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        //
    }
    
}

    // MARK: UICollectionViewDataSource

extension BestFareCollectionViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return faresFetchedArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: fareCellId, for: indexPath) as? FareCellCollectionViewCell else
        {
            return collectionView.dequeueReusableCell(withReuseIdentifier: emptyCellId, for: indexPath)
        }
        
        let currentFare = faresFetchedArray[indexPath.row]
        
        cell.setupCell(withCurrentFare: currentFare)
        
        return cell
        
    }
}
