//连接MySQL数据库的模块
const mysql = require('mysql');
var pool = mysql.createPool({
  host:'127.0.0.1',
  user:'root',
  password:'',
  database:'shasha',
  connectionLimit:10
});
//导出连接数据库
module.exports =pool; 




