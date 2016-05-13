package com.agh.service.currentuser;

import com.agh.domain.CurrentUser;
import org.springframework.stereotype.Service;

@Service
public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);
}
