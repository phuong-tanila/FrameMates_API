package fu.training.FrameMates_API.voucher;

import lombok.Data;

@Data
public class VoucherModel {
    private java.sql.Timestamp createDate;
    private java.sql.Timestamp effectiveDate;
    private java.sql.Timestamp expirationDate;
    private String code;
    private String description;
    private Integer quantity;
    private Integer availableQuantity;
}
