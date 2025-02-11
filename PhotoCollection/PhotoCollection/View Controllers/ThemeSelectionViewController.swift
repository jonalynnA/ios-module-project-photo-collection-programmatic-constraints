//
//  ThemeSelectionViewController.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    private var themeLabel: UILabel!
    private var darkModeButton: UIButton!
    private var blueModeButton: UIButton!
    
    override func viewDidLoad() {
        setUpSubviews()
        
    }

    @ objc func selectDarkTheme() {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @objc func selectBlueTheme() {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    var themeHelper: ThemeHelper?
    
    func setUpSubviews() {
        
        // Add label
        let label = UILabel()
        label.text = "Select the theme you would like to use: "
        label.textAlignment = .center
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: label,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: view.safeAreaLayoutGuide,
                               attribute: .top,
                               multiplier: 1,
                               constant: 20),
            NSLayoutConstraint(item: label,
                               attribute: .leading,
                               relatedBy: .equal,
                               toItem: view.safeAreaLayoutGuide,
                               attribute: .leading,
                               multiplier: 1,
                               constant: 40),
            NSLayoutConstraint(item: label,
                               attribute: .trailing,
                               relatedBy: .equal,
                               toItem: view.safeAreaLayoutGuide,
                               attribute: .trailing,
                               multiplier: 1,
                               constant: -40)])
        self.themeLabel = label
        
        // Add Dark theme button
        let darkButton = UIButton(type: .system)
        darkButton.setTitle("Dark Theme", for: .normal)
        darkButton.addTarget(self, action: #selector(selectDarkTheme), for: .touchUpInside)
        darkButton.tintColor = UIColor.white
        darkButton.backgroundColor = UIColor.black
        darkButton.layer.cornerRadius = 8
        darkButton.layer.borderWidth = 2
        darkButton.layer.borderColor = UIColor.black.cgColor
        darkButton.contentEdgeInsets = .init(top: 10, left: 20, bottom: 10, right: 20)
        view.addSubview(darkButton)
        darkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let darkButtonTopConstraint = NSLayoutConstraint(item: darkButton,
                                                         attribute: .top,
                                                         relatedBy: .equal,
                                                         toItem: label,
                                                         attribute: .bottom,
                                                         multiplier: 1,
                                                         constant: 8)
        let darkButtonLeadingConstraint = NSLayoutConstraint(item: darkButton,
                                                             attribute: .leading,
                                                             relatedBy: .equal,
                                                             toItem: view.safeAreaLayoutGuide,
                                                             attribute: .leading,
                                                             multiplier: 1,
                                                             constant: 50)
        
        NSLayoutConstraint.activate([darkButtonTopConstraint, darkButtonLeadingConstraint])
        
        // Add blue button
        let blueButton = UIButton(type: .system)
         blueButton.setTitle("Blue Theme", for: .normal)
         blueButton.addTarget(self, action: #selector(selectBlueTheme), for: .touchUpInside)
             blueButton.tintColor = UIColor.white
             blueButton.backgroundColor = UIColor(red: 61/255, green: 172/255, blue: 247/255, alpha: 1)
             blueButton.layer.cornerRadius = 8
             blueButton.layer.borderWidth = 2
             blueButton.layer.borderColor = UIColor.black.cgColor
             blueButton.contentEdgeInsets = .init(top: 10, left: 20, bottom: 10, right: 20)
         
         view.addSubview(blueButton)
         blueButton.translatesAutoresizingMaskIntoConstraints = false
         
         let blueButtonTopConstraint = NSLayoutConstraint(item: blueButton,
                                                          attribute: .top,
                                                          relatedBy: .equal,
                                                          toItem: label,
                                                          attribute: .bottom,
                                                          multiplier: 1,
                                                          constant: 8)
         let blueButtonTrailingConstraint = NSLayoutConstraint(item: blueButton,
                                                              attribute: .trailing,
                                                              relatedBy: .equal,
                                                              toItem: view.safeAreaLayoutGuide,
                                                              attribute: .trailing,
                                                              multiplier: 1,
                                                              constant: -50)
         
         NSLayoutConstraint.activate([blueButtonTopConstraint, blueButtonTrailingConstraint])
        
    }
}
