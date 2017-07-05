//
//  FareCellCollectionViewCell.swift
//  Chfly
//
//  Created by Marton Zatrok on 2017. 07. 05..
//  Copyright © 2017. Marton Zatrok. All rights reserved.
//

import UIKit

class FareCellCollectionViewCell: UICollectionViewCell
{
    //MARK: Variables
    
    //MARK: IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var overlayView: UIView!
    
    //MARK: IBActions
    
    //MARK: Life-cycle
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        setupView()
    }
    
    override func prepareForReuse()
    {
        super.prepareForReuse()
        
        setupView()
    }
    
    //MARK: Functions
    
    func setupView()
    {
        overlayView.isHidden = true
    }
    
    func setupCell(withCurrentFare currentFare: (String,String, UIImage?))
    {
        titleLabel.text = currentFare.0
        
        subtitleLabel.text = currentFare.1
        
        if let backgroundImage = currentFare.2
        {
            backgroundImageView.image = backgroundImage
            
            titleLabel.textColor = UIColor.white
            
            subtitleLabel.textColor = UIColor.white
            
            overlayView.isHidden = false
        }
        backgroundImageView.contentMode = .scaleAspectFill
    }
}
