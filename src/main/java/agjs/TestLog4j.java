package agjs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestLog4j {
	private static Logger logger = LoggerFactory.getLogger(TestLog4j.class);
	public static void main(String[] args) {
		logger.trace("Trace message");
        logger.debug("Debug message");
        logger.info("Info message");
        logger.warn("Warn message");
        logger.error("Error message");
	}

}
