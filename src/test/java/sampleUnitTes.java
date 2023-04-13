import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.Map;

import java.util.*;

public class sampleUnitTes {

    @Test
    public void t1()
    {
        Assertions.assertTrue(new dummyTest().stringComp("RAM","RAM"));


    }

    @Test
    public void t6()
    {
        Assertions.assertFalse("RAM"!="RAM");
    }
}
