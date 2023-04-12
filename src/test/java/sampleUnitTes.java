
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class sampleUnitTes {

    @Test
    public void t1()
    {
        Assertions.assertTrue(new dummyTest().stringComp("RAM","RAM"));
    }

    @Test
    public void t6()
    {
        Assertions.assertTrue("RAM"!="RdAM");
    }
}
