

import UIKit
import Alamofire

class MovieListTableViewController: UITableViewController {
    var movieArray = [Movie]()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
         var movieListView = MovieListPresenter(movieListView: self)
         movieListView.getMovies()
        
        
    }
    
   
    
//
//    func getMovies(){
//
//        AF.request( URLs.getMovieListURL).validate().responseDecodable(of:[Movie].self) { (response) in
//            switch response.result {
//            case .success( _):
//                guard let movies=response.value else {
//                    return
//                }
//                print(movies)
//                self.movieArray=movies
//                print(self.movieArray)
//
//                self.tableView.reloadData()
//
//
//
//
//            case .failure(let error):
//                print(error)
//            }
//        }



    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = movieArray[indexPath.row].body
        return cell
    }
    

    

}
extension MovieListTableViewController:IMovieListView{
    func renderHomeWithMovies(movies: [Movie]) {
        self.movieArray=movies
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    func showLoading() {
        //
        print("showLoading...")
    }
    
    func hideLoading() {
        print("hideLoading...")
    }
    
    func showErrorMesssage(errorMessage: String) {
        print("showerrorMessage...")
    }
    
    
    
    
}
