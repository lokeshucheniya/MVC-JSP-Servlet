package com.moneymoney.framework.account.dao;

import java.util.ArrayList;
import java.util.Set;

import com.moneymoney.framework.account.pojo.BankAccount;
import com.moneymoney.framework.account.pojo.Customer;

public interface DAO {

	
	void addBankAccount(BankAccount bankAccount);
	void addCustomer(Customer customer);
	
	ArrayList<BankAccount> viewAllAccounts();
	ArrayList<Customer> viewAllCustomers();
	BankAccount searchAccountById(int num);

}