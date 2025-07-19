/**
 * @description      :
 * @author           : DHANUSH
 * @group            :
 * @created          : 31/08/2024 - 20:31:49
 *
 * MODIFICATION LOG
 * - Version         : 1.0.0
 * - Date            : 31/08/2024
 * - Author          : DHANUSH
 * - Modification    :
 **/

const { DataTypes } = require("sequelize");
const mysqlDB = require("../config/database");
const sequelize = mysqlDB;

const buses = sequelize.define("images", {
  ID: {
    type: DataTypes.INTEGER(11),
    primaryKey: true,
    autoIncrement: true,
  },
  MENU: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  DISHES: {
    type: DataTypes.JSON, // supports arrays and objects
    allowNull: false,
  },
  createdAt: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  updatedAt: {
    type: DataTypes.DATE,
    allowNull: false,
  },
});

module.exports = buses;
