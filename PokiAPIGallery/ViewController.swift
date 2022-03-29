//
//  ViewController.swift
//  PokiAPIGallery
//
//  Created by Cambrian on 2022-03-21.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var gallertCollectionView: UICollectionView!
    var pokemanImages = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PokeAPIHelper.fetchAllImages { images in
            self.pokemanImages = images
            self.gallertCollectionView.reloadData()
        }
    }

}


extension ViewController:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemanImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let galleryImageView = (cell.viewWithTag(10) as! UIImageView)
        galleryImageView.image = self.pokemanImages[indexPath.item]
        
        return cell
    }
    
}
