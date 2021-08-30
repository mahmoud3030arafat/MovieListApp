//
//  MovieListService.swift
//  LiveMovieListUsingMVP
//
//  Created by Mahmoud on 8/29/21.
//  Copyright © 2021 mahmoud. All rights reserved.
//

import Foundation
class  MovieListService {
    var dataTask = URLSessionTask()
    
    var movieListPresenter : IMovieListPresenter
    
    init(movieListPresenter:IMovieListPresenter) {
        self.movieListPresenter=movieListPresenter
    }
    func getMovies(){

        let urlNews = "https://jsonplaceholder.typicode.com/posts"

        let url = URL(string: urlNews)
        let session = URLSession.shared
        dataTask = session.dataTask(with: url!, completionHandler: { (data, response, error) in

            if let error = error {
                print(error.localizedDescription)
            }
            guard let response = response as? HTTPURLResponse  else {return}
            print(response)
            guard let data = data else  {return}
            do{
                let decoder = JSONDecoder()
                let movies  =    try decoder.decode([Movie].self, from: data)
                self.movieListPresenter.onSuccess(movies: movies)
               


            }catch let error {
                
                self.movieListPresenter.onFail(errorMessage: error as! String)
            }

        })
        dataTask.resume()





    }
    
    
}
