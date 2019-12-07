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
    
    let contentDataArray: Array<City> = [City(cityName: "Москва", cityArea: 2561.5, cityPopulation: 12615279, cityFoundation: 1147), City(cityName: "Санкт-Петербург", cityArea: 1439, cityPopulation: 5383890, cityFoundation: 1703), City(cityName: "Казань", cityArea: 425.3, cityPopulation: 1251969, cityFoundation: 1005), City(cityName: "Самара", cityArea: 541.4, cityPopulation: 1156644, cityFoundation: 1586), City(cityName: "Тольятти", cityArea: 314.78, cityPopulation: 707408, cityFoundation: 1737), City(cityName: "Сызрань", cityArea: 117, cityPopulation: 173260, cityFoundation: 1683), City(cityName: "Новокуйбышевск", cityArea: 86, cityPopulation: 102933, cityFoundation: 1946)]

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

