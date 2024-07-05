package com.example.demo;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

@Controller
public class UserController {

    // @RequestMapping 可限制前端僅能使用特定 Http method 請求 url 的路徑
    // @RequestMapping 可替換為 @GetMapping , @PostMapping... 加上("路徑")
    @RequestMapping(value = "/myName", method = RequestMethod.GET)
    public String getCookie(@CookieValue(value = "userName", required = false) String username, HttpServletResponse response, Model model) throws IOException {
        if (username == null) {
            response.sendRedirect("/trackName");
        }
        model.addAttribute("userName", username);
        return "myName";
    }

    @RequestMapping(value = "/trackName", method = RequestMethod.GET)
    public String trackNameForm() {
        return "trackName";
    }

    //設定params可指定request中必須包含某些參數值，才讓該方法處理。
    //第一次導向 "/trackName" 並未傳入 "name"，故會執行 trackNameForm() 渲染頁面。
    //送出表單至 "/trackName" 同時傳入name，因此會執行 setCookie()，結束後再回到 "/myName"檢查Cookie是否存在。
    @RequestMapping(value = "/trackName", method = RequestMethod.GET, params = "name")
    public void setCookie(@RequestParam("name") String name, HttpServletResponse response) throws IOException {

        //建立 Cookie 物件，並將 userName 設為 傳入的 name
        Cookie cookie = new Cookie("userName", name);
        //設置過期時間為24小時
        cookie.setMaxAge(24 * 60 * 60);
        // 將 Cookie 物件加入Response
        response.addCookie(cookie);
        //重新導向 "/myName"
        response.sendRedirect("/myName");
    }

    @RequestMapping(value = "/deleteCookie", method = RequestMethod.GET)
    public void deleteCookie(HttpServletResponse response) throws IOException {
        // 將 Cookie 物件的 userName 設為 null
        Cookie cookie = new Cookie("userName", null);
        // 設置過期時間為0
        cookie.setMaxAge(0);
        // 將 Cookie 物件加入Response
        response.addCookie(cookie);
        // 重新導向"/myName"
        response.sendRedirect("/myName");
    }
}

