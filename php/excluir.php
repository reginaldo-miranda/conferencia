<?php

include_once("BEconexao_pdo.php");
include_once("BEinseir_cadastro.php");

function deletar($tabela, $where=NULL){

$delete = "DELETE FROM {$tabela} {$where}";

if($conn = conect()){

    if(mysqli_query($tabela,$conn)){
        fecharConexao($conn);
        return true;
    }else{
        return false;
    }


}else{
    return false;
}

}





/*
https://www.youtube.com/watch?v=zRjAqeBkWU8&list=PLIZ0d6lKIbVpOxc0x1c4HpEWyK0JMsL49&index=23 
https://www.youtube.com/watch?v=KubuQ8nHWqU&list=PLIZ0d6lKIbVpOxc0x1c4HpEWyK0JMsL49&index=24

teste

$id = $_REQUEST[$id];

delete("nome da tabela", "WHERE id = $id");
*/
?>