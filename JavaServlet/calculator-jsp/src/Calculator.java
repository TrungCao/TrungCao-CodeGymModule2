public class Calculator {
    public static float calculate(float firstOperand, float secondOperand,char operand){
        switch (operand){
            case '+':
                return firstOperand+secondOperand;
            case '-':
                return firstOperand-secondOperand;
            case '*':
                return firstOperand*secondOperand;
            case '/':
                if(secondOperand != 0)
                    return firstOperand/secondOperand;
                else
                    throw new RuntimeException("Can't divite by zero");
                default:
                    throw new RuntimeException("Invalid opration");
        }
    }
}
