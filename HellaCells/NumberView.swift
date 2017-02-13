//
//  NumberView.swift
//  HellaCells
//
//  Created by Alessandro Musto on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class NumberView: UIViewController {

  @IBOutlet weak var numberLabel: UILabel!

  var number : Int = 0

  
    override func viewDidLoad() {
        super.viewDidLoad()

      numberLabel.text = String(number)
      navigationItem.title = String(number)
      //self.navigationController?.navigationItem.title =

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
