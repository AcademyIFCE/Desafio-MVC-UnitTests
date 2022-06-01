//
//  ViewController.swift
//  CardapioVirtualApp-final
//
//  Created by Gabriela Bezerra on 31/05/22.
//

import UIKit

// MARK: TODO DESAFIO PARA ESTUDO
/// - Refatorar esas Massive View Controller de maneira que não haja manipulação de modelos aqui!
/// - Cobrir toda a lógica de négocio do projeto com Testes Unitários (ViewController, AppDelegate, SceneDelegate, e View são opcionais)

class ViewController: UIViewController {

    @IBOutlet weak var menuTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "✨ Cardápio Virtual 👨‍🍳✨"
        
        menuTextView.bounces = false
        menuTextView.bouncesZoom = false
        menuTextView.font = UIFont.systemFont(ofSize: 16)
        
        menuTextView.text = generateMenuString()
    }
    
    func generateMenuString() -> String {
        var resultString = ""
        
        let coffeeOptions: [String] = ["Expresso", "Macchiato", "Cappucino"]
        let milliliters: [Int] = [50, 120, 175]
        let prices: [Double] = [6.90, 14.90, 16.90]
        
        let ingredientsMacchiato: [String] = ["Café Expresso", "Leite Vaporizado", "Espuma"]
        let ingredientsCappucino: [String] = ["Café Filtrado", "Leite Vaporizado", "Canela", "Açucar", "Chocolate"]
        
        resultString += " ☕️ Cafés\n\n"
        resultString += " nº\t\tCafé\t\t\tPreço\t\tQuantidade\n"
        resultString += "-----------------------------------------------\n"
        
        for i in 0...2 {
            
            resultString += " \(i)\t\t\(coffeeOptions[i])\t\t$ \(prices[i])\t\t\(milliliters[i])ml\n"
            
            switch coffeeOptions[i] {
                case "Macchiato":
                    resultString += "\t\t(\(ingredientsMacchiato.joined(separator: ", ")))\n\n"
                case "Cappucino":
                    resultString += "\t\t(\(ingredientsCappucino.joined(separator: ", ")))\n\n"
                default:
                    resultString += "\n\n"
                    break
            }
        }
        
        let teaOptions: [String] = ["Cidreira", "Earl Grey", "Rooibos"]
        let teaPrices: [Double] = [6.90, 14.90, 16.90]
        let teaEffects: [String] = ["Relaxante", "Estimulante", "Detox"]
        
        resultString += " 🫖 Chás\n\n"
        resultString += " nº\t\tChá\t\t\tPreço\t\tEfeito\n"
        resultString += "-----------------------------------------------\n"
        
        for i in 0...2 {
            resultString += " \(i)\t\t\(teaOptions[i])\t\t$ \(teaPrices[i])\t\t\(teaEffects[i])\n"
            resultString += "\n\n"
        }
        
        return resultString
    }
    
}
