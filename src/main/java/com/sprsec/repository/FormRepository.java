package com.sprsec.repository;

import com.sprsec.model.FirstLevelForm;
import org.springframework.data.repository.CrudRepository;

public interface FormRepository
        extends CrudRepository<FirstLevelForm, Long> {
}
