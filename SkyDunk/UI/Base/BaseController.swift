//
//  BaseController.swift
//  SkyDunk
//
//  Created by Nebo on 01.09.2023.
//

import UIKit

class BaseController<V: BaseView>: UIViewController {
    
    var mainView: V { view as! V }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func loadView() {
        super.loadView()
        view = V()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
