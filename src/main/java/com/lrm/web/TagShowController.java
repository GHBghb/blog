package com.lrm.web;

import antlr.StringUtils;
import com.lrm.po.Tag;
import com.lrm.service.BlogService;
import com.lrm.service.TagService;
import com.lrm.vo.BlogQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by ghb on 2017/10/23.
 */
@Controller
public class TagShowController {
    @Autowired
    private TagService tagService;

    @Autowired
    private BlogService blogService;

    @GetMapping("/tags/{id}")
    public String tags(@PageableDefault(size = 8, sort = {"updateTime"}, direction = Sort.Direction.DESC) Pageable pageable,
                        @PathVariable Long id, Model model) {


        //String tagId = redisTemplate.opsForValue().get("tagsid");
        //String tagName = redisTemplate.opsForValue().get("tagsName");
        List<Tag> tags = new ArrayList<>();
        /*if(tagId == null || tagId.equals("") || tagName == null || tagName.equals("")) {
            tags = tagService.listTagTop(10000);
            String tagsid = tags.stream().map(number -> String.valueOf(number.getId()))
                    .collect(Collectors.joining(", "));
            String tagsName = tags.stream().map(number -> String.valueOf(number.getName()))
                    .collect(Collectors.joining(", "));
            redisTemplate.opsForValue().set("tagsid", tagsid);
            redisTemplate.opsForValue().set("tagsName", tagsName);

        } else {
            tags.clear();
            String [] tagid = tagId.split(",");
            String [] tagname = tagName.split(",");
            for (int i = 0; i < tagid.length; i++) {
                tags.add(new Tag(Long.parseLong(tagid[i]), tagname[i]));
            }
        }*/
        tags = tagService.listTagTop(10000);
        if (id == -1) {
           id = tags.get(0).getId();
        }
        model.addAttribute("tags", tags);
        model.addAttribute("page", blogService.listBlog(id,pageable));
        model.addAttribute("activeTagId", id);
        return "tags";
    }
}
