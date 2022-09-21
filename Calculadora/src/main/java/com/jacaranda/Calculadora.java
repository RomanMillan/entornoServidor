package com.jacaranda;

public class Calculadora {
	private double number1;
	private double number2;
	
	//constructor
	public Calculadora(double number1, double number2) {
		super();
		setNumber1(number1);
		setNumber2(number2);
	}

	
	//setter and getter
	private void setNumber1(double number1) {
		this.number1 = number1;
	}

	private void setNumber2(double number2) {
		this.number2 = number2;
	}
	
	//metodos
	public double add() {
		return number1 + number2;
	}
	
	public double subtract() {
		return number1 - number2;
	}
	
	public double multiply() {
		return number1 * number2;
	}
	
	public double divide() throws CalcularException {
		if(number2 == 0) {
			throw new CalcularException("No se puede dividir entre 0");
		}
		return number1 / number2;
	}
	
	
}
