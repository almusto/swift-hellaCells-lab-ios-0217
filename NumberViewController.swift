//
//  NumberViewController.swift
//  HellaCells
//
//  Created by Alessandro Musto on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {

  var numberLabel : UILabel = UILabel()



    override func viewDidLoad() {
        super.viewDidLoad()
      view = UIView()
      view.backgroundColor = UIColor.white
      view.addSubview(numberLabel)
      numberLabel.translatesAutoresizingMaskIntoConstraints = false
      numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 30)
      setLayoutConstraints()

        // Do any additional setup after loading the view.
    }

  override func viewWillLayoutSubviews() {
    view.frame = self.view.bounds
  }

  func setLayoutConstraints() {
    let labelCenterX = NSLayoutConstraint(item: numberLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
    view.addConstraint(labelCenterX)

    let labelCenterY = NSLayoutConstraint(item: numberLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0)
    view.addConstraint(labelCenterY)


  }



}
