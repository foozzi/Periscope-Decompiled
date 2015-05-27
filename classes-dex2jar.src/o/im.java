package o;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public final class im
  extends gk<Date>
{
  public static final gl LA = new in();
  private final DateFormat LZ = new SimpleDateFormat("MMM d, yyyy");
  
  public void ˊ(kc paramkc, Date paramDate)
  {
    if (paramDate == null) {
      paramDate = null;
    }
    try
    {
      paramDate = this.LZ.format(paramDate);
      paramkc.ᖮ(paramDate);
      return;
    }
    finally {}
  }
  
  /* Error */
  public Date ι(jz paramjz)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 62	o/jz:J	()Lo/kb;
    //   6: getstatic 68	o/kb:NB	Lo/kb;
    //   9: if_acmpne +11 -> 20
    //   12: aload_1
    //   13: invokevirtual 71	o/jz:nextNull	()V
    //   16: aload_0
    //   17: monitorexit
    //   18: aconst_null
    //   19: areturn
    //   20: new 33	java/sql/Date
    //   23: dup
    //   24: aload_0
    //   25: getfield 29	o/im:LZ	Ljava/text/DateFormat;
    //   28: aload_1
    //   29: invokevirtual 75	o/jz:nextString	()Ljava/lang/String;
    //   32: invokevirtual 79	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   35: invokevirtual 85	java/util/Date:getTime	()J
    //   38: invokespecial 88	java/sql/Date:<init>	(J)V
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: areturn
    //   46: astore_1
    //   47: new 90	o/gf
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 93	o/gf:<init>	(Ljava/lang/Throwable;)V
    //   55: athrow
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	im
    //   0	61	1	paramjz	jz
    // Exception table:
    //   from	to	target	type
    //   20	42	46	java/text/ParseException
    //   2	16	56	finally
    //   20	42	56	finally
    //   47	56	56	finally
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.im
 * JD-Core Version:    0.7.0.1
 */