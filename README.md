SAL_BW_Project_2
📌 Overview
This project demonstrates the end-to-end process of extracting meaningful insights from a website using web scraping, performing SQL-based data exploration, and visualizing insights using Python-based Exploratory Data Analysis (EDA).
We use the publicly available website http://quotes.toscrape.com/ to extract quotes, authors, and associated tags. The data is stored in a structured CSV format, queried using SQL, and analyzed using Pandas, Matplotlib, and Seaborn.

How to Run the Project:
🛠️ Part 1: Web Scraping (Using Python)
Run web_scraper.py to scrape data. 
We scraped the following information from all pages of the website:
Author of each quote
Text of the quote
Tags associated with the quote
The scraped data is saved in a CSV file with the following format:
author, quote, tag_name
✅ All pagination is handled programmatically to ensure data is extracted from every page.
📄 File: web_scraper.py (To be filled with BeautifulSoup-based scraping logic.)

🧮 Part 2: SQL Insights
Once the data was scraped, we established a connection between Jupyter Notebook and MySQL Workbench to store the data directly into the SQL database. Run the code in —file to establish a connection and run SQL queries. 
The following insights were derived:
Number of quotes by each author
Albert Einstein is the most quoted author with 10 quotes, followed by J.K. Rowling with 9, followed by authors like Marilyn Monroe (7), Dr. Seuss and Mark Twain (6), C.S. Lewis and Jane Austen (5), while most others have 1–2 quotes each.
Top 5 most common tags
The top 5 most common tags are love, inspirational, life, humor, and books, with love leading at 14 occurrences.
Authors with more than 5 quotes
 Only five authors have more than 5 quotes: Albert Einstein, J.K. Rowling, Marilyn Monroe, Mark Twain, and Dr. Seuss, with Einstein topping the list at 10 quotes.
Longest quote and its author
The longest quote in the dataset is by Marilyn Monroe, with 1084 characters, emphasizing life's unpredictability and the importance of owning your choices.
📄 File: sql_analysis.sql (queries for detailed analysis)

📊 Part 3: Exploratory Data Analysis (EDA)
Performed using Pandas, Matplotlib, and Seaborn.
Run analysis.ipynb to analyze data distribution.
Basic EDA:
Dataset shape and column info
Count of missing values
Unique authors and tag distribution
Quote length calculation added as a new column: length_of_quote
Data Visualizations:
Bar Chart: Top 10 Most Quoted Authors
Pie Chart: Proportion of Top 5 Tags
Word Cloud: Most Frequent Words in Quotes
KDE Plot: Distribution of Quote Lengths
KDE Plot Insights (Statistical Analysis)
Statistical Summary:
Mean: 133.74
Median: 90.0
Standard Deviation: 172.18
Skewness: 4.60 (Highly Right Skewed)
Kurtosis: 22.36 (Leptokurtic - heavy-tailed distribution)
Interpretation:
The KDE plot is leptokurtic, meaning the distribution has a sharp peak with heavy tails.
It is positively skewed (right-skewed), indicating that a small number of very long quotes are pulling the mean higher.
Mean > Median, which confirms the effect of skewness.
The median remains a more reliable central measure due to its resistance to outliers.
📄 File: analysis.ipynb (Detailed insights with visuals and stats.)

📁 Project Structure
quotes-analysis/
├── web_scraper.py           # Scraping logic 
├── quotes.csv               # Scraped data
├── sql_analysis.sql         # SQL-based insights 
├── analysis.ipynb           # Pandas + Visualizations
├── python_sql.ipynb         # Jupyter Notebook to SQL connection.
└── README.md                # Project documentation

🔧 Setup Instructions
Clone the repository:
git clone https://github.com/yourusername/quotes-analysis.git
cd quotes-analysis
Install dependencies:
pip install -r requirements.txt
Run scraper:
python web_scraper.py
Explore with Jupyter Notebook:
jupyter notebook analysis.ipynb

📌 Dependencies
Python 3.x
BeautifulSoup4
Requests
Pandas
Matplotlib
Seaborn
WordCloud
SQLite (or any SQL engine)

📬 Author
Swapnil Prasad
Vaishnavi Karnik


Feel free to connect on GitHub for collaboration or feedback!

"Data is the new oil, but insights are the spark!"

