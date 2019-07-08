//
//  ChooseViewController.swift
//  Kozub_Delegates
//
//  Created by Michael Kozub on 7/8/19.
//  Copyright © 2019 Michael Kozub. All rights reserved.
//

import UIKit

// ** This is the "boss" screen that knows what information to show on the other screen
// 1 - Create the delegate protocol
protocol superheroSelectionDelegate {
    //to conform to this protocol, you must implement the following function:
    func choiceTapped(image: UIImage, name: String, color: UIColor)
}

class ChooseViewController: UIViewController {
    
    @IBOutlet weak var batmanButton: UIButton!
    @IBOutlet weak var supermanButton: UIButton!

    // 2 - Create the delegate, or the "intern"
    var selectionDelegate: superheroSelectionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func supermanSelected(_ sender: Any) {
        // 3 - Pass in values
        selectionDelegate?.choiceTapped(image: UIImage(named: "superman-1")!, name: "Superman", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
        dismiss(animated: true, completion: nil)
    }

    @IBAction func batmanSelected(_ sender: Any) {
        // 3 - Pass in values
        selectionDelegate?.choiceTapped(image: UIImage(named: "batman-1")!, name: "Batman", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        dismiss(animated: true, completion: nil)
    }


}
