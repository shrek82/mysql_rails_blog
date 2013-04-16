import MySQLdb 
db = MySQLdb.connect(host = 'localhost', user = 'root', passwd = '123456', db = 'artworld') 
cursor = db.cursor() 
cursor.execute('select * from user') 
rs = cursor.fetchall() 
print rs 