package tuxmonteiro.validation.springtest.resources;

import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resource;
import org.springframework.hateoas.ResourceProcessor;
import org.springframework.stereotype.Component;
import tuxmonteiro.validation.springtest.entity.Target;

@Component
public class PagedTargetResourceProcessor implements ResourceProcessor<PagedResources<Resource<Target>>> {

    @Override
    public PagedResources<Resource<Target>> process(PagedResources<Resource<Target>> resource) {
        return new PagedResources<>(resource.getContent(), resource.getMetadata());
    }
}
