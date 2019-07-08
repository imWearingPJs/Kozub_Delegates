//
//  MainViewController.swift
//  Kozub_Delegates
//
//  Created by Michael Kozub on 7/8/19.
//  Copyright © 2019 Michael Kozub. All rights reserved.
//

import UIKit

// 4 - 
class MainViewController: UIViewController, superheroSelectionDelegate {

    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseButtonTapped(_ sender: Any) {
        let chooseVC = storyboard?.instantiateViewController(withIdentifier: "ChooseViewController") as! ChooseViewController
        // 5 - self is the MainViewController screen, basically saying "Hey I want to be the intern"
        chooseVC.selectionDelegate = self
        present(chooseVC, animated: true, completion: nil)
    }

    // 6 - When choiceTapped is called on ChooseViewController, this function gets called!
    func choiceTapped(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        view.backgroundColor = color
    }

}
