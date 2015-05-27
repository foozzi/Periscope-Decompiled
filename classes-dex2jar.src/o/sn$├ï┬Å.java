package o;

import java.util.concurrent.Callable;

public abstract class sn$ˏ<V>
  implements Callable<V>
{
  /* Error */
  public V call()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 24	o/sn$ˏ:run	()Ljava/lang/Object;
    //   6: astore_2
    //   7: aload_0
    //   8: invokevirtual 27	o/sn$ˏ:done	()V
    //   11: aload_2
    //   12: areturn
    //   13: astore_3
    //   14: iconst_0
    //   15: ifne +12 -> 27
    //   18: new 19	o/sn$ˎ
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 30	o/sn$ˎ:<init>	(Ljava/io/IOException;)V
    //   26: athrow
    //   27: aload_2
    //   28: areturn
    //   29: astore_2
    //   30: iconst_1
    //   31: istore_1
    //   32: aload_2
    //   33: athrow
    //   34: astore_2
    //   35: iconst_1
    //   36: istore_1
    //   37: new 19	o/sn$ˎ
    //   40: dup
    //   41: aload_2
    //   42: invokespecial 30	o/sn$ˎ:<init>	(Ljava/io/IOException;)V
    //   45: athrow
    //   46: astore_2
    //   47: aload_0
    //   48: invokevirtual 27	o/sn$ˏ:done	()V
    //   51: goto +17 -> 68
    //   54: astore_3
    //   55: iload_1
    //   56: ifne +12 -> 68
    //   59: new 19	o/sn$ˎ
    //   62: dup
    //   63: aload_3
    //   64: invokespecial 30	o/sn$ˎ:<init>	(Ljava/io/IOException;)V
    //   67: athrow
    //   68: aload_2
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	ˏ
    //   1	55	1	i	int
    //   6	22	2	localObject1	Object
    //   29	4	2	localˎ	sn.ˎ
    //   34	8	2	localIOException1	java.io.IOException
    //   46	23	2	localObject2	Object
    //   13	10	3	localIOException2	java.io.IOException
    //   54	10	3	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   7	11	13	java/io/IOException
    //   2	7	29	o/sn$ˎ
    //   2	7	34	java/io/IOException
    //   2	7	46	finally
    //   32	34	46	finally
    //   37	46	46	finally
    //   47	51	54	java/io/IOException
  }
  
  protected abstract void done();
  
  protected abstract V run();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sn.Ë
 * JD-Core Version:    0.7.0.1
 */