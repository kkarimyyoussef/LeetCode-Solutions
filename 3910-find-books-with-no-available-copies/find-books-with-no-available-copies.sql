SELECT 
    l.book_id,
    l.title,
    l.author,
    l.genre,
    l.publication_year,
    COUNT(b.record_id) AS current_borrowers
FROM library_books l
JOIN borrowing_records b
    ON l.book_id = b.book_id
WHERE b.return_date IS NULL
GROUP BY 
    l.book_id, # this is unqiue to the book only this is logically needed
    l.title, # the rest is inluded to obey sql (ONLY_FULL_GROUP_BY) rule.
    l.author,
    l.genre,
    l.publication_year,
    l.total_copies
HAVING COUNT(l.author) = l.total_copies
ORDER BY current_borrowers DESC, l.title;