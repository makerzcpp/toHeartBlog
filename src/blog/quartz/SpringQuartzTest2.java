package blog.quartz;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

public class SpringQuartzTest2 extends QuartzJobBean{

	@Override
	protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {
		// TODO Auto-generated method stub
		//this.work();
		//this.work2();
	}
	
	 /*业务实现*/
    public void work() {
        System.out.println("执行调度任务3："+new Date());
    }
    

	 /*业务实现*/
   public void work2() {
       System.out.println("执行调度任务4："+new Date());
   }

}
