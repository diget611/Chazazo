package kh.spring.chazazo.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Aspect
@Service
public class AdviceLog {
	
	private static final Logger logger = LoggerFactory.getLogger(AdviceLog.class);
	
	@Pointcut("execution(public * kh.spring.chazazo..*Controller.*(..))")
	public void controllerPointCut() {}
	
	@Pointcut("execution(public * kh.spring.chazazo..*ServiceImpl.*(..))")
	public void serviceImplPointCut() {}
	
	@Pointcut("execution(public * kh.spring.chazazo..*Dao.*(..))")
	public void daoPointCut() {}
	
	@Around("controllerPointCut()")
	public Object aroundControllerPointCut(ProceedingJoinPoint pjp) throws Throwable {
		Object returnObj = null;
		
		logger.info("▶Ctrl: {} {}", pjp.getThis(), pjp.getSignature().getName());
		
		Object[] args = pjp.getArgs();
		for(int i = 0; i < args.length; i++) {
			logger.info("▶Ctrl Args[{}] : {}", i, args[i]);
		}
		
		StopWatch stopwatch = new StopWatch();
		stopwatch.start();
		returnObj = pjp.proceed();
		stopwatch.stop();
		
		logger.info("▶Ctrl Return[{}] : {}", stopwatch.getTotalTimeMillis(), returnObj);
		
		return returnObj;
	}
	
	@Around("serviceImplPointCut()")
	public Object aroundServiceImplPointCut(ProceedingJoinPoint pjp) throws Throwable {
		Object returnObj = null;
		
		logger.info("▶▶Srv : {} {}", pjp.getThis(), pjp.getSignature().getName());
		
		Object[] args = pjp.getArgs();
		for(int i = 0; i < args.length; i++) {
			logger.info("▶▶Srv Args[{}] : {}", i, args[i]);
		}
		
		StopWatch stopwatch = new StopWatch();
		stopwatch.start();
		returnObj = pjp.proceed();
		stopwatch.stop();
		
		logger.info("▶▶Srv Return[{}] : {}", stopwatch.getTotalTimeMillis(), returnObj);
		
		return returnObj;
	}
	
	@Around("daoPointCut()")
	public Object aroundDaoPointCut(ProceedingJoinPoint pjp) throws Throwable {
		Object returnObj = null;
		
		logger.info("▶▶▶Dao : {} {}", pjp.getThis(), pjp.getSignature().getName());
		
		Object[] args = pjp.getArgs();
		for(int i = 0; i < args.length; i++) {
			logger.info("▶▶▶Dao Args[{}] : {}", i, args[i]);
		}
		
		StopWatch stopwatch = new StopWatch();
		stopwatch.start();
		returnObj = pjp.proceed();
		stopwatch.stop();
		
		logger.info("▶▶▶Dao Return[{}] : {}", stopwatch.getTotalTimeMillis(), returnObj);
		
		return returnObj;
	}
}
