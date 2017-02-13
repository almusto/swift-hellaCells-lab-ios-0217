//
//  NumberView.swift
//  HellaCells
//
//  Created by Alessandro Musto on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {


  @IBOutlet weak var numberChosenLabel: UILabel!
  var number: String!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavBar()
    setupLabel()
  }

  func setupLabel() {
    numberChosenLabel.text = number
  }

  func setupNavBar() {
    navigationItem.title = number
  }
}
