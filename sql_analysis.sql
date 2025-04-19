create database Quotes;

use Quotes;

select * from quotes;

-- 1. Number of quotes by each author.
select author, count(distinct quote) as Number_of_Quotes
from quotes
group by author;
# Albert Einstein is the most quoted author with 10 quotes, followed by J.K. Rowling with 9, followed by authors like Marilyn Monroe (7), 
# Dr. Seuss and Mark Twain (6), C.S. Lewis and Jane Austen (5), while most others have 1–2 quotes each.

-- 2. The top 5 most common tags.
select tag, count(*) as total
from quotes
group by tag
order by total desc
limit 5;
# The top 5 most common tags are love, inspirational, life, humor, and books, with love leading at 14 occurrences.

-- 3. Authors who have more than 5 quotes.
select author, count(distinct quote) as Number_of_Quotes
from quotes
group by author
having Number_of_Quotes>5;
# Only five authors have more than 5 quotes: Albert Einstein, J.K. Rowling, Marilyn Monroe, Mark Twain, 
# and Dr. Seuss, with Einstein topping the list at 10 quotes.

-- 4. The longest quote and its author.
select author, quote, length(quote) as Quote_Length
from quotes
order by Quote_Length desc
limit 1;
# The longest quote in the dataset is by Marilyn Monroe, with 1084 characters, 
# emphasizing life's unpredictability and the importance of owning your choices.

-- 5. Quotes that include "life" in it.
select distinct quote
from quotes
where quote like '%life%';
#There are 10 quotes that include the word "life" in them.

-- 6. The smallest quote. 
select author, quote, length(quote) as Quote_Length
from quotes
order by Quote_Length
limit 1;
# The shortest quote is by William Nicholson — "We read to know we're not alone." 
# containing just 34 characters, yet offering a powerful reflection on the comforting nature of reading.

-- 7. The average length of quotes.
select round(avg(length(quote)),2) as Avg_Quote_Length
from quotes;
# On average, quotes in the dataset are 133.79 characters long, suggesting a moderate quote length—neither too brief nor too elaborate.