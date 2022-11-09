//
//  TableViewCell.swift
//  CollectionViewInTableViewCell
//
//  Created by ATTA SK on 11/08/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        MyCollectionView.delegate = self
        MyCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ CollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return booksList[MyCollectionView.tag].productImage.count
    }
    
    func collectionView(_ CollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "Collectioncell", for: indexPath) as! CollectionViewCell
        
        cell.Imag.image = UIImage(named: booksList[MyCollectionView.tag].productImage[indexPath.row])
        
        cell.Lbl1.text = booksList[MyCollectionView.tag].productName[indexPath.row]
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You have clicked on Book \(booksList[MyCollectionView.tag].productName[indexPath.row])")
    }
}
