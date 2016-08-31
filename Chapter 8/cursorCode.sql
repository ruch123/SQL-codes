-- declare variables for use in cursors
declare @whatever varchar(100)

--declare your cursor 
DECLARE MY_cursor CURSOR
  for select statement
OPEN MY_cursor
FETCH NEXT FROM MY_cursor 
INTO --variables defined above. One for each column of the select statement 


WHILE @@FETCH_STATUS = 0
begin

--do some work


FETCH NEXT FROM MY_cursor
INTO --variables defined above
end
CLOSE MY_cursor
   DEALLOCATE MY_cursor
   

