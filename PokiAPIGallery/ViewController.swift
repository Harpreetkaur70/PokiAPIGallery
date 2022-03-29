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


