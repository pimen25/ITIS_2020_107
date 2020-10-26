//
//  ViewController.swift
//  Kontacts
//
//  Created by Никита Пименов on 25.10.2020.
//  Copyright © 2020 Никита Пименов. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 5
        case 1:
            return 3
        case 2:
            return 1
        case 3:
            return 1
        case 4:
            return 1
        default:
            return 0
        }
       }
    enum CellIdentifier:String {
        case basic = "Basic"
        
    }
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
 //       indexPath.section //секция
 //       indexPath.row //строчка
        
        switch indexPath.section {
        case 0:
           return  firstSectionCell(for: indexPath, from: tableView)
        case 1:
            return sekondSectionCell(for: indexPath, from: tableView)
        case 2:
            return thirdSectionCell(for: indexPath, from: tableView)
        case 3:
            return fourSectionCell(for: indexPath, from: tableView)
        case 4 :
            return fiveSectionCell(for: indexPath, from: tableView)
        default:
            fatalError("Wrong section!")
        }
        
       }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            return "B"
        }
        if section == 0{
            return "A"
        }
        if section == 2{
            return "D"
        }
        if section == 3{
            return "O"
        }
        if section == 4{
            return "P"
        }
        
        
        
        return nil
    }
    
    
    
    private func firstSectionCell(for indexPath:IndexPath,from tableView:UITableView) ->UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.basic.rawValue,for: indexPath)
               
               switch indexPath.row {
               case 0:
                   cell.textLabel?.text = "Adel Pimenov"
               case 1:
                   cell.textLabel?.text = "Albert Sabirov"
               case 2:
                   cell.textLabel?.text = "Ahmed Nizamov"
               case 3:
                   cell.textLabel?.text = "Artur Vafin"
               case 4:
                   cell.textLabel?.text = "Amir Ivanov"
               default:
                   break
               }
               return cell
    }

    private func sekondSectionCell(for indexPath:IndexPath,from tableView:UITableView) ->UITableViewCell{
           let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.basic.rawValue,for: indexPath)
                  
                  switch indexPath.row {
                  case 0:
                      cell.textLabel?.text = "Balina Gibadullina"
                  case 1:
                      cell.textLabel?.text = "Bulat Kibardin"
                  case 2:
                      cell.textLabel?.text = "Bella Papova"
                  default:
                      break
                  }
                  return cell
       }
    private func thirdSectionCell(for indexPath:IndexPath,from tableView:UITableView)-> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.basic.rawValue, for: indexPath)
        
        cell.textLabel?.text = "Danil Golovin"
        
        return cell
    }
    
    private func fourSectionCell(for indexPath:IndexPath,from tableView:UITableView)-> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.basic.rawValue, for: indexPath)
           
           cell.textLabel?.text = "Oleg Kuptsov"
           
        
           
           return cell
       }
    private func fiveSectionCell(for indexPath:IndexPath,from tableView:UITableView)-> UITableViewCell {
              let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.basic.rawValue, for: indexPath)
              
              cell.textLabel?.text = "Pavel Dunaev"
              
           
              
              return cell
          }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        _=CellIdentifier.basic.rawValue
        let storyboard = UIStoryboard(name: "DetailViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "Poo")
        self.present(controller, animated: true, completion: nil)
        
    }
    
    
   
    }


