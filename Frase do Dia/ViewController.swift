//
//  ViewController.swift
//  Frase do Dia
//
//  Created by Pedro Lucas de Almeida on 26/04/21.
//

import UIKit

class ViewController: UIViewController {

    
    let frases : [String] = [
        "Você é as suas repetições",
        "Não importa o que a vida fez de você, importa o que você fez com o que a vida fez de você",
        "Tentar e não conseguir é melhor do que nunca tentar",
        "Se você traças metas absurdamente altas, seu fracasso será muito melhor que o sucesso de todos",
        "Ter sucesso é falhar repetidamente sem perder o entusiasmo",
        "Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudanças"
    ]
    @IBOutlet weak var labelFrase: UILabel?
    
    @IBAction func gerarNova(_ sender: Any) {
        let maximoIndice:Int = frases.endIndex
        
        let sorteado = arc4random_uniform(UInt32(maximoIndice))
        
        labelFrase?.text = frases[Int(sorteado)]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

