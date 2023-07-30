//
//  ViewController.swift
//  Practice-Swift
//
//  Created by 生野琢郎 on 2023/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /**
     Cellの総数を返す
     */
    func _tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    /**
     Cellに値を設定する
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        return cell
    }
    
    
    // Tableで使用する配列を設定する
    private let myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    private var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        view.backgroundColor = .green
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        
        // このViewControllerで表示しているViewのサイズを取得する
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
    
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight))
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        myTableView.dataSource = self
        
        myTableView.delegate = self
        
        self.view.addSubview(myTableView)
    }
    
    /**
     Cell選択時に呼び出される部分
     */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value \(myItems[indexPath.row])")
    }
}

