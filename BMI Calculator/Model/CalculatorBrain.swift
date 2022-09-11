import UIKit


struct CalculatorBrain{
    var bmiV: BMI?
    
    mutating func calculateBMI(weight: Int, height: Float){
        let value=Float(weight)/(height*height)
        
        if value<18.5{
            if #available(iOS 15.0, *) {
                bmiV=BMI(value: value, color:.systemCyan , advice: "UNDERWEIGHT")
            } else {
                // Fallback on earlier versions
            }
        }
        else if value<25.5{
            bmiV=BMI(value: value, color:.systemGreen, advice: "NORMAL")

        }
        else if value<34.9{
            bmiV=BMI(value: value, color: .systemYellow, advice: "OVERWEIGHT")
        }
        else{
            bmiV=BMI(value: value, color: .systemRed, advice: "OBESE")

        }
      
    }
    func getBMI()->String{
        let v=bmiV?.value ?? 0.0
        return String(format: "%.1f", v)
    }
    
    func getColor()->UIColor{
        return bmiV?.color ?? .white
    }
    func getAdvice()->String{
        return bmiV?.advice ?? ""
    }
}
