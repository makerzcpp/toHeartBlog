package blog.utils;

import java.io.Serializable;

public class Result implements Serializable{

	private static final long serialVersionUID = -32874872141403803L;
	
   private boolean success;
   private int error;
   private Object data;
   
   public Result(boolean success) {
    this.success = success;
   }
   
   public Result error(int error) {
     this.error = error;
     return this;
   }
   
   public Result data(Object data) {
     this.data = data;
     return this;
   }
   
   public boolean isSuccess() {
     return this.success;
   }
   
   public void setSuccess(boolean success) {
     this.success = success;
   }
   
   public int getError() {
     return this.error;
   }
   
   public void setError(int error) {
     this.error = error;
   }
   
   public Object getData() {
     return this.data;
   }
   
   public void setData(Object data) {
     this.data = data;
   }
 }

