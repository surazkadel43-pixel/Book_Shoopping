<?php
require_once 'config/config.php';
require_once 'includes/auth.php';

redirect_if_not_logged_in();

$book_id = $_GET['book_id'];
$user_id = $_SESSION['user_id'];

// Fetch the user's review
$stmt = $pdo->prepare("SELECT * FROM reviews WHERE book_id = :book_id AND user_id = :user_id");
$stmt->execute([
  ':book_id' => $book_id,
  ':user_id' => $user_id
]);
$review = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$review) {
  header('Location: book_details.php?book_id=' . $book_id);
  exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Review</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/styles.css" />
</head>

<body>
  <!-- Header -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.php">
        <img src="images/logo.png" alt="Logo" class="img-fluid" style="max-height: 50px;">
        Book Review Hub
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="logout.php">Sign Out</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Breadcrumbs -->
  <nav aria-label="breadcrumb" class="bg-light py-3">
    <ol class="breadcrumb container">
      <li class="breadcrumb-item"><a href="index.php">Home</a></li>
      <li class="breadcrumb-item"><a href="book_details.php?book_id=<?php echo $book_id; ?>">Book Details</a></li>
      <li class="breadcrumb-item active" aria-current="page">Edit Review</li>
    </ol>
  </nav>

  <!-- Main Content -->
  <div class="container mt-5">
    <h1 class="text-center mb-4">Edit Your Review</h1>
    <form action="update_review.php" method="POST">
      <input type="hidden" name="book_id" value="<?php echo $book_id; ?>">
      <div class="mb-3">
        <label for="rating" class="form-label">Rating</label>
        <select class="form-select" id="rating" name="rating" required>
          <option value="">Select Rating</option>
          <?php for ($i = 1; $i <= 5; $i++): ?>
            <option value="<?php echo $i; ?>" <?php echo ($review['rating'] == $i) ? 'selected' : ''; ?>><?php echo $i; ?>
            </option>
          <?php endfor; ?>
        </select>
      </div>
      <div class="mb-3">
        <label for="review" class="form-label">Review</label>
        <textarea class="form-control" id="review" name="review" rows="3"
          required><?php echo htmlspecialchars($review['review']); ?></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Update Review</button>
    </form>
  </div>

  <!-- Footer -->
  <footer class="bg-light text-center text-lg-start mt-5">
    <div class="container p-3">
      <div class="row">
        <div class="col-md-6 mb-3 mb-md-0">
          <img src="images/logo.png" alt="Logo" class="img-fluid" style="max-height: 50px;">
          <span class="ms-2">&copy; 2024 Book Review Hub</span>
        </div>
        <div class="col-md-6 text-md-end">
        </div>
      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>