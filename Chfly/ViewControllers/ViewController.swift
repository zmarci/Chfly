//
//  ViewController.swift
//  Chfly
//
//  Created by Marton Zatrok on 03/07/17.
//  Copyright © 2017 Marton Zatrok. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //MARK: Variables
    
    fileprivate let showBestFaresSegue = "showBestFaresSegue"
    
    //MARK: IBOutlets
    
    //MARK: IBActions
    
    @IBAction func bottomButtonClicked(_ sender: Any)
    {
        performSegue(withIdentifier: showBestFaresSegue, sender: self)
    }
    
    //MARK: Life-cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setupView()
    }
    
    //MARK: Functions

    func setupView()
    {
        //
    }
    
    
    
}

