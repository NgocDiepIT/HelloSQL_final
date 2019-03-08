package controller;

import database.ProductHandler;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }
    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String dispatchUrl = null;

        int id = Integer.parseInt(request.getParameter("id"));
        new ProductHandler().delete(id);

        dispatchUrl = "ProductDelete.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(dispatchUrl);
        rd.forward(request, response);
    }
}
