package com.kogent.ajax.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kogent.ajax.DatabaseConnector;
import com.kogent.ajax.JSONUtil;

public class UserPasswordServlet extends HttpServlet
{

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException
    {
        String responseString = null;

        String id = req.getParameter("id");
        if (id != null)
        {
            HashMap userpass = getUserPassword(id);
            responseString = JSONUtil.buildJSON(userpass, "userpass");
        }
        if (responseString != null)
        {
            res.setContentType("text/xml");
            res.setHeader("Cache-Control", "no-cache");
            res.getWriter().write(responseString);
        } else
        {
            // If key comes back as a null, return a question mark.
            res.setContentType("text/xml");
            res.setHeader("Cache-Control", "no-cache");
            res.getWriter().write("?");
        }
    }

    private HashMap getUserPassword(String userId)
    {
        Connection con = DatabaseConnector.getConnection();
        HashMap userPasswordMap = new HashMap();
        userPasswordMap.put("id", userId);
        String queryString = "";
        try
        {
            queryString = "SELECT username, password FROM userpassword where id="+userId;
            Statement select = con.createStatement();
            ResultSet result = select
                    .executeQuery(queryString);

            while (result.next())
            { 
                String username;
                String password;

                username = result.getString("username");
                if (result.wasNull())
                {
                    username = "";
                }
                userPasswordMap.put("username", username);
                password = result.getString("password");
                if (result.wasNull())
                {
                    password = "";
                }
                userPasswordMap.put("password", password);
            }
        } catch (Exception e)
        {
            System.out.println("exception caught getting username/password:"+queryString+" "+e.getMessage());
        } finally
        {
            if (con != null)
            {
                try
                {
                    con.close();
                } catch (SQLException e) {
                }
            }
        }
        return userPasswordMap;
    }
}
