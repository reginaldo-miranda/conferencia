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



//$conn =  odbc_connect ( "Driver={SQL Server};Server=$servername;Database=$dbname;", $username, $password ) or die ( "Connection failed: " . $conn );
/*
$conn = odbc_connect('...\BRAINCFG.INI','','');

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
*/  

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
fclose($fp);
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


https://developer.ibm.com/br/technologies/php/articles/os-php-readfiles/ 



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


?>


