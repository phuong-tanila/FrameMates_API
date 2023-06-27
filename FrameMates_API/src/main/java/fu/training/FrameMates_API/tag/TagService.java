package fu.training.FrameMates_API.tag;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

import java.util.List;

public interface TagService {
    long countTag();
    Tag createTag(Tag tag);

    List<Tag> createTags(List<Tag> tags);
    List<Tag> getAll();

    Tag getById(int id) throws RecordNotFoundException;

}
