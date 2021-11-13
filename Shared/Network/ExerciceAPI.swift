////
////  ExerciceAPI.swift
////  FitnessApp
////
////  Created by Bilel Bouricha on 12/11/2021.
////
//
//import Foundation
//
//public class ExerciceAPI {
//    public static let shared: ExerciceAPI = ExerciceAPI()
//    
//    func getExercises(completion:@escaping ([Welcome]) -> Void) {
//        let urlGetStickers = URL(string: "https://wger.de/api/v2/exerciseinfo/?format=json")
//        var request = URLRequest(url: urlGetStickers!)
//        
//        request.httpMethod = "GET"
//        let session = URLSession.shared
//        let task = session.dataTask(with: request) { (data, response, error) in
//            if let error = error {
//                print(error)
//            } else {
//                if let response = response as? HTTPURLResponse, let decodedResponse = try? JSONDecoder().decode([Welcome].self, from: data!) {
//                    print(response.statusCode)
//                    completion(decodedResponse)
//                }
//            }
//        }
//        task.resume()
//    }
//}
