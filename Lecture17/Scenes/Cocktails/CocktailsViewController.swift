//
//  CocktailsViewController.swift
//  Lecture17
//
//  Created by LiziChichua on 24.12.22.
//

import UIKit

class CocktailsViewController: UIViewController {
    
    var drinksAPIManager: DrinksAPIManagerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        drinksAPIManager = DrinksAPIManager()
        
        drinksAPIManager?.fetchDrinks(with: .nonAlcoholic, completion: { result in
            switch result {
            case .success(let drinksResponse):
                print(drinksResponse.drinks)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }


}

