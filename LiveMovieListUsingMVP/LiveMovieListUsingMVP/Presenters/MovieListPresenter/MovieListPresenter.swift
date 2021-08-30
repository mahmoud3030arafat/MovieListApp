//
//  MovieListPresenter.swift
//  LiveMovieListUsingMVP
//
//  Created by Mahmoud on 8/30/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation
class MovieListPresenter:IMovieListPresenter {
    
    
    var movieListView : IMovieListView
    init(movieListView:IMovieListView) {
        self.movieListView=movieListView
    }
    
    
    
    func getMovies() {
        //
        movieListView.showLoading()
        let movieNetworkService = MovieListService(movieListPresenter: self)
        movieNetworkService.getMovies().self
    }
    
    func onSuccess(movies: [Movie]) {
        //
        movieListView.hideLoading()
        movieListView.renderHomeWithMovies(movies: movies)
    }
    
    func onFail(errorMessage: String) {
        //
        movieListView.hideLoading()
        movieListView.showErrorMesssage(errorMessage: errorMessage)
    }
    
    
    
    
}
