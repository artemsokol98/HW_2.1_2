//
//  ViewController.swift
//  HW_2.1_2
//
//  Created by Артем Соколовский on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var changeColorButton: UIButton!
    
    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGreen: UIView!
    
    // MARK: - Public Properties
    var color: Int = 0
    let faintAlpha: CGFloat = 0.3
    let brightAlpha: CGFloat = 1.0
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewRed.layer.cornerRadius = viewRed.frame.height/2
        viewYellow.layer.cornerRadius = viewYellow.frame.height/2
        viewGreen.layer.cornerRadius = viewGreen.frame.height/2
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//    } хотел применить эту функцию для скругления, но не понял как :(

    // MARK: - IB Actions
    @IBAction func changeColorButton(_ sender: UIButton) {
        changeColorButton.setTitle("Next", for: .normal)
        viewRed.alpha = faintAlpha
        viewYellow.alpha = faintAlpha
        viewGreen.alpha = faintAlpha
        color += 1
        
        switch color {
        case 1:
            viewRed.alpha = brightAlpha
        case 2:
            viewYellow.alpha = brightAlpha
        case 3:
            viewGreen.alpha = brightAlpha
        default:
            print("error")
        }
        
        if color == 3 {
            color = 0
        }
    }
    
    
}

