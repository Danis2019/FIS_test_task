select name_author, count(name_author) as Популярность
from author
	inner join book_author using (author_id)
	inner join book using(book_id)
	inner join extradition using(book_id)
where YEAR(extradition.date_issue) = 2007
group by name_author
order by Популярность desc
LIMIT 1;
