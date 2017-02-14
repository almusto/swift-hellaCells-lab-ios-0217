//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Alessandro Musto on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit


class HellaMasterTableViewController : UITableViewController {


  var numbers : [Int] = []


  override func viewDidLoad() {
    super.viewDidLoad()
    getNumbers()

    // Do any additional setup after loading the view.
  }





  func getNumbers() {
    for i in 1...100 {
      numbers.append(i)
    }
  }

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numbers.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell", for: indexPath)
    let number = numbers[indexPath.row]
    cell.textLabel?.text = String(number)
    return cell
  }

  //  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  //    if segue.identifier != "NumberViewDetail" { return }
  //    if let dest = segue.destination as? NumberView,
  //      let indexPath = tableView.indexPathForSelectedRow {
  //      dest.number = numbers[indexPath.row]
  //    }
  //  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let numberVC = NumberViewController()
    let number = String(numbers[indexPath.item])
    numberVC.navigationItem.title = number
    numberVC.numberLabel.text = number
    navigationController?.pushViewController(numberVC, animated: true)

  }
  
  
  
  
}
