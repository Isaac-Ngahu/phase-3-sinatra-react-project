# Overview
This is the backend code repository that handles bookings for [Garage Near You]. The purpose of this application is to manage the booking process for [Creating a booking/appointment and creating a user-profile]. This README provides an overview of the backend structure, setup instructions, API endpoints, and other essential information for developers and contributors.

## Installation

To get started with the backend application, follow these steps:

Clone this repository to your local machine.
Install the required gems using bundle install.
Run the server using rake server.

## Configuration

The backend application can be configured using environment variables. Create a .env file in the root directory and add the following variables:
This will run your server on port
[http://localhost:9292](http://localhost:9292).                
DATABASE_URL=
SECRET_KEY=your_secret_key 

You can also adjust other configurations such as logging, caching, etc., depending on your project's needs.

## Database
This application uses Postgre as its database to store booking-related information. Ensure that you have Postgre installed and running on your system or provide the appropriate connection URL to an existing Postgre instance via the DATABASE_URL environment variable.

The data models for bookings and related entities are defined in the models directory. Make sure to keep the models updated if you modify the data structure.

## API Endpoints
The backend provides the following API endpoints for handling bookings:

PUT "/user/:id": updates an attribute for a user.
post "/": Enables a user to login to their account.
post "/booking": Create a new booking.
post "/register": Resgisters a new user.
get "/reviews": gets all reviews posted by users.
post "/reviews": creates a review.
Please refer to the app/controllers directory for the implementation details of these endpoints.

## Error Handling

The backend includes comprehensive error handling mechanisms. Errors are returned in JSON format with appropriate HTTP status codes. If an unhandled error occurs, the server will respond with a generic error message.

## Link to frontend 
