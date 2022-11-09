//
//  ViewController.swift
//  CollectionViewInTableViewCell
//
//  Created by ATTA SK on 10/08/2022.
//

import UIKit

let booksList = [
    
    BooksData(sectionType: "Religious & Spritiul", productImage: ["book1","book2","book3","book2"], productName: ["BookImg1","BookImg2","BookImg3","BookImg4"]),
    BooksData(sectionType: "Sports & Games", productImage: ["Sports1","Sport2","Sport3","Sport4","Sport6"], productName: ["BookImg1","BookImg2","BookImg3","BookImg4","Sports"]),
    BooksData(sectionType: "Foods & Racipies", productImage: ["foodb1","foodb3","Foodb2","Foodb4"], productName: ["BookImg1","BookImg2","BookImg3","BookImg4"]),
    BooksData(sectionType: "Computer & Science", productImage: ["computer1","Computer2","Computer3","Computer4"], productName: ["BookImg1","BookImg2","BookImg3","BookImg4"])

]


class ViewController: UIViewController {

    @IBOutlet weak var MyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
 
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tblcell", for: indexPath) as! TableViewCell
        cell.MyCollectionView.tag = indexPath.section
        cell.MyCollectionView.reloadData()
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return booksList.count  // It tels how many no section to b create
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return booksList[section].sectionType  //Assign names to the sections
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
}

