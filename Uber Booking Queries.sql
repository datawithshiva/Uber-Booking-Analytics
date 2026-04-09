use Uber;
# 1. Retrieve all successful bookings:
SELECT * FROM Uber_Data WHERE Booking_Status = 'Success';

# 2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM Uber_Data GROUP BY
Vehicle_Type;

# 3. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM Uber_Data GROUP BY
Customer_ID ORDER BY total_rides DESC LIMIT 5;

# 4. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
Uber_Data WHERE Vehicle_Type = 'Prime Sedan';

# 5. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM Uber_Data
GROUP BY Vehicle_Type;

# 6. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value FROM Uber_Data WHERE
Booking_Status = 'Success';

# 7. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM Uber_Data WHERE Incomplete_Rides =
'Yes';