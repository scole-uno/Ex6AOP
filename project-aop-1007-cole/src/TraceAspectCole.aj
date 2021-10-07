
public aspect TraceAspectCole {
	pointcut classToTrace(): within(DataApp) || within(ComponentApp) || within(ServiceApp);
	pointcut methodToTrace(): execution(String getName());
	
	before(): methodToTrace() {
		String info = thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine();
		System.out.println(info);
	}
	
	after(): methodToTrace() {
		String info = thisJoinPointStaticPart.getSourceLocation().getFileName();
		System.out.println(info);
	}
}
