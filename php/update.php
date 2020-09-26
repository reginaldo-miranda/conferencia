<?php session_start(); ?>
<?php
//include_once("BEfecha_conexao.php");
include_once("BEconexao_pdo.php");
include_once("BEinseir_cadastro.php");

function atualizar($coluna, $valor, $tabela, $where)
{
    echo ('FUNCAO dentro PDO') . "<br>";
    $conn = getconexao();

    if ((is_array($coluna)) and (is_array($valor))) {

        if (count($coluna) == count($valor)) {

            $valor_coluna = NULL;
            // colocar array em uma string
            for($i=0;$i<count($coluna);$i++){
                $valor_coluna .= "{$coluna[$i]} = '{$valor[$i]}', ";
            }
            // remover a virgula do  $valor_coluna acima
            $valor_coluna = substr($valor_coluna,0,-1);

        $atualizar = "UPDATE {$tabela} set {$valor_coluna} {$where}";

            /*$inserir = "INSERT INTO {$tabela} (" . implode(', ', $coluna) . ")
            VALUES ('" . implode('\', \'', $valor) . "')"; */



            $stmt = $conn->prepare($atualizar);

            if ($stmt->execute()) {
                echo ('salvo com sucesso') . "<br>";
                // header("location:FRcadastro.php?msg=enviado");
            } else {
                echo "nao salvou";
            }
        } else {
            return false;
        }
    } else {
          
        // $inserir = "INSERT INTO {$tabela} ({$coluna}) VALUES ('{$valor}')";

    $atualizar = "UPDATE {$tabela} set {$coluna} = '{$valor}' {$where}";
        $stmt = $conn->prepare($atualizar);
        if ($stmt->execute()) {
            echo "salvo sem arry";
        } else {
            echo "nao salvou sem arry";
        }
        return false;
    }
}
/* https://www.youtube.com/watch?v=9daDPkrfUsk&list=PLIZ0d6lKIbVpOxc0x1c4HpEWyK0JMsL49&index=17

teste

atualizar(array("nome","fone", "email"), array("jose","34512222", "jose@gmail.com"), "nome da tabela", "WHERE id = 1");


?>