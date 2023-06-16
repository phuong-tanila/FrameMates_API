package fu.training.FrameMates_API.share.helpers;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.ArrayList;
import java.util.List;

public class PaginationHelper {
    public static Sort.Direction getSortDirection(String direction){
        return direction.equals("asc") ? Sort.Direction.ASC : Sort.Direction.DESC;
    }
    public static List<Sort.Order> getSortOrders(List<String> orders){
        List<Sort.Order> ordersList = new ArrayList<>();
        for (String sortOrder : orders) {
            System.out.println(sortOrder);
            String[] splitedCurrentOrder = sortOrder.split("_");
            ordersList.add(new Sort.Order(getSortDirection(splitedCurrentOrder[1]), splitedCurrentOrder[0]));
        }
        return ordersList;
    }
    public static Pageable getPageable(int pageNo, int pageSize, List<String> orders){
        return PageRequest.of(pageNo, pageSize, Sort.by(getSortOrders(orders)));
    }
}
