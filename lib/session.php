<?php
/**
 * Session class
 */
class Session {
	
	public static function init(){
		session_start();
	}
/*setter*/
	public static function set($key,$val){

		$_SESSION[$key] = $val;
	}

	/*getter /use value */
		public static function get($key){
			if (isset($_SESSION[$key])) {
				return $_SESSION[$key];
			}else{
				return false;
			}
		}

/*page check for login wheather you login or not*/
		public static function checkSession(){
				self::init();
				if (self::get("login") == false) {
					self:: destroy();
					header("location:login.php");
				}

		}
		public static function checklogin(){
				self::init();
				if (self::get("login") == true) {
					header("location:index.php");
				}

		}

		public static function destroy(){
			session_destroy();
			header("location:login.php");
		}

}



?>