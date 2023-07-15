package fu.training.FrameMates_API.share.helpers;

import lombok.Data;
import org.springframework.data.domain.Page;

import java.util.List;

@Data
public class PaginationResponse <T>{
    private int pageNum;

    private int pageSize;

    private int totalPageNum;

    private long totalItems;

    private List<T> items;


    public PaginationResponse<T> convertFromPage(Page page, List<T> items){
        this.setTotalPageNum(page.getTotalPages());
        this.setItems(items);
        this.setPageSize(page.getSize());
        this.setTotalItems(page.getTotalElements());
        this.setPageNum(page.getNumber());
        return this;
    }
}
