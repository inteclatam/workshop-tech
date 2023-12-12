
-- Create Customer table
CREATE TABLE Customer (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    Email NVARCHAR(255)
);

-- Create Payment
CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY IDENTITY(1,1),
    CustomerId INT FOREIGN KEY REFERENCES Customer(customerId),
    Amount DECIMAL(10, 2),
    status NVARCHAR(50) CHECK(status IN ('pending', 'completed', 'failed', 'refunded'))
);