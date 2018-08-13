package com.moneymoney.framework.account.pojo;


public abstract class SavingsAccount extends BankAccount {
	private boolean salary;
	private double minBal;

	public SavingsAccount(Customer accountHolder, double accountBalance, boolean salary) {
		super(accountHolder, accountBalance);
		this.salary = salary;
		this.minBal = 10000;
	}


	public boolean isSalaryValue() {
		return salary;
	}
	public void setSalary(boolean salary) {
		this.salary = salary;
		if(salary)
			this.minBal =0;
		else
			this.minBal = 10000;
	}
	public double getMinBal() {
		return minBal;
	}
	public void setMinBal(double minbal) {
		minBal = minbal;
	}
	public abstract String withdraw(double amount);
	@Override
	public String toString() {
		return "SavingsAccount [salary=" + salary + ", toString()=" + super.toString() + "]";
	}
}
