//
//  MovieListContract.swift
//  LiveMovieListUsingMVP
//
//  Created by Mahmoud on 8/30/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation

// presenter-view

protocol IMovieListView:IBaseView {
    
    func renderHomeWithMovies(movies:[Movie])
    
}





// model-presenter

protocol IMovieListPresenter {
    func getMovies()
    func onSuccess(movies:[Movie])
    func onFail(errorMessage:String)
    
}



// 

protocol IMovieListManager {
    func getMovies()
}
