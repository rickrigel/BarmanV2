//
//  ItemNewViewController.swift
//  BarmanV2
//
//  Created by RICARDO SANCHEZ on 20/10/24.
//

import UIKit

class ItemNewViewController: UIViewController {
    
    @IBOutlet weak var cocktailTableView: UITableView!
    //var
    
    let dataManager = CocktailDataManager()
    var selectedCocktail : Cocktail?

    override func viewDidLoad() {
        super.viewDidLoad()
        dataManager.fetch()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ItemDetailViewController
        destination.receivedCocktail = selectedCocktail
    }
    

}

//Se crea una extensión para "arreglar" el codigo
extension ItemNewViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Nos permite seleccionar el numero de rows en una seccion
        return dataManager.countCocktails()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //El metodo toma uno de los renglones para mostrar la información de una celda
        //down (?) cast para que se comporte como un item cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        //Traemos
        let item = dataManager.getCocktail(at: indexPath.row)
        cell.cocktailName.text = item.name
        cell.cocktailImage.image = UIImage(named: item.img)
        
        //Para cambiar color de seleccion
        let selectedRowBackground = UIView()
        selectedRowBackground.backgroundColor = UIColor.lightGray
        cell.selectedBackgroundView = selectedRowBackground
        
        //Regresa una celda del tableview
        return cell
    }
    

    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

            //create container view
            let containerView = UIView()
                              
            //Create image view
            let imgHeader = UIImageView.init(image: UIImage(named: "BarmanBanner"))
            imgHeader.translatesAutoresizingMaskIntoConstraints = false
            
            // Create view for blur effect
            let bgView = UIVisualEffectView()
            bgView.translatesAutoresizingMaskIntoConstraints = false
            bgView.backgroundColor = UIColor.purple.withAlphaComponent(CGFloat(0.2))
            
            // Create blur effect
            let blurEffect = UIBlurEffect(style: .light)
            bgView.effect = blurEffect
            
            containerView.addSubview(bgView)
            containerView.addSubview(imgHeader)
//Set constraints
            containerView.heightAnchor.constraint(equalToConstant: imgHeader.frame.height).isActive = true
            imgHeader.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
            
            NSLayoutConstraint.activate(
                [
                    bgView.topAnchor.constraint(equalTo: containerView.topAnchor)
                   , bgView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
                    ,bgView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
                   , bgView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
                ]
            )
            
            return containerView

        
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("Selected row:", indexPath.row)
        selectedCocktail = dataManager.getCocktail(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: self)
        
    }
    
    
    
 
    
    
    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        let item = items[indexPath.row]
        cell.configure(with: item) // Configurar la celda con el ítem
        return cell
    }
    */
    
}

