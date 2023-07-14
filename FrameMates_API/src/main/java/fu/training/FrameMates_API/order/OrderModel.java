package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import fu.training.FrameMates_API.payment.Payment;
import fu.training.FrameMates_API.payment.PaymentModel;
import fu.training.FrameMates_API.voucherdetail.VoucherDetail;
import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter @Setter
public class OrderModel {
    private Integer orderId;

    private java.sql.Timestamp orderDate;

    private String status;

    private String description;

    private java.sql.Timestamp checkIn;

    private java.sql.Timestamp paymentDate;

    private Integer deposit;

    private String address;

    private CustomerModel customer;

    private PaymentModel paymentModel;

    private Set<OrderDetailModel> orderDetails;

}
