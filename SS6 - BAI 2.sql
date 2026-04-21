CREATE DATABASE HOTEL_BOOKING;
USE HOTEL_BOOKING;

CREATE TABLE Rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT,
    room_name VARCHAR(100),
    price_per_night DECIMAL(15,2)
);

INSERT INTO Rooms (hotel_id, room_name, price_per_night) VALUES
(1, 'Phòng Đơn Tiêu Chuẩn', 500000),
(1, 'Phòng Đôi Sang Trọng', 1200000),
(2, 'Căn Hộ Studio', 850000),
(2, 'Phòng Tổng Thống', 5000000),
(3, 'Phòng Tập Thể', 200000),
(3, 'Phòng Gia Đình', 1000000);


SELECT hotel_id  , MIN(price_per_night)  
FROM Rooms
GROUP BY hotel_id;

-- nếu để name vào thì trong MIN price -> máy tính sẽ không biết phải dùng phòng nào để hiển thị trong cột đó