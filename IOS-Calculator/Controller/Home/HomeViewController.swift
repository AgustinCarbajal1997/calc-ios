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
    
    
    // MARK: - variables
    
    private var total: Double = 0
    private var temp: Double = 0
    private var operating: Bool = false
    private var decimal: Bool = false
    private var operation: OperationType = .none // cuales son las posibilidades de valores con un enum y la inicializamos en .none (osea no se seleccionó ninguno)
    
    // MARK: - constants
    
    // normalmente las constantes en swift se nombran con un k al ppio
    
    private let kDecimalSeparator = Locale.current.decimalSeparator// es importante porque dependiendo del idioma seteado en el iphone, va a ser una coma o un punto
    private let kMaxLength = 9 //longitud maxima decimal
    private let kMaxValue = 999999999 //valor maximo aceptado
    private let kMinValue = 0.00000001 //valor minimo aceptado
    
    private enum OperationType{
        case none, addition, substraction, multiplication, division, percent
    }
    
    // Formateo de valores auxiliares
    private let auxFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = "" // le estoy diciendo que no haga la clasica separacion por puntito de 1.000, 10.000, 100.000
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 100
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 100
        return formatter
    }()
    
    // Formateo de valores por pantalla por defecto
    private let printFormatter: NumberFormatter = {
          let formatter = NumberFormatter()
          let locale = Locale.current
          formatter.groupingSeparator = locale.groupingSeparator // ahora si queremos los separadores 1.000, 10.000, 100.000
          formatter.decimalSeparator = locale.decimalSeparator
          formatter.numberStyle = .decimal
          formatter.maximumIntegerDigits = 9 // maximo total
          formatter.minimumFractionDigits = 0 // podemos no tener ninguno
          formatter.maximumFractionDigits = 8 // 8 digitos decimales
          return formatter
      }()
    
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
        
        operatorDecimal.setTitle(kDecimalSeparator, for: .normal)
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
