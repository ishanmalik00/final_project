package com.mycompany.bankingproject2022.pojo;

public class Customer 
{
    int account_number;
    String first_name;
    String last_name;
    String address;
    String ssn;
    String mobile;
    String email;
    String pin;
    String status;
    float balance;

    public Customer() 
    {
    
    }

    public Customer(int account_number, String first_name, String last_name, String address, String ssn, String mobile, String email, String pin, String status, float balance) {
        this.account_number = account_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.address = address;
        this.ssn = ssn;
        this.mobile = mobile;
        this.email = email;
        this.pin = pin;
        this.status = status;
        this.balance = balance;
    }

    public int getAccount_number() {
        return account_number;
    }

    public void setAccount_number(int account_number) {
        this.account_number = account_number;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }
    
    
    
    
}
