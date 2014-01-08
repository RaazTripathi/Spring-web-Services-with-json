package com.laitkor.common.controller;

import java.util.Collection;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.codehaus.jackson.annotate.JsonProperty;
 
@JsonIgnoreProperties(ignoreUnknown = true)
public class Users
{
	@JsonProperty("user")

    private Collection<User> users;
 
    public Collection<User> getUsers() {
        return users;
    }
 
    public void setUsers(Collection<User> users) {
        this.users = users;
    }
}