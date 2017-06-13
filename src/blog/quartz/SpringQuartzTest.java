package blog.quartz;
/***
 * 测试类 整合quartz，备用框架
 */
import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import blog.esSearch.esTest;

public class SpringQuartzTest extends QuartzJobBean{

	@Override
	protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {
		// TODO Auto-generated method stub
		
		this.work2();
	}
	
	 /*业务实现*/
    public void work() {
        System.out.println("执行调度任务："+new Date());
    }
    

	 /*业务实现*/
   public void work2() {
       System.out.println("执行调度任务2："+new Date());
   }

}
