//
//  ItemDetailViewController.swift
//  BarmanV2
//
//  Created by RICARDO SANCHEZ on 20/10/24.
//

import UIKit

class ItemDetailViewController: UIViewController {
    var receivedCocktail : Cocktail?
    
    @IBOutlet weak var DirCocktailDetail: UILabel!
    @IBOutlet weak var IngCocktailDetail: UILabel!
    @IBOutlet weak var NameCocktailDetail: UILabel!
    @IBOutlet weak var ImagenCocktailDetail: UIImageView!
    @IBAction func cerrarViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameCocktailDetail.text = receivedCocktail?.name
        DirCocktailDetail.text = receivedCocktail?.directions
        IngCocktailDetail.text = receivedCocktail?.ingredients
        ImagenCocktailDetail.image = UIImage(named: receivedCocktail!.img)
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
