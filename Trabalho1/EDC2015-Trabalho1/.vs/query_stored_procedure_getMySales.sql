CREATE PROC getMySales (@Username varchar(50))

as
		SELECT s.title_id, ord_num, stor_id, ord_date, qty, payterms
		FROM (((sales s join titles t ON s.title_id = t.title_id) JOIN titleauthor ta ON t.title_id = ta.title_id) JOIN authors ath ON ta.au_id = ath.au_id)
		WHERE CONCAT(ath.au_fname, ' ', ath.au_lname) = @Username

go