package o;

public class acv
  extends Throwable
{
  public acv(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acv
 * JD-Core Version:    0.7.0.1
 */