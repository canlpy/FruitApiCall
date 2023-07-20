//
//  Fruit.swift
//  FruitApiCall
//
//  Created by Can Alpay on 20.07.2023.


struct Fruit: Codable, Identifiable {
    let id: Int
    let name: String
    let family: String
    let order: String
    let genus: String
    let nutritions: Nutrition
}

struct Nutrition: Codable {
    let calories: Int
    let fat: Double
    let sugar: Double
    let carbohydrates: Double
    let protein: Double
}
