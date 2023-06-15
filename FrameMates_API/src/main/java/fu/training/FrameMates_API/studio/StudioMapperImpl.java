package fu.training.FrameMates_API.studio;

public class StudioMapperImpl implements StudioMapper{
    @Override
    public Studio toEntity(StudioModel model) {
        if (model == null) {
            return null;
        }
        Studio entity = new Studio();
        entity.setName(model.getName());
        entity.setDescription(model.getDescription());
        entity.setAddress(model.getAddress());
        entity.setStatus(model.getStatus());
        entity.setBalance(model.getBalance());
        entity.setTotalRating(model.getTotalRating());
        entity.setAvatarStudio(model.getAvatarStudio());
        entity.setCoverImage(model.getCoverImage());
        entity.setCreateDate(model.getCreateDate());
        return entity;
    }

    @Override
    public StudioModel toModel(Studio entity) {
        if (entity == null) {
            return null;
        }
        StudioModel model = new StudioModel();
        model.setName(entity.getName());
        model.setDescription(entity.getDescription());
        model.setAddress(entity.getAddress());
        model.setStatus(entity.getStatus());
        model.setBalance(entity.getBalance());
        model.setTotalRating(entity.getTotalRating());
        model.setAvatarStudio(entity.getAvatarStudio());
        model.setCoverImage(entity.getCoverImage());
        model.setCreateDate(entity.getCreateDate());
        return model;
    }
}
