<?php include 'includes/header.php'; ?>
<?php include 'config/config.php'; ?>
<?php include 'lib/Database.php';?>
<?php require 'lib/Mail/PHPMailerAutoload.php'; ?>
<?php
   $db = new Database();
   $id =  $_GET['mail'];
   $query = "SELECT * FROM jobs WHERE id = ".$id;
   $result = $db->select($query);
   $row = $result->fetch_assoc();
?>
<?php
       $id = $_SESSION['id'];
      $query2 = "SELECT * FROM users WHERE user_type = 2 AND id =".$id;
      $result2 = $db->select($query2);
      $row2 = $result2->fetch_assoc();
?>
<?php

$mail = new PHPMailer;

$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';                   // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'dariusdavidel@gmail.com';                 // SMTP username
$mail->Password = 'aaaaaaa';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable encryption, 'ssl' also accepted

$mail->From = $row2['email'];
$mail->FromName = $row2['first_name'].' '.$row['last_name'];
$mail->addAddress($row['contact_email']);
$mail->addAddress('dariusdavidel@gmail.com');// Add a recipient
                                               

$mail->WordWrap = 50;                                 // Set word wrap to 50 characters
$mail->isHTML(true);                                  // Set email format to HTML

$mail->Subject = $row2['first_name'].' Interessato al lavoro';
$mail->Body    = 'Ciao, controlla il tuo account sul sito JobSeeker ';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
}
?>

<?php include 'includes/footer.php'; ?>