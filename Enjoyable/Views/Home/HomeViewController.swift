//
//  HomeViewController.swift
//  Enjoyable
//
//  Created by Otabek Tuychiev on 08/11/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Italian Dish", image: "https://media.istockphoto.com/photos/grill-steak-swordfish-served-baby-potato-and-fresh-salad-closeup-on-a-picture-id1147826557?b=1&k=20&m=1147826557&s=170667a&w=0&h=bUgZohSnRztRi-ddljXnnN_CL7ExpPmXY1G2pG_Flr0="),
        .init(id: "id1", name: "Italian Dish 2", image: "https://media.istockphoto.com/photos/grill-steak-swordfish-served-baby-potato-and-fresh-salad-closeup-on-a-picture-id1147826557?b=1&k=20&m=1147826557&s=170667a&w=0&h=bUgZohSnRztRi-ddljXnnN_CL7ExpPmXY1G2pG_Flr0="),
        .init(id: "id1", name: "Italian Dish 3", image: "https://media.istockphoto.com/photos/grill-steak-swordfish-served-baby-potato-and-fresh-salad-closeup-on-a-picture-id1147826557?b=1&k=20&m=1147826557&s=170667a&w=0&h=bUgZohSnRztRi-ddljXnnN_CL7ExpPmXY1G2pG_Flr0="),
        .init(id: "id1", name: "Italian Dish 4", image: "https://media.istockphoto.com/photos/grill-steak-swordfish-served-baby-potato-and-fresh-salad-closeup-on-a-picture-id1147826557?b=1&k=20&m=1147826557&s=170667a&w=0&h=bUgZohSnRztRi-ddljXnnN_CL7ExpPmXY1G2pG_Flr0="),
        .init(id: "id1", name: "Italian Dish 5", image: "https://media.istockphoto.com/photos/grill-steak-swordfish-served-baby-potato-and-fresh-salad-closeup-on-a-picture-id1147826557?b=1&k=20&m=1147826557&s=170667a&w=0&h=bUgZohSnRztRi-ddljXnnN_CL7ExpPmXY1G2pG_Flr0=")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        registerCells()
    }

   
    // MARK: - Actions
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        
        cell.setUp(category: categories[indexPath.row])
        
        return cell
    }
    
    
}
