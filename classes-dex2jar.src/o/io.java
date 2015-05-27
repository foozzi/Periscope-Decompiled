package o;

import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class io
  extends gk<Time>
{
  public static final gl LA = new ip();
  private final DateFormat LZ = new SimpleDateFormat("hh:mm:ss a");
  
  /* Error */
  public Time ʾ(jz paramjz)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 39	o/jz:J	()Lo/kb;
    //   6: getstatic 45	o/kb:NB	Lo/kb;
    //   9: if_acmpne +11 -> 20
    //   12: aload_1
    //   13: invokevirtual 48	o/jz:nextNull	()V
    //   16: aload_0
    //   17: monitorexit
    //   18: aconst_null
    //   19: areturn
    //   20: new 50	java/sql/Time
    //   23: dup
    //   24: aload_0
    //   25: getfield 29	o/io:LZ	Ljava/text/DateFormat;
    //   28: aload_1
    //   29: invokevirtual 54	o/jz:nextString	()Ljava/lang/String;
    //   32: invokevirtual 60	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   35: invokevirtual 66	java/util/Date:getTime	()J
    //   38: invokespecial 69	java/sql/Time:<init>	(J)V
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: areturn
    //   46: astore_1
    //   47: new 71	o/gf
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 74	o/gf:<init>	(Ljava/lang/Throwable;)V
    //   55: athrow
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	io
    //   0	61	1	paramjz	jz
    // Exception table:
    //   from	to	target	type
    //   20	42	46	java/text/ParseException
    //   2	16	56	finally
    //   20	42	56	finally
    //   47	56	56	finally
  }
  
  public void ˊ(kc paramkc, Time paramTime)
  {
    if (paramTime == null) {
      paramTime = null;
    }
    try
    {
      paramTime = this.LZ.format(paramTime);
      paramkc.ᖮ(paramTime);
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.io
 * JD-Core Version:    0.7.0.1
 */