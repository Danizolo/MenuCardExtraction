/**
    * @description      : 
    * @author           : DHANUSH
    * @group            : 
    * @created          : 31/08/2024 - 20:16:45
    * 
    * MODIFICATION LOG
    * - Version         : 1.0.0
    * - Date            : 31/08/2024
    * - Author          : DHANUSH
    * - Modification    : 
**/
const Sequelize = require('sequelize')

const mysqlDataBase = 'restaurants';
const mysqlUser = 'root';
const mysqlPassWord = '';

const mysqlDbConnection = new Sequelize(mysqlDataBase, mysqlUser, mysqlPassWord, {
  host: 'localhost',
  dialect: 'mysql',
  dialectOptions: {
    useUTC: false, // for reading from database
  },
  timezone: '+05:30'
});


try {
  mysqlDbConnection.authenticate();
  console.log('Connection has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);
}

module.exports = mysqlDbConnection;

