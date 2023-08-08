<?php
require_once '../utils/DbManager.php';
header('Content-Type: application/json; charset=UTF-8');

try {
    $db = getDb(); // $db ---> PDO
    $sql = "SELECT T.id, U.name, T.title, T.content, T.expired, T.status
            FROM todos AS T
                INNER JOIN users AS U
                    ON U.id = T.user_id";
    $stt = $db->prepare($sql); // $stt ---> PDOStatement
    $stt->execute();
    $result = [];
    while ($row = $stt->fetch(PDO::FETCH_ASSOC)) {
        $result[] = $row;
    }
    print(json_encode($result));
} catch (PDOException $e) {
    die("エラーメッセージ: {$e->getMessage()}");
}
