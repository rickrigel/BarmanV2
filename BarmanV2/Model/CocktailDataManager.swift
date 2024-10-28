//
//  CocktailDataManager.swift
//  BarmanV2
//
//  Created by RICARDO SANCHEZ on 20/10/24.
//

import Foundation

class CocktailDataManager {
    
    //MARK: Properties
    var cocktails : [Cocktail] = []
    
    //MARK: data source array :P
    let cocktailsArray = [
            ["directions":"Shake vigorously and serve.", "ingredients": "white creme de menthe, peach liqueur vodka,  hot chocolate", "name": "After Dinner Mint", "img": "1"],
            ["directions":"Pour the liqueur into a glass, add the cider, and serve cold.", "ingredients": "cinnamon schnapps, hard cider", "name": "Baked Apple", "img": "2"],
            ["directions": "Combine ingredients in a coffee mug. Top with whipped cream and coconut shavings.", "ingredients": "hazelnut liqueur,coconut rum, irish cream, coffee",
                "name": "Cafe Joy", "img": "3"],
            [
                "directions": "Shake rum, amaretto, and orange juice in a shaker filled with ice. Strain into a highball glass over ice. Add grenadine and garnish with a pineapple wedge and a strawberry",
                "ingredients": "coconut rum, amaretto almond liqueur, orange juice, grenadine syrup",
                "name": "Day at the Beach",
                "img": "4"],
            [
                "directions": "Pour ingredients into a Rocks Glass filled with ice.",
                "ingredients": "Wild Turkey, tabasco Sauce",
                "name": "Firecracker",
                "img": "5"],
            [
                "directions": "Layer in sequence in a shot glass.",
                "ingredients": "irish cream, butterscotch schnapps, cinnamon schnapps",
                "name": "Gingerbread Man",
                "img": "6"],
            [
                "directions": "Mix vodka and sweet and sour mix proportionally in any size batch, then add sprite or 7-up and cranberry accordingly, a dash each per serving.",
                "ingredients": "vodka, sweet and sour mix, sprite, cranberry juice",
                "name": "Key West Lemonade",
                "img": "7"],
            [
                "directions": "Add sugar to the rim of an old-fashioned glass, and drop a cube or packet of sugar into the bottom of the glass. Pour vodka and lemon juice into a stainless steel shaker over ice, and shake until completely cold. Pour into the prepared old-fashioned glass, and serve.",
                "ingredients": "Citron vodka, Lemon, Sugar",
                "name": "Lemon Drop",
                "img": "8"],
            [
                "directions": "Add bourbon wiskey and sweet vermouth. Mix and serve in martini glass.",
                "ingredients": "sweet vermouth, bourbon whiskey, bitters, maraschino cherry twist, orange peel",
                "name": "Manhattan",
                "img": "9"],
            [
                "directions": "Combine all ingredients in a mixing glass, chill and strain into a cocktail glass. Garnish with a twist of lemon, and serve.",
                "ingredients": "strawberry liqueur, orange liqueur, raspberry liqueur, lime juice",
                "name": "Neapolitan",
                "img": "10"],
            [
                "directions": "Shake all ingredients with ice, strain into a cocktail glass, and serve.",
                "ingredients": "gin, lemon juice, orange Juice",
                "name": "Polo Cocktail",
                "img": "11"],
            [
                "directions": "Heat and pour into an irish coffee cup. Top with whipped cream, garnish with a tall cinnamon stick, and serve.",
                "ingredients": "orange liqueur, cinnamon schnapps, vodka, cranberry juice",
                "name": "Red Rudolph",
                "img": "12"],
            [
                "directions": "Fill shaker with ice, add ingredients, chill, strain.",
                "ingredients": "vodka, irish creme, kahlua, frangelico, milk",
                "name": "Sandbar Sleeper",
                "img": "13"],
            [
                "directions": "151 first, then peppermint liqueur.",
                "name": "Terminator",
                "ingredients": "151 proof rum, peppermint liqueur",
                "img": "14"],
            [
                "directions": "Shake together over ice, and strain into a highball glass. Garnish with a lime wedge and a cherry.",
                "ingredients": "lemon vodka, pepper vodka, kurant vodka, vodka, orange juice",
                "name": "Vodka Mixer",
                "img": "15"]
            
            ]
    
    //MARK: Methods
    
    func fetch() {
        for cocktail in cocktailsArray {
            cocktails.append(Cocktail(dict: cocktail))
        }
    }
    
    /*
    func fetch() {
        // URL del JSON que contiene la lista de ítems
        guard let url = URL(string: "http://janzelaznog.com/DDAM/iOS/drinks.json") else { return }
        
        // Descarga en background
        URLSession.shared.dataTask(with: url) { data, _, error in
            // Verifica si ocurrió algún error
            if error != nil {
                print("Error al descargar JSON")
                return
            }
            
            // Validando los datos no estén vacíos
            guard let data = data else {
                print("No se recibieron datos")
                return
            }
            
            // Decodifica los datos en una lista de ítems
            do {
                var cocktails = try JSONDecoder().decode([Cocktail].self, from: data)
                
                // Construir la URL completa de la imagen y actualizamos items
                let baseImageUrl = "http://janzelaznog.com/DDAM/iOS/drinksimages/"
                
                let updatedItems = cocktails.map { item -> Cocktail in
                    let fullImageUrl = baseImageUrl + item.img
                    return Cocktail(directions: item.directions, ingredients: item.ingredients, name: item.name, img: fullImageUrl)
                    //return cocktails.append(Cocktail(directions: item.directions, ingredients: item.ingredients, name: item.name, img: fullImageUrl))
                    
                }
                
                // Actualiza la lista de ítems
                DispatchQueue.main.async {
                    cocktails = updatedItems
                }
            } catch {
                print("Error al decodificar JSON")
            }
        }.resume() // Inicia la tarea de descarga
    }
*/
    
    
    func getCocktail(at index : Int) -> Cocktail {
        return cocktails[index]
    }
    
    func countCocktails() -> Int {
        cocktails.count
    }
}
