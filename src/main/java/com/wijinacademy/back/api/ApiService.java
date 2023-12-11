package com.wijinacademy.back.api;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class ApiService {

    private static final Logger logger = LoggerFactory.getLogger(ApiService.class);

    @GetMapping(value = "/")
    public Map<String,Object> pong()
    {
        logger.info("requete en GET sur / ");
        JSONObject reponse = new JSONObject();
        reponse.put("Reponse du serve","fine dude");
        return reponse.toMap();
    }
    @PostMapping(value = "/")
    public Map<String,Object> ping()
    {
        logger.info("Requete en post sur / ");
        JSONObject reponse = new JSONObject();
        reponse.put("Reponse sur post","j'suis la aussi");
        return reponse.toMap();
    }
}
