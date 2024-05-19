# Ecommerce Console

This project is a Java-based console application for an ecommerce platform. It includes separate views for admins and customers.

## Features

### Admin View
- Update password/username
- View all products
- View all orders
- View all customers
- Change order status
- Search orders
- Search products
- Logout

### Customer View
- View profile
- Update profile
- View products
- Search for products
- Add to cart
- View cart
- Delete from cart
- Checkout
- View order history
- Logout

## Database

The application uses AWS RDS as the database. A `DBConnection` class is provided to run it on a local MySQL database as well.

## Development Insights

This is my first attempt at writing Java with JDBC. Upon realizing that the code could be run with MySQL, I decided to implement a cloud strategy using AWS RDS as the database. For my next project, I plan to implement Google Cloud SQL and Azure Database as the DB.

## TODO

- Complete the customer features
- Refactor code using Test-Driven Development (TDD)
- Implement an error handling strategy
- Implement logging with SLF4J

## Future Plans

I am planning to evolve this project into a Spring Boot application and utilize Azure Database as the DB for it.

## Lessons Learned

- **TDD:** I should have implemented TDD from the start. Testing methods after writing them introduced complexity and led to extensive mocking. In future projects, I will plan the design in advance and implement TDD, which is considered a best practice.
- **AWS RDS:** In the `DBConnect` class, it is important to specify the exact database in the URL (e.g., `aws.rds.com/your-database-name`).
- **Security Groups:** Ensure that the inbound and outbound rules for your security groups are correctly configured. You need to allow traffic for both inbound and outbound connections on the port used by your SQL database, which is typically port 3306.

## Requirements

To run the project, you will need:
- A Java IDE
- SQL JAR driver
- MySQL
- AWS RDS
