<?php

Database::initialize();

class Database
{
	/** TRUE if static variables have been initialized. FALSE otherwise
	 */
	private static $init = FALSE;
	/** The mysqli connection object
	 */
	public static $conn;
	/** initializes the static class variables. Only runs initialization once.
	 * does not return anything.
	 */
	public static function initialize()
	{
		if (self::$init === TRUE) return;
		self::$init = TRUE;
		//self::$conn = new mysqli("internal-db.s118007.gridserver.com", "db118007_eow", "System78*", "db118007_mfg");
		self::$conn = new mysqli("mysql.eowdev.com", "eowdev", "BOMhGywsQpMgs8", "joepug_eow");
		//self::$conn = new mysqli("localhost", "root", "root", "joepug_2025");
	}
}
