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


$myDB=odbc_connect('arquivos','','');
$query="SELECT * FROM vendapdv";
$result=odbc_exec($myDB, $query);

print("DocRef <b>");
print(odbc_result_all($result));
odbc_close($myDB);
*/


//$conn =  odbc_connect ( "Driver={SQL Server};Server=$servername;Database=$dbname;", $username, $password ) or die ( "Connection failed: " . $conn );
/*
$conn = odbc_connect('_64','','');

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

}    */



/* $fp = fopen("..\arquivos_teste\\vendapdv.db", "r");
if (isset($fp)){
    echo 'conectou';
} */

$fp = fopen("..\arquivos_teste\\vendapdv.db", "r");

 $fp = 'select docref from vendapdv';

 foreach($com as $file){
    $content = file_get_contents($file);
    $lines = substr_count($content, "\n");

    echo "Conteúdo: ", $content, PHP_EOL;
    echo "Linhas: ", $lines, PHP_EOL;
}
  /*

while (!feof($fp)) {
  $line = fgetss($fp);
 // $array = file("$fp");

 // list ($docref) = fscanf($fp, "%s %s %s");
 // $file_array = parse_ini_file("$fp");
//  print_r($line);
 // var_dump($line);
   // echo $line = value['docref'];
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

 /*
$fp = fopen("..\arquivos_teste\\vendapdv.db", "r");
if(!px_open_fp($pxdoc, $fp)) {
    /* Error handling
}
// ...
px_close($pxdoc);
px_delete($pxdoc);
fclose($fp);


https://developer.ibm.com/br/technologies/php/articles/os-php-readfiles/ 


/*

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

<?php

/*
Implement class to use paradox functions
*/

class cParadox
{
    //members
    var $m_pxdoc = NULL;
    var $m_fp     = NULL;
    var $m_rs     = NULL;
    var $m_default_field_value = "";
    var $m_use_field_slashes = false;   
    var $m_use_field_trim      = false;   
    
    function Open($filename)
    {
        $this->m_pxdoc = px_new();
        if( !$this->m_pxdoc)
        {
            die ("cParadox Error: px_new() failed.");
        }
   
        $this->m_fp = fopen($filename, "r");
   
        if(!$this->m_fp)
        {
            px_delete($this->m_pxdoc);
            die ("cParadox Error: fopen failed.Filename:$filename");
        }
   
        if(!px_open_fp($this->m_pxdoc ,$this->m_fp) )
        {
            px_delete($this->m_pxdoc);
            fclose( $this->m_fp );
            die ("cParadox Erro: px_open_fp failed.");
        }
   
        return true;   
    }
   
    function Close()
    {
        if ( $this->m_pxdoc )
        {
            px_close($this->m_pxdoc);
            px_delete($this->m_pxdoc);
        }
       
        if( $this->m_fp )
        {
            fclose( $this->m_fp );
        }
    }
   
    function GetNumRecords()
    {
        return px_numrecords($this->m_pxdoc);
    }
   
        function GetRecord($rec)
    {
        $this->m_rs = px_get_record($this->m_pxdoc ,$rec ,PX_KEYTOUPPER);
        return $this->m_rs;
    }
       
    function GetField($field ,$type=0, $format=0)
    {
        if ( !$this->m_rs )
        {
            return false;     
        }
       
        $value = isset($this->m_rs[$field])? $this->m_rs[$field] : "";
       
        if ( $this->m_use_field_slashes )
        {
            $value = addslashes($value);
        }

        if ( $this->m_use_field_trim )
        {
            $value = trim($value);
        }
       

        return $value;
    }
};

usage example:
error_reporting(E_ERROR);
require_once("cparadox.inc");

$pdx = new cParadox();
$pdx->m_default_field_value = "?";//" ";

if ( $pdx->Open("USERS.DB") )
{
     $tot_rec = $pdx->GetNumRecords();
    if ( $tot_rec )
     {
        echo "<table border=1>\n";
        for($rec=0; $rec<$tot_rec; $rec++)
        {
             $pdx->GetRecord($rec);
   
            echo "<tr>";

            echo "<td>" . $rec;
            echo "<td>" . $pdx->GetField(CODE);
            echo "<td>" . $pdx->GetField(NAME);
        }
    }

    $pdx->Close(); 
}
?>
acima
baixa
0qwexak ¶4 anos atras
A bit updated version of wilson's class

<?php

class Paradox {
    var $doc = NULL;
    var $file = NULL;
    var $row = NULL;
    var $field_default_value = "";
    var $field_slashes = false;
    var $field_trim = false;

    function Open($filename) {
        $this->doc = px_new();
        if (!$this->doc) {
            die("Paradox Error: px_new() failed.");
        }
        $this->file = fopen($filename, "r");
        if (!$this->file) {
            px_delete($this->doc);
            die("Paradox Error: fopen failed. Filename:$filename");
        }
        if (!px_open_fp($this->doc, $this->file)) {
            px_delete($this->doc);
            fclose($this->file);
            die("Paradox Erro: px_open_fp failed.");
        }
        return true;
    }

    function Close() {
        if ($this->doc) {
            px_close($this->doc);
            px_delete($this->doc);
        }
        if ($this->file) {
            fclose($this->file);
        }
    }

    function GetNumRows() {
        return px_numrecords($this->doc);
    }

    function GetRow($id) {
        try {
            $this->row = px_get_record($this->doc, $id);
            throw new Exception('no record');
        } catch (Exception $e) {
            return "Exception: " . $e->getMessage() . "\n";
        }
        return $this->row;
    }

    function GetRows($num = 0) {
        if (function_exists(px_retrieve_record)) {
            return px_retrieve_record($this->doc, $num);
        } else {
            return "Unsupported function (px_retrieve_record) in paradox ext.";
        }
    }

    function GetSchema() {
        return px_get_schema($this->doc);
    }

    function GetInfo() {
        return px_get_info($this->doc);
    }

    function GetStringfromDate($date, $format = "d.m.Y") {
        return px_date2string($this->doc, $date, $format);
    }

    function GetStringfromTimestamp($date, $format = "d.m.Y H:i:s") {
        return px_timestamp2string($this->doc, $date, $format);
    }

    function GetField($field, $trim = 0, $slash = 0) {
        if (!$this->row) {
            return false;
        }
        $value = isset($this->row[$field]) ? $this->row[$field] : $this->field_default_value;
        if ($this->field_slashes or $slash) {
            $value = addslashes($value);
        }
        if ($this->field_trim or $trim) {
            $value = trim($value);
        }
        return $value;
    }

    function GetFieldInfo($id = 0) {
        return px_get_field($this->doc, $id);
    }
}
?>
?>


