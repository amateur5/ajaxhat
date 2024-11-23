<?php
/*
 * @package AJAX_Chat
 * @author Sebastian Tschan
 * @author Philip Nicolcev
 * @copyright (c) Sebastian Tschan
 * @license Modified MIT License
 * @link https://blueimp.net/ajax/
 */

// Uključi prikazivanje grešaka za debagovanje
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Putanja do direktorijuma chat-a:
define('AJAX_CHAT_PATH', dirname($_SERVER['SCRIPT_FILENAME']).'/');

// Uključi prilagođene biblioteke i inicijalizaciju:
require(AJAX_CHAT_PATH.'lib/custom.php');

// Uključi biblioteke klasa:
require(AJAX_CHAT_PATH.'lib/classes.php');

// Inicijalizuj chat:
$ajaxChat = new CustomAJAXChat();
?>
