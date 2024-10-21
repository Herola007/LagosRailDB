# LagosRailDB
**This repository contains a comprehensive database developed from scratch using PostgreSQL, specifically designed to manage the operations of the Lagos State Rail Service. The database is built following the principles of relational database management systems (RDBMS) and includes a well-structured schema that ensures data integrity, optimized querying, and scalable management of railway operations.**

![Railway Illustration](https://github.com/Herola007/LagosRailDB/blob/main/Rail_service%20Illustration.jpg?raw=true)

## Key Features
- Database Engine:PostgreSQL
- Total Tables: 12 interrelated tables
- Purpose: Manage and track operations, ticket bookings, cargo shipments, train schedules, and maintenance activities for Lagos State Rail Service. The database is also designed to act as a central hub for all operational data, offering managers and decision-makers a real-time view of the state of the railway service. As Lagos continues to grow, so will the demand for expanded rail services. This database is built to scale, allowing for the addition of new routes, stations, and services without major disruptions. 

## Database Structure
The database schema consists of the following 12 tables, each with defined relationships to ensure consistency and reduce data redundancy:
1. **Stations**: Details the various stations serviced by the railway, including location and station names.
2. **Trains**: Contains information about each train, such as train numbers, capacity, manufacturer, service status, and train type.
3. **Routes**: Defines the paths that trains follow between stations and manages the relationship between stations and trains.
4. **Trips**: Tracks the number of trips taken by each train, including details such as arrival time, departure time, the number of passengers onboard, and the status of each trip—whether it was completed, delayed, or canceled.
5. **Train Schedules**: Manages train schedules, linking trains to stations, day of operation, and providing information on departure and arrival times.
6. **Cards**: Maintains a log for each commuter's card, capturing details such as the card ID, card type, issue date, expiry date, current balance, and card status.
7. **Employees**: Contains records of railway staff, including technicians responsible for train maintenance and other operational roles.
8. **Fares**: Displays the fare structure for each route and ticket class, providing clear information on the cost of travel based on the selected journey and seating category.
9. **Ticket Bookings**: Tracks passenger ticket bookings, including customer details, train schedule, seat numbers, and fare information.
10. **Payments**: Tracks all payments made for ticket bookings and cargo services, payement status, supporting multiple payment methods such as debit cards and mobile payments.
11. **Cargo Manifest**: Manages the transportation of goods, including details of cargo, sender, receiver, origin, and destination stations.
12. **Maintenance Records**: Logs maintenance activities for trains, tracking the type of maintenance, cost, technician details, and station where maintenance occurred.

**ER DIAGRAM**

![ER_DIAGRAM](https://github.com/Herola007/LagosRailDB/blob/main/ER%20DIAGRAM.png?raw=true)


**I was able to create an efficient, scalable, and well-structured database that can be expanded to meet the growing needs of the Lagos State Rail Service, such as integrating real-time tracking, advanced reporting, and enhanced user experiences. This project has the potential to be scaled further if I receive an offer from Lagos State. It was developed to demonstrate the capabilities of a relational database system and to showcase my skills in database administration.**

