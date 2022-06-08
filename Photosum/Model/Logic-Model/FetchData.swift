//
//  FetchData.swift
//  Photosum
//
//  Created by Ripon sk on 08/06/22.
//

import Foundation
import Alamofire
class DataFetch{
    weak var vc:ViewController!
    var result = [Result]()
    
    func datafetch(){
        let url = "https://picsum.photos/v2/list?page=1&limit=100"
        AF.request(url).responseJSON { (res) in
            let results = try? JSONDecoder().decode([Result].self, from: res.data!)
            self.result = results!
            DispatchQueue.main.async { [self] in
                vc.table.reloadData()
            }
        }
    }
}
