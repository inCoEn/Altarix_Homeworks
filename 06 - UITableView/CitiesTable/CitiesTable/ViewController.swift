//
//  ViewController.swift
//  CitiesTable
//
//  Created by Admin on 07/12/2019.
//  Copyright © 2019 Eugene Palagin. All rights reserved.
//

import UIKit

struct City {
    
    var name: String
    var population: Int
    var foundationYear: Int
    var area: Double
    
    init(cityName: String, cityArea: Double, cityPopulation: Int, cityFoundation: Int) {
        
        name = cityName
        population = cityPopulation
        foundationYear = cityFoundation
        area = cityArea
        
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var citiesTable: UITableView!
    
    let contentDataArray: Array<City> = [City(cityName: "Самара", cityArea: 541.4, cityPopulation: 1156644, cityFoundation: 1586), City(cityName: "Жигулевск", cityArea: 60.8, cityPopulation: 54343, cityFoundation: 1949), City(cityName: "Новокуйбышевск", cityArea: 86, cityPopulation: 102933, cityFoundation: 1946), City(cityName: "Отрадный", cityArea: 53.6, cityPopulation: 47542, cityFoundation: 1946), City(cityName: "Тольятти", cityArea: 314.78, cityPopulation: 707408, cityFoundation: 1737), City(cityName: "Сызрань", cityArea: 117, cityPopulation: 173260, cityFoundation: 1683), City(cityName: "Чапаевск", cityArea: 187.49, cityPopulation: 72944, cityFoundation: 1927)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        citiesTable.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = .lightGray
        
        return headerView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contentDataArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contentDataArray[section].name
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection: Int) -> CGFloat {
        return 100.0
    }
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(city: contentDataArray[indexPath.section], row: indexPath.row)
        return cell
    }
}

