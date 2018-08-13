package com.moneymoney.framework.account.pojo;

public abstract class BankAccount {
	private final int accountNumber;
	private Customer accountHolder;
	private double accountBalance;
	

	private static int accountId;
	

	static {
		accountId = 100;
	}

	{
		this.accountNumber = ++accountId;
	}
	
	public BankAccount(Customer accountHolder, double accountBalance) {
		this.accountHolder = accountHolder;
		this.accountBalance = accountBalance;
	}

	public BankAccount(Customer accountHolder) {
		this.accountHolder = accountHolder;
	}
	

	public int getAccountNumber() {
		return accountNumber;
	}
	public Customer getCustomer() {
		return accountHolder;
	}
	public void setAccountHolder(Customer accountHolder) {
		this.accountHolder = accountHolder;
	}
	public double getAccountBalance() {
		return accountBalance;
	}
	public void setAccountBalance(double accountBalance) {
		this.accountBalance = accountBalance;
	}
	
	public static int getNextAccountNumber() {
		return accountId+1;
	}

	public void deposit(double amount) {
		if(amount > 0)
			this.accountBalance += amount;
	}
	public String FundTransfer(BankAccount account,double amount) {
		String result;
		if(PaymentGateway.transfer(this, account, amount))
			result = "Transaction Successful";
		else
			result = "Transaction Failed";
		return result;
	}
	public abstract String withdraw(double amount);
	@Override
	public String toString() {
		return "BankAccount [accountNumber=" + accountNumber + ", accountHolderName=" + accountHolder
				+ ", accountBalance=" + accountBalance + "]";
	}
}