//
//  ViewController.swift
//  calcapp
//
//  Created by Consultant on 8/19/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - References UI
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func zeroButton() {
        zeroButtonAction()
    }
    
    
    @IBAction func oneButton() {
        oneButtonAction()
    }
    
    @IBAction func twoButton() {
        twoButtonAction()
    }
    
    @IBAction func trheeButton() {
        trheeButtonAction()
    }
    
    
    @IBAction func fourButton() {
        fourButtonAction()
    }
    
    @IBAction func fiveButton() {
        fiveButtonAction()
    }
    
    @IBAction func sixButton() {
        sixButtonAction()    }
    
    
    @IBAction func sevenButton() {
        sevenButtonAction()
    }
    
    @IBAction func eigthButton() {
        eigthButtonAction()
    }
    
    @IBAction func nineButton() {
        nineButtonAction()
    }
    
    
    @IBAction func clearButton() {
        clearButtonAction()
    }
    
    @IBAction func addButton() {
        verifyOperator("+")
    }
    
    @IBAction func minusButton() {
        minusButtonAction()
        verifyOperator("-")
    }
    
    @IBAction func multiplyButton() {
        multiplyButtonAction()
        verifyOperator("*")
    }
    
    @IBAction func divisionButton() {
        divisionButtonAction()
        verifyOperator("/")
    }
    
    @IBAction func dotButton() {
        dotButtonAction()
    }
    
    @IBAction func equalsButton() {
        equalsButtonAction()
        verifyOperator("=")
    }
    
    // MARK - Numbers
    func zeroButtonAction(){
        addNumber("0")
    }
    func oneButtonAction(){
        addNumber("1")
    }
    func twoButtonAction(){
        addNumber("2")
    }
    func trheeButtonAction(){
        addNumber("3")
    }
    func fourButtonAction(){
        addNumber("4")
    }
    func fiveButtonAction(){
        addNumber("5")
    }
    func sixButtonAction(){
        addNumber("6")
    }
    func sevenButtonAction(){
        addNumber("7")
    }
    func eigthButtonAction(){
        addNumber("8")
    }
    func nineButtonAction(){
        addNumber("9")
    }
    // MARKK - Funct
    func minusButtonAction(){
        
    }
    func multiplyButtonAction(){
        
    }
    func clearButtonAction(){
        verifyOperator("c")
    }
    func divisionButtonAction(){
        
    }
    func addButtonAction(){
        
    }
    func dotButtonAction(){
        addNumber(".")
    }
    func equalsButtonAction(){
        
    }
    var number: Double = 0, firstNumber: Double = 0, secondNumber: Double = 0
    var numberString: String = "0"
    var bandOperator = false
    var lastOperator: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "0"
    }
    func addNumber(_ char: Character = "0"){
        if bandOperator {
            numberString = ""
            bandOperator.toggle()
        }
        if !(char == "." && numberString.contains(".")){
            print(numberString)
            if !(numberString == "0" && char == ".") && numberString == "0"{
                numberString = ""
            }
            numberString.append(char)
            resultLabel.text = numberString
            if numberString.last == "." {
                if !(numberString + "0").isNumber {
                    number = 0
                    resultLabel.text = "Sintax Error"
                }
                else{
                    number = Double(numberString + "0") ?? 0
                }
            }
            else{
                if !(numberString).isNumber {
                    number = 0
                    resultLabel.text = "Sintax Error"
                }
                else{
                    number = Double(numberString) ?? 0
                }
            }
            numberString = resultLabel.text ?? "0"
        }
    }
    func verifyOperator(_ oper:String = "c"){
        switch oper{
        case "c":
            resultLabel.text = "0"
            number = 0
            numberString = "0"
            firstNumber = 0
            secondNumber = 0
            lastOperator = ""
        case "*" , "/", "+", "-":
            
            if firstNumber == 0{
                firstNumber = number
            }else if secondNumber == 0{
                secondNumber = number
            }
            if firstNumber != 0 && secondNumber != 0{
                if lastOperator != "" && lastOperator != oper{
                    number =  resultOperator(firstNumber, secondNumber, lastOperator)
                }else{
                    number =  resultOperator(firstNumber, secondNumber, oper)
                }
                
                resultLabel.text = String(number)
                secondNumber = 0
                firstNumber = number
            }else{
                number = 0
            }
            lastOperator = oper
            print("\(oper) first: \(firstNumber)")
            print("\(oper) second: \(secondNumber)")
            print("\(oper) num: \(number)")
            
            bandOperator.toggle()
        case "=":
            print("\(oper) first: \(firstNumber)")
            print("\(oper) second: \(secondNumber)")
            print("opera: \(lastOperator)")
            number =  resultOperator(firstNumber, number, lastOperator)
            lastOperator = ""
            resultLabel.text = String(number)
            secondNumber = 0
            firstNumber = 0
            numberString = ""
            bandOperator.toggle()
            print("\(oper) num: \(number)")
           
        default:
            resultLabel.text = "0"
            number = 0
            numberString = ""
            
            
        }
    }
    func resultOperator(_ n1: Double = 0, _ n2: Double = 2, _ char: String = "") -> Double {
        let operator1 = Operators(rawValue: char)
        switch operator1{
        case  .add:
            return n1 + n2
        case .minus:
            return n1 - n2
        case .multiplication:
            return n1 * n2
        case .division:
            return n1 / n2
        case .none:
            return number
        }
    }
    enum Operators: String {
        case add = "+"
        case minus = "-"
        case multiplication = "*"
        case division = "/"
    }
}
extension String  {
    var isNumber: Bool {
        return !isEmpty && Double(self) != nil
    }
}

