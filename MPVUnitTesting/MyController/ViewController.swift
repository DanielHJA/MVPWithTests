//
//  ViewController.swift
//  MPVUnitTesting
//
//  Created by Daniel Hjärtström on 2020-07-02.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private(set) var presenter: ViewControllerPresenterProtocol!
    
    init() {
        super.init(nibName: nil, bundle: nil)
        presenter = ViewControllerPresenter(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = UIApplication.fetchEnvironmentConfiguration()
        
        let apikey = Bundle.main.infoDictionary?["API_KEY"] as! String
        print(apikey)
    }
    
    
}

extension ViewController: ViewControllerProtocol {
    
    func fetchSuccess(_ status: Bool) {
        
    }
    
    func fetchFailure(_ status: Bool) {
        
    }
    
}

extension UIApplication {
    static func fetchEnvironmentConfiguration() -> Configuration? {
        let bundle = Bundle.main
        guard let path = bundle.path(forResource: "DebugConfiguration", ofType: "plist") else { return nil }
        let url = URL(fileURLWithPath: path)
        
        let decoder = PropertyListDecoder()
        
        do {
            let data = try Data(contentsOf: url)
            let configuration = try decoder.decode(Configuration.self, from: data)
            return configuration
        } catch {
            print(error)
        }
        return nil
    }
}



class Configuration: Decodable {
    
    let baseurl: String
    
    private enum CodingKeys: String, CodingKey {
        case baseurl = "baseurl"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        baseurl = try container.decode(String.self, forKey: .baseurl)
        
    }
    
}

extension String {
    func asURL() -> URL? {
        return URL(string: self)
    }
}
