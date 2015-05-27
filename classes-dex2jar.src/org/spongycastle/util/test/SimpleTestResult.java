package org.spongycastle.util.test;

public class SimpleTestResult
  implements TestResult
{
  private static final String bkm = System.getProperty("line.separator");
  private String message;
  
  public String toString()
  {
    return this.message;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.test.SimpleTestResult
 * JD-Core Version:    0.7.0.1
 */