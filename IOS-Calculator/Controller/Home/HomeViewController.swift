import UIKit

final class HomeViewController: UIViewController {

    // MARK: - Outlets
    
    //result
    @IBOutlet weak var resultNumber: UILabel!
    
    //numbers
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var operatorDecimal: UIButton!
    
    //operators
    @IBOutlet weak var operatorAC: UIButton!
    @IBOutlet weak var operatorPlusMinus: UIButton!
    @IBOutlet weak var operatorPercent: UIButton!
    @IBOutlet weak var operatorResult: UIButton!
    @IBOutlet weak var operatorAddition: UIButton!
    @IBOutlet weak var operatorSubstraction: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    
    
    
    
    // MARK: - initializing
    
    init(){
        super.init(nibName: nil, bundle: nil) // si le ponemos nil y nil por defecto se va a asociar al xib que pusimos por defecto para asociar
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        operatorDecimal.round()
        operatorAC.round()
        operatorPlusMinus.round()
        operatorPercent.round()
        operatorResult.round()
        operatorAddition.round()
        operatorSubstraction.round()
        operatorMultiplication.round()
        operatorDivision.round()
    }
    
    // MARK: - actions

    @IBAction func operationAC(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationPlusMinus(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationPercent(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationDivision(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationMultiplication(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationSubstraction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationAddition(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operationResult(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        sender.shine()
        print(sender.tag)
    }
    
}
