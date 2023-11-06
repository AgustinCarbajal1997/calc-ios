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

    }
    
    // MARK: - actions

    @IBAction func operationAC(_ sender: Any) {
    }
    @IBAction func operationPlusMinus(_ sender: Any) {
    }
    @IBAction func operationPercent(_ sender: Any) {
    }
    @IBAction func operationDivision(_ sender: Any) {
    }
    @IBAction func operationMultiplication(_ sender: Any) {
    }
    @IBAction func operationSubstraction(_ sender: Any) {
    }
    @IBAction func operationAddition(_ sender: Any) {
    }
    @IBAction func operationResult(_ sender: Any) {
    }
    @IBAction func numberDecimalAction(_ sender: Any) {
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
}
