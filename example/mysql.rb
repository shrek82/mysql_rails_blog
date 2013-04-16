require  'mysql'    
begin    
  puts "connect to mysql database"  
  #连接数据库本机：用户名：root 密码：root 数据库：chj 端口：3306
  dbh = Mysql.real_connect("localhost", "root", "123456","artworld", 3306)     
  puts "connect success"    
  puts "==============="  
  #dbh.query("drop table if exists member")    
  #dbh.query("create table member(memberId int,email varchar(25),aliww varchar(30))")     
  #dbh.query("insert into member values(1,'abc@163.com,'zhangsan')")     
  #printf "%d rows were inserted/n",dbh.affected_rows    
  res = dbh.query("SELECT id,account,reg_at,login_time FROM user")
  while row = res.fetch_row do   
    puts "#{row[0]} | #{row[1]}  | #{row[2]}"   
  end   
rescue Mysql::Error=>e     
  puts "Error code:#{e.errno}"    
  puts "Error message:#{e.error}"    
  puts "Error SQLSTATE:#{e.sqlstate}" if e.respond_to?("sqlstate")     
ensure    
  dbh.close if dbh  
  puts "close the connection"  
end
gets()