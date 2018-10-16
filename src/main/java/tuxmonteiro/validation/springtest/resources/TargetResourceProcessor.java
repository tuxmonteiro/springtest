package tuxmonteiro.validation.springtest.resources;

import org.springframework.hateoas.Resource;
import org.springframework.hateoas.ResourceProcessor;
import org.springframework.stereotype.Component;
import tuxmonteiro.validation.springtest.entity.Target;

@Component
public class TargetResourceProcessor implements ResourceProcessor<Resource<Target>> {

    @Override
    public Resource<Target> process(Resource<Target> resource) {
        return new Resource<>(resource.getContent());
    }

}
