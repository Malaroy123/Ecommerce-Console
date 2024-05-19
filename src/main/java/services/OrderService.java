package services;

import entities.Orders;

import java.sql.Date;
import java.sql.SQLException;

public interface OrderService {
    void viewAllOrders() throws SQLException;

    String cancelOrders(int orderID, String orderStatus) throws SQLException;

    Date searchOrders(Date order_date) throws SQLException;

    void addOrders(Orders orders) throws SQLException;
}
