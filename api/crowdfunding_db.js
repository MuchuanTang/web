class DBPool {
	constructor() {//Import the mysql module
		this.mysql = require("mysql"); //Set up the datebase configuratio
		this.config = {
			host: 'localhost', 
			port: 3306, 
			user: 'root', 
			password: 'admin',
			database: 'crowdFunding_db',
		};
		this.pool = this.mysql.createPool(this.config);
		//Create a connection pool using the configuration
	}
	query(sql, params, callBack) {
		this.pool.getConnection((err, connection) => {
			if (err) {
				throw err;
			}
			connection.query(sql, params, (err, results, fields) => {
				connection.release();
				if (err) {
					throw err;
				}  //Call the callback function with the results
				callBack && callBack({ results, fields });
			});
		});
	}
}

module.exports = new DBPool();