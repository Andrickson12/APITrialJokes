//
//  ViewController.swift
//  APITrialJokes
//
//  Created by Andrickson Coste on 11/10/20.
//  Copyright © 2020 Qalab Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var jokeTextView: UITextView!
    @IBOutlet weak var punchLineLbl: UILabel!
    @IBOutlet weak var jokeBtnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        jokeBtnOutlet.layer.cornerRadius = 30.0
        
    }
    
    func fetchData() {
        let urlString = "https://official-joke-api.appspot.com/random_joke"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, res, error) in
            do {
                let todoDetails = try JSONDecoder().decode(Todo.self, from: data!)
                DispatchQueue.main.async {
                    self.jokeTextView.text = todoDetails.setup
                    self.punchLineLbl.text = todoDetails.punchline
                }
            }catch{}
        }.resume()
    }
    
    @IBAction func tellJokeBtn(_ sender: UIButton) {
        fetchData()
    }
    
}

