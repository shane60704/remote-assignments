package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigInteger;

@RestController
public class HomeController {

    @GetMapping("/")
    public String test() {
        System.out.println();
        return "Hello, My Server!";
    }

    @GetMapping("/data")
    public String getData(@RequestParam(value = "number", required = false) String number) {
        // 若無傳入值，則返回 "Lack of Parameter"
        if (number == null) {
            return "Lack of Parameter";
        }
        try {
            //若無法解析成整數，則會出現錯誤，並由catch捕獲回傳"Wrong Parameter"
            int num = Integer.parseInt(number);
            //若傳入的整數小於0，則返回 "Wrong Parameter"
            if (num < 0) {
                return "Wrong Parameter";
            }
            //當1+2+...+65537會發生溢出，故以65537作為分界點。
            //若為True，則透過BigInteger方法進行大數運算;若為False，則使用正常方法累加。
            if (num >= 65537) {
                BigInteger bigSum = BigInteger.ZERO;
                for (int i = 0; i <=num; i++) {
                    BigInteger bigNum = BigInteger.valueOf(i);
                    bigSum = bigSum.add(bigNum);
                }
                return bigSum + "";
            } else {
                int sum = 0;
                for (int i = 1; i <= num; i++) {
                    sum += i;
                }
                return sum + "";
            }
        } catch (Exception e) {
            return "Wrong Parameter";
        }
    }
}



