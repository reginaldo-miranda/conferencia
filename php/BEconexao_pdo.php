<?php
/*
function getconexao(){ // web 
    $dsn = 'mysql:host=localhost;dbname=id13607804_conversao;charset=utf8';
    $username = 'id13607804_reginaldo';
    $pass = 'n@mCVvsfsFF|>r7V';
    try{
        $pdo = new PDO($dsn, $username, $pass);
        return $pdo;
    }catch(PDOException $ex){
        echo 'Erro :' .$ex->getMessage();
    }
} */

/*
function getconexao(){
$dsn = 'mysql:host=localhost;dbname=vendas';
$username = 'root';
$pass = '';
$pdo = new PDO($dsn, $username, $pass);
} 

*/


/*
function getconexao(){
$servername = "localhost";
$username = "id13607804_reginaldo";
$password = "n@mCVvsfsFF|>r7V";
$database = "id13607804_conversao";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully"; 
    } catch(PDOException $e) {    
    echo "Connection failed: " . $e->getMessage();
    }*/

/*
/*
function getconexao(){
    $dsn = 'mysql:host=localhost;dbname=conversoa;charset=utf8';
    $username = 'root';
    $pass = '';
    try{
        $pdo = new PDO($dsn, $username, $pass);
        return $pdo;
    }catch(PDOException $ex){
        echo 'Erro :' .$ex->getMessage();
    }
}
*/

/*
function getconexao(){
    $dsn = 'mysql:host=localhost;dbname=vendas;charset=utf8';
    $username = 'root';
    $pass = '';
    try{
        $pdo = new PDO($dsn, $username, $pass);
        return $pdo;
    }catch(PDOException $ex){
        echo 'Erro :' .$ex->getMessage();
    }
}
*/

/*

//$conn =  odbc_connect ( "Driver={SQL Server};Server=$servername;Database=$dbname;", $username, $password ) or die ( "Connection failed: " . $conn );

$conn = '';
$db = '\\\\server\\resource\\db.mdb';
//$conn = new COM('ADODB.Connection');
$conn->Open("DRIVER={Driver do Microsoft Access (*.mdb)}; DBQ=$db");

$conn = odbc_connect('..\arquivos_teste\vendapdv.db','','');

if(!$conn){
  exit ('falha na conexao');  
}
$sql = "select * from vendapdv";
$rs = odbc_exec($conn,$sql);
if (!$rs){
    exit ("erro no sql");
}
while(odbc_fetch_row($rs)){
    $doc = odbc_result($rs,"docref");

}    

*/
//---------------------------------inicio --------------------------------------
$myDB=odbc_connect("Suporte","","");
$query="SELECT * from vendapdv";
$result=odbc_exec($myDB, $query);
print("Username: <b>");
print(odbc_result_all($result));
odbc_close($myDB);

//--------------------------------------------fim------------------------------


//-----------------------------inicio ------------------------------------
/*

$fp = fopen("..\arquivos_teste\\vendapdv.db", "r+");
// $fp = fopen("..\BRAINSOFT.INI", "r");

if (isset($fp)){
    echo 'conectou';
} 

//$fp = fopen("..\arquivos_teste\\vendapdv.db", "r");

 $conn = 'select docref from vendapdv';
/*
 foreach($conn as $file){
    $content = file_get_contents($file);
    $lines = substr_count($content, "\n");

    echo "Conteúdo: ", $content, PHP_EOL;
    echo "Linhas: ", $lines, PHP_EOL;
}
 

while (!feof($fp)) {
 $line = fgetss($fp);

//  $array = file("$fp");

 // list ($docref) = fscanf($fp, "%s %s %s");
  //$file_array = parse_ini_file("$fp");
  // echo($file_array);    
 // print_r($line);
 var_dump($line);
//echo $line = ['docref'];
   }
fclose($fp);
*/
//----------------------------------------------fim ------------------------------------------------------

 /*
$arq = 'modelo.php';
$conteudo = file_get_contents($arq);

$trans = array(
            '$varA' => $varA,
            '$varB' => $varB,
            '$varC' => $varC,
            '$varD' => $varD,
            '$varE' => $varE
         );

$conteudo = strtr($conteudo, $trans);*/
    
  
    
/*    
    
    
    
    
    $arq="modelo.php";
$abre=fopen($arq, "r+");
$conteudo = fread($abre, filesize($arq));
$conteudo = str_replace('$variavel', $variavel, $conteudo);
fclose($abre);

echo $conteudo;
    
    
    
    
}*/

// $fp =  fopen(__DIR__ . "vendapdv.db","r");
//$pxdoc = new paradox_db();
/* if(!$pxdoc->open_fp($fp)) {
    /* Error handling  *

}
// ...

$pxdoc->close();
fclose($fp);
   /*
if(!$pxdoc = px_new()) {
    /* Error handling  *
}

 
$fp = fopen("..\arquivos_teste\\vendapdv.db", "r");
if(!px_open_fp($pxdoc, $fp)) {
    /* Error handling
}
// ...
px_close($pxdoc);
px_delete($pxdoc);
fclose($fp);






$conn = new PDO("odbc:BCDADOS");


try{
    $conn = new PDO ("odbc:bcdados");

    die(json_encode(array('outcome' => true)));
}
catch(PDOException $ex){
     die(json_encode(array('outcome' => false, 'message' => 'Unable to connect')));
}
*/

/*

$database = "db";
$user = "user";
$password = "pass";
$hostname = "ip";
$port = portNo;
$db = odbc_connect("Driver={Your-Driver};HOSTNAME=$hostname;
Database=$database;PORT=$port;PROTOCOL=TCPIP;", $user, $password); */

//----------------------------------------------------------------------



//-------------------------------------------------inicio ----
/*
// $arquivo = fopen('meuarquivo.txt','r');
$fp = fopen("..\arquivos_teste\\vendapdv.db", "r");
$string = file_get_contents('..\arquivos_teste\\vendapdv.db');
echo $string;
fclose($fp);

*/ 
//------------------------------------------------- fim ----------------------




// ----------------------------------inicio -------------------------------
/*
$arquivo = fopen('..\arquivos_teste\\vendapdv.db','r');
if ($arquivo == false) die('Não foi possível abrir o arquivo.');
// imprime linha por linha ate detectar o final
while(!feof($arquivo)) {
	echo fgets($arquivo). '<br />';
    //$pessoa = mysql_fetch_assoc($arquivos);
    echo $arquivo['docref'];
    
}
fclose($arquivo);


/*
<?php
$filename = "c:\\files\\figura.gif";
$handle = fopen ($filename, "rb");
$conteudo = fread ($handle, filesize ($filename));
fclose ($handle);

*/

//-----------------------------------fim ----------------------------------
// https://www.google.com.br/search?newwindow=1&sxsrf=ALeKk00WhY1nNTzGopOVsIMTS2r4oSvp3w%3A1601926154493&lei=CnR7X8zEHfKj5OUPno-soAg&q=habilitar%20odbc%20php%20ini&ved=2ahUKEwjM8ZP7l57sAhXyEbkGHZ4HC4QQsKwBKAB6BAgfEAE&biw=1280&bih=686

// https://stackoverflow.com/questions/34200997/php-7-0-odbc-driver-for-windows

?>


