package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.payment.PaymentModel;
import fu.training.FrameMates_API.studio.StudioModel;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class TransactionModel {
    private Integer transactionId;
    private Integer amount;
    private Timestamp createDate;
    private Integer status;
    private Boolean transactionType;
    private StudioModel studio;
    private PaymentModel payment;
}
