<?php
require_once 'config/config.php';
require_once 'includes/auth.php';

redirect_if_not_logged_in();

$user_id = $_SESSION['user_id'];
$book_id = $_POST['book_id'];

$stmt = $pdo->prepare("DELETE FROM reviews WHERE book_id = :book_id AND user_id = :user_id");
$stmt->execute([
    ':book_id' => $book_id,
    ':user_id' => $user_id
]);

// Update the book's overall rating
$stmt = $pdo->prepare("UPDATE books SET average_rating = COALESCE((SELECT AVG(rating) FROM reviews WHERE book_id = :book_id_avg), 0) WHERE id = :book_id_set");
$stmt->execute([':book_id_avg' => $book_id, ':book_id_set' => $book_id]);

header('Location: book_details.php?book_id=' . $book_id);