//
//  ViewController.swift
//  Photosum
//
//  Created by Ripon sk on 08/06/22.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    var x = DataFetch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        x.datafetch()
        x.vc = self
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return x.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        var arr = x.result[indexPath.row]
        let url = URL(string: arr.download_url!)
        cell.authorlbl.text = "Author:\(arr.author!)"
        
        let resource = ImageResource(downloadURL: url!, cacheKey: arr.download_url!)
        cell.img.kf.setImage(with: resource)
        cell.img.layer.cornerRadius = 10
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}
