package hdw.shopping;

import java.util.ArrayList;
import java.util.List;

import hdw.DAO.CategoryDAO;
import hdw.bean.Category;

public class CategoryManager {
	public static void add(Category c) {
		CategoryDAO.save(c);
	}
	
	public static void addTop(String name,String descr) {
		Category c = new Category();
		//c.setId(-1);
		c.setPid(0);
		c.setName(name);
		c.setDescr(descr);
		c.setLeaf(true);
		c.setGrade(1);
		//add(c);
		CategoryDAO.save(c);
	}
	
	public static void addChild(int pid,String name,String descr,int grade) {
		Category c = new Category();
		//System.out.println(pid);
		//c.setId(-1);
		c.setPid(pid);
		c.setName(name);
		c.setDescr(descr);
		c.setLeaf(true);
		c.setGrade(grade + 1);
		//add(c);
		CategoryDAO.addChild(c);
	}

	public static void addChild(Category c) {
		addChild(c.getPid(),c.getName(),c.getDescr(),c.getGrade());
		//System.out.println(c.getPid());
		//System.out.println(c.getName());
	}
	
	public static Category loadById(int id) {
    	return CategoryDAO.loadById(id);
    }
	
	 public static List<Category> getCategories() {
	   	List<Category> categories = new ArrayList<Category>();
    	CategoryDAO.getCategories(categories,0);//参数，categories放入DAO中进行处理
    	return categories;
	}
	 
	 public static void deleteCategory(int id,int pid) {
	    	CategoryDAO.deleteCategory(id,pid);
	    	CategoryDAO.update(pid);
	    }
	    
	 public static void updateCategory(Category c) {
	    	CategoryDAO.updateCategory(c);
	    }
}
