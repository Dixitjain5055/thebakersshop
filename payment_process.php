<?php
// if(isset($_POST['payment_id'])) {
//        $order_id = $_POST['order_id'];
//       
//     }
include 'components/connect.php';
if(isset($_POST['payment_id'])){
  $payment_id=$_POST['payment_id'];
  $order_id = $_POST['order_id'];
  $payment_status = "completed";
  $update_payment = $conn->prepare("UPDATE `orders` SET `payment_status` = ? WHERE `orders`.id = ?");
  $update_payment->execute([$payment_status, $order_id]);
}
?>