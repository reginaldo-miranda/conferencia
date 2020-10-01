<?php

/*
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
} 

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

$conteudo = strtr($conteudo, $trans);

fclose($fp);*/

 /*   
// $bd = 'vendapdv.db';
// $abre = fopen("..\arquivos_teste\\vendapdv.db", "r+");    

 //$my_file = 'list.txt';
$my_file = 'vendapdv.db';
//$handle = fopen($my_file, 'r');
$handle = fopen("..\arquivos_teste\\$my_file", "r+"); 
echo 'conectou no bco';
//if (file_exists($handle)) {
      echo 'dentro do 1 if';
    $data = '';
 //   if(filesize($my_file) > 0){
        echo 'dentro do 2 if';
        $data = fread($handle,filesize($my_file));
        echo ' data'.$data;
  //  }
   fclose($handle);
 echo 'fechei'    ;
//}

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



?> */
//----------------------------------------------------------------------



//Implement class to use paradox functions


class cParadox
{
    
    //members
    var $m_pxdoc  = NULL;
   // var $m_pxdoc = "..\arquivos_teste\\vendapdv.db";
    var $m_fp     = NULL;
    var $m_rs     = NULL;
    var $m_default_field_value = "";
    var $m_use_field_slashes   = false;   
    var $m_use_field_trim      = false;   
    var $filename =  "..\arquivos_teste\\vendapdv.db";
    
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

//usage example:
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

//--------------------------------------------------------------------------------

A navegação de código está disponível!
Navegue pelo seu código com facilidade. Clique nas chamadas de função e método para pular para suas definições ou referências no mesmo repositório. Saber mais

<? php
/ **
 * Classe de banco de dados Paradox
 *
 * Faz uso das funções Paradox do PHP (via pxlib) para acessar dados convenientemente
 * em um banco de dados Paradox com funções de estilo SQL.
 * @package Paradox DB
 * @author Luke Mundy
 * /
classe  Paradox_Database
{
	privado  $ _px = NULL ;
	privado  $ _fp = NULL ;
	
	private  $ _file = '' ;
	private  $ _mode = '' ;
	
	private  $ _select = array ();
	private  $ _where = array ();
	privado  $ _limit = 0 ;
	private  $ _offset = 0 ;
	
	/ **
	 * Construtor
	 *
	 * Defina alguns valores padrão
	 * @return void
	 * /
	 função  pública __construct ()
	{
		// Cria o objeto de banco de dados Paradox do PHP
		$ this -> _px = new paradox_db ();
	}
	
	/ **
	 * Destruidor
	 *
	 * Feche o banco de dados e o ponteiro do arquivo
	 * @return void
	 * /
	 função  pública __destruct ()
	{
		$ this -> _px -> close ();
		if ( $ this -> _fp ) fclose ( $ this -> _fp );
	}
	
	/ **
	 * Selecione quais campos retornar
	 * @return void
	 * /
	 seleção de função  pública ()
	{
		$ args = func_get_args ();
		
		// Foi fornecida uma matriz de campos?
		if ( is_array ( $ args [ 0 ]))
		{
			foreach ( $ args [ 0 ] as  $ field )
			{
				// Certifique-se de que é uma string e ainda não está na lista
				if ( is_string ( $ field ) &&! in_array ( $ field , $ this -> _select )) $ this -> _select [] = $ field ;
			}
		}
		// Ou uma lista separada por vírgulas?
		elseif ( is_string ( $ args [ 0 ]))
		{
			$ campos = explode ( ',' , $ args [ 0 ]);
			
			foreach ( $ campos  como  $ campo )
			{
				$ field = trim ( $ field );
				
				// Certifique-se de que o campo já não esteja na lista
				if (! in_array ( $ field , $ this -> _select )) $ this -> _select [] = $ field ;
			}
		}
		
		// Retorne $ this para que possamos fazer algum encadeamento de métodos legal
		return  $ this ;
	}
	
	/ **
	 * Filtre as linhas retornadas por um determinado critério
	 * @return void
	 * /
	 função  pública onde ()
	{
		$ args = func_get_args ();
		
		if ( is_array ( $ args [ 0 ]))
		{
			foreach ( $ args [ 0 ] as  $ test )
			{
				$ this -> _where [] = array (
					'campo' => $ test [ 0 ],
					'operador' => $ test [ 1 ],
					'valor' => escapeshellarg ( $ test [ 2 ])
				);
			}
		}
		elseif ( is_string ( $ args [ 0 ]))
		{
			$ this -> _where [] = array (
				'campo' => $ args [ 0 ],
				'operador' => $ args [ 1 ],
				'valor' => escapeshellarg ( $ args [ 2 ])
			);
		}
		
		// Retorne $ this para que possamos fazer algum encadeamento de métodos legal
		return  $ this ;
	}
	
	/ **
	 * Limite a quantidade de resultados de retorno
	 * @return void
	 * /
	 limite de função  pública ()
	{
		if ( func_num_args () == 1 ) $ this -> _limit = func_get_arg ( 0 );
		outro
		{
			$ this -> _offset = func_get_arg ( 0 );
			$ this -> _limit = func_get_arg ( 1 );
		}
		
		// Retorne $ this para que possamos fazer algum encadeamento de métodos legal
		return  $ this ;
	}
	
	/ **
	 * Obtenha registros
	 * @return array registros correspondentes
	 * /
	public  function  get ()
	{
		// Comece com um array vazio
		$ ret = array ();
		
		// Loop por todos os registros no banco de dados
		for ( $ x = 0 ; ( $ x < $ this -> num_records () && count ( $ ret ) < $ this -> _limit ); $ x ++)
		{			
			$ row = $ this -> _px -> retrieve_record ( $ x );
			
			if ( $ this -> _test ( $ row ))
			{
				foreach ( $ row  as  $ key => $ val )
				{
					// Encontre todos os campos que não estão na matriz selecionada
					if (! in_array ( $ key , $ this -> _select ) &&! empty ( $ this -> _select )) unset ( $ row [ $ key ]);
				}
				
				$ ret [] = $ linha ;
			}
		}
		
		return  $ ret ;
	}
	
	/ **
	* Abra o banco de dados
	* @param string $ file Caminho para o arquivo de banco de dados
	* @param string $ mode Modo de abertura de arquivo
	* @return bool TRUE em caso de sucesso, FALSE caso contrário
	* /
	 função  pública aberta ( $ file , $ mode = 'r' )
	{
		$ this -> _file = $ file ;
		$ this -> _mode = $ mode ;
		
		return  $ this -> _open ();
	}
	
	/ **
	* Testa a linha fornecida
	* @param array $ row
	* @return bool TRUE se a linha passa em todos os testes
	* /
	 função  privada _test ( $ row )
	{
		$ pass = TRUE ;
		
		// Se não houver testes, todas as linhas passarão
		if (! empty ( $ this -> _where ))
		{
			foreach ( $ this -> _where  as  $ test )
			{
				$ field = escapeshellarg ( $ row [ $ test [ 'field' ]]);			
			
				$ txt = "return ({$ field} {$ test ['operator']} {$ test ['value']});" ;
				
				// Verifique se há falha
				if (! eval ( $ txt ))
				{
					$ pass = FALSE ;
					
					// Não há necessidade de tentar outros testes
					pausa ;
				}
			}
		}
		
		return  $ pass ;
	}
	
	/ **
	* Função privada aberta
	* @return bool TRUE em caso de sucesso, FALSE caso contrário
	* /
	 função  pública _open ()
	{
		$ ret = FALSE ;
		
		// Verifique se o arquivo existe
		if ( file_exists ( $ this -> _file ))
		{
			$ this -> _fp = fopen ( $ this -> _file , $ this -> _mode );
			
			// Aberto com sucesso?
			if ( $ this -> _fp )
			{
				// Banco de dados aberto com sucesso?
				if ( $ this -> _px -> open_fp ( $ this -> _fp ))
				{
					$ ret = TRUE ;
				}
			}
		}
		
		return  $ ret ;
	}
	
	
	/ ** ----------------------------------------------- -------------------------
	 * Funções de acesso
	 * /
	
	public  function  get_file_pointer () { return  $ this -> _fp ; }
	public  function  get_paradox_object () { return  $ this -> _px ; }
	 função  pública num_records () { return  $ this -> _px -> numrecords (); }
	 função  pública num_fields () { return  $ this -> _px -> numfields (); }
	
	public  function  debug ()
	{
		echo  'SELECT' . print_r ( $ this -> _select , TRUE ). "\ n" ;
		echo  'ONDE' . print_r ( $ this -> _where , TRUE ). "\ n" ;
	}
}

// END - classe Paradox_Database

// https://github.com/lukemundy/paradox-php

?>



