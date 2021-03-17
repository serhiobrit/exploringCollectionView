//
//  MyCollectionVC.swift
//  exploringCollectionView
//
//  Created by Serhio Brit on 16.03.2021.
//

import UIKit

//private let reuseIdentifier = "ItemCell"
private let customReuseIdentifier = "CustomItemCell"

//struct StructItem {
//    let image: String
//    let text: String
//}

struct StructCustomItem {
    let image: String
    let textOne: String
    let textTwo: String
}

//var arrayItems = [StructItem]()
var arrayCustomItems = [StructCustomItem]()

class MyCollectionVC: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: customReuseIdentifier, bundle: nil)
            collectionView.register(xib, forCellWithReuseIdentifier: customReuseIdentifier)
        
//        arrayItems.append(StructItem(image: "temp.darkYellow", text: "dark yellow color"))
//        arrayItems.append(StructItem(image: "temp.orange", text: "orange color"))
//        arrayItems.append(StructItem(image: "temp.red", text: "red color"))
        
        arrayCustomItems.append(StructCustomItem(image: "temp.darkYellow", textOne: "dark yellow color", textTwo: "item one"))
        arrayCustomItems.append(StructCustomItem(image: "temp.orange", textOne: "orange color", textTwo: "item two"))
        arrayCustomItems.append(StructCustomItem(image: "temp.red", textOne: "red color", textTwo: "item three"))
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrayCustomItems.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customReuseIdentifier, for: indexPath) as? CustomItemCell {
            cell.imageCustom.image = UIImage(named: arrayCustomItems[indexPath.row].image)
            cell.labelOneCustom.text = arrayCustomItems[indexPath.row].textOne
            cell.labelTwoCustom.text = arrayCustomItems[indexPath.row].textTwo
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    // MARK: UICollectionViewDelegate
    
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}
