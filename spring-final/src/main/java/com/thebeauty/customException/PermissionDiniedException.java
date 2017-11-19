package com.thebeauty.customException;

import org.springframework.security.core.AuthenticationException;

public class PermissionDiniedException extends AuthenticationException {
	public PermissionDiniedException(String msg) {
		super(msg);
	}
}
