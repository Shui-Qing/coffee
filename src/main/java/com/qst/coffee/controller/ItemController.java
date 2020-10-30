package com.qst.coffee.controller;

import com.qst.coffee.Base.BaseController;
import com.qst.coffee.Utils.Pager;
import com.qst.coffee.Utils.SystemContext;
import com.qst.coffee.Utils.UUIDUtils;
import com.qst.coffee.pojo.Item;
import com.qst.coffee.pojo.ItemCategory;
import com.qst.coffee.service.ItemCategoryService;
import com.qst.coffee.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/item")
public class ItemController extends BaseController {

    @Autowired
    private ItemService itemService;

    @Autowired
    private ItemCategoryService itemCategoryService;

    /**
     * 查询商品列表
     */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, String name){

        List<Item> items = itemService.getAll(name);
        model.addAttribute("items",items);

        return "manage/commodity/shop";
    }

    /**
     * 添加商品
     */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from item_category where isDelete = 0 and pid is not null order by id";
        List<ItemCategory> listBySqlReturnEntity = itemCategoryService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        return "manage/commodity/add";
    }

    /**
     * 执行添加商品
     */
    @RequestMapping("/exAdd")
    public String exAdd(Item item, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        System.out.println("提交");
        itemCommon(item, files, request);
        System.out.println("123");
        item.setGmNum(0);
        System.out.println("456");
        item.setIsDelete(0);
        System.out.println("789");
//        System.out.println(item);
        itemService.insert(item);
        return "redirect:/item/findBySql";
    }

    /**
     * 修改商品
     */
    @RequestMapping("/update")
    public String update(Integer id, Model model){
        Item obj = itemService.load(id);
        String sql = "select * from item_category where isDelete = 0 and pid is not null order by id";
        List<ItemCategory> listBySqlReturnEntity = itemCategoryService.listBySqlReturnEntity(sql);
        model.addAttribute("types",listBySqlReturnEntity);
        model.addAttribute("obj",obj);
        return "manage/commodity/update";
    }

    /**
     * 执行修改商品
     */
    @RequestMapping(value = "/exUpdate")
    public String exUpdate(Item item, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        System.out.println(item);
        System.out.println(files);
        System.out.println(request);

        itemCommon(item, files, request);
        itemService.updateById(item);
        return "redirect:/item/findBySql";
    }

    /**
     * 文件上传（新增和修改的公共方法）
     */
    private void itemCommon(Item item, @RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) throws IOException {
        System.out.println("进入上传文件函数");
        if(files.length>0) {
            for (int s = 0; s < files.length; s++) {
                String n = UUIDUtils.create();
                String path = SystemContext.getRealPath() + n + files[s].getOriginalFilename();
                File newFile = new File(path);

                //通过CommonsMultipartFile的方法直接写文件
                files[s].transferTo(newFile);

                if (s == 0) {
                    item.setUrl1("\\upload\\" + n + files[s].getOriginalFilename());
                }
                if (s == 1) {
                    item.setUrl2("\\upload\\" + n + files[s].getOriginalFilename());
                }
                if (s == 2) {
                    item.setUrl3("\\upload\\" + n + files[s].getOriginalFilename());
                }
                if (s == 3) {
                    item.setUrl4("\\upload\\" + n + files[s].getOriginalFilename());
                }
                if (s == 4) {
                    item.setUrl5("\\upload\\" + n + files[s].getOriginalFilename());
                }
            }
        }
        ItemCategory byId = itemCategoryService.getById(item.getCategoryIdTwo());
        item.setCategoryIdOne(byId.getPid());
    }

    /**
     * 商品下架
     */
    @RequestMapping("/delete")
    public String update(Integer id){
        Item obj = itemService.load(id);
        obj.setIsDelete(1);
        itemService.updateById(obj);
        return "redirect:/item/findBySql";
    }
}
