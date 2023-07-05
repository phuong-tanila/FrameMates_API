package fu.training.FrameMates_API.share.helpers;

import lombok.Data;

import java.util.List;

@Data
public class PaginationResponse <T>{
    private int pageNum;

    private int pageSize;

    private int totalPageNum;

    private long totalItems;

    private List<T> items;
}
