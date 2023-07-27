# Data-Analysis-Intro
Exercises with the R language, Python and Machine Learning.

P.S. You can access the visualizations and analysis results of Assignment 1, 2 and 3 data with the .rmd and .docx files in the 4th assigment folder.

Sure! Here's a short README for the Airbnb Data Analysis Project:

# Airbnb Data Analysis Project

## Overview

This project aims to analyze Airbnb listing data to gain insights into pricing trends, neighborhood variations, and booking patterns. The dataset used for this analysis contains information about Airbnb listings in a specific city, including details such as listing prices, room types, reviews, and availability.

## Dataset

The dataset used for this analysis is a CSV file containing information about Airbnb listings. It includes the following columns:

- `id`: Unique identifier for each listing
- `name`: Name of the listing
- `host_id`: Unique identifier for the host of the listing
- `host_name`: Name of the host
- `neighbourhood_group`: The larger area in which the listing is located
- `neighbourhood`: The specific neighborhood where the listing is situated
- `latitude` and `longitude`: Geographic coordinates of the listing
- `room_type`: Type of room (e.g., Entire home/apt, Private room, Shared room)
- `price`: Listing price per night
- `minimum_nights`: Minimum number of nights required for booking
- `number_of_reviews`: Total number of reviews received for the listing
- `last_review`: Date of the last review
- `reviews_per_month`: Average number of reviews per month
- `calculated_host_listings_count`: Number of listings managed by the host
- `availability_365`: Number of days the listing is available for booking in a year

## Analysis

The project involves the following analyses and visualizations:

1. Data Cleaning: Remove duplicates, handle missing values, and convert data types to appropriate formats.

2. Price Distribution: Visualize the distribution of listing prices using a histogram.

3. Price Variation by Neighborhood: Explore how listing prices vary across different neighborhoods using box plots and bar charts for the top ten neighborhoods with the highest median prices.

4. Price Trends Over Time: Analyze the trends in listing prices over time using line plots to visualize average prices per month.

5. Reviews over Time: Investigate trends in the number of reviews over time using line plots to show the cumulative sum of reviews for each month.

6. Price and Availability Relationship: Explore if there is any relationship between listing prices and availability.

7. Room Type and Availability: Analyze how the availability of listings varies based on the room type.

8. Length of Stay: Investigate the distribution of minimum nights required for booking and identify any patterns related to booking durations.

9. Outlier Analysis: Identify any unique patterns or characteristics of listings that fall outside the typical range of values.

## Tools Used

- Python programming language
- Pandas library for data manipulation and analysis
- Matplotlib and Seaborn libraries for data visualization
- Folium library for interactive map visualization


