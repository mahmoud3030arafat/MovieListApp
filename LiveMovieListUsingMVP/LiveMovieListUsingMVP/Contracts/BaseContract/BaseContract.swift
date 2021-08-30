//
//  BaseContract.swift
//  LiveMovieListUsingMVP
//
//  Created by Mahmoud on 8/30/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation

protocol IBaseView {
    
    func showLoading()
    func hideLoading()
    func showErrorMesssage(errorMessage:String)

}
