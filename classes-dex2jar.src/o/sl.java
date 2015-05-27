package o;

import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class sl
  implements sq
{
  private final ps UT;
  private ss XL;
  private boolean XM;
  private SSLSocketFactory sslSocketFactory;
  
  public sl()
  {
    this(new pi());
  }
  
  public sl(ps paramps)
  {
    this.UT = paramps;
  }
  
  private void dn()
  {
    try
    {
      this.XM = false;
      this.sslSocketFactory = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  private SSLSocketFactory jdMethod_do()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 32	o/sl:XM	Z
    //   7: aload_0
    //   8: getfield 40	o/sl:XL	Lo/ss;
    //   11: invokestatic 46	o/sr:ˋ	(Lo/ss;)Ljavax/net/ssl/SSLSocketFactory;
    //   14: astore_1
    //   15: aload_0
    //   16: getfield 29	o/sl:UT	Lo/ps;
    //   19: ldc 48
    //   21: ldc 50
    //   23: invokeinterface 56 3 0
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: areturn
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 29	o/sl:UT	Lo/ps;
    //   37: ldc 48
    //   39: ldc 58
    //   41: aload_1
    //   42: invokeinterface 62 4 0
    //   47: aload_0
    //   48: monitorexit
    //   49: aconst_null
    //   50: areturn
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	sl
    //   14	17	1	localSSLSocketFactory	SSLSocketFactory
    //   32	10	1	localException	java.lang.Exception
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   7	28	32	java/lang/Exception
    //   2	7	51	finally
    //   7	28	51	finally
    //   33	47	51	finally
  }
  
  private SSLSocketFactory getSSLSocketFactory()
  {
    try
    {
      if ((this.sslSocketFactory == null) && (!this.XM)) {
        this.sslSocketFactory = jdMethod_do();
      }
      SSLSocketFactory localSSLSocketFactory = this.sslSocketFactory;
      return localSSLSocketFactory;
    }
    finally {}
  }
  
  private boolean ᕝ(String paramString)
  {
    return (paramString != null) && (paramString.toLowerCase(Locale.US).startsWith("https"));
  }
  
  public sn ˊ(sm paramsm, String paramString, Map<String, String> paramMap)
  {
    switch (1.XN[paramsm.ordinal()])
    {
    default: 
      break;
    case 1: 
      paramsm = sn.ˊ(paramString, paramMap, true);
      break;
    case 2: 
      paramsm = sn.ˋ(paramString, paramMap, true);
      break;
    case 3: 
      paramsm = sn.ˑ(paramString);
      break;
    case 4: 
      paramsm = sn.ـ(paramString);
      break;
    }
    throw new IllegalArgumentException("Unsupported HTTP method!");
    if ((ᕝ(paramString)) && (this.XL != null))
    {
      paramString = getSSLSocketFactory();
      if (paramString != null) {
        ((HttpsURLConnection)paramsm.dr()).setSSLSocketFactory(paramString);
      }
    }
    return paramsm;
  }
  
  public void ˊ(ss paramss)
  {
    if (this.XL != paramss)
    {
      this.XL = paramss;
      dn();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sl
 * JD-Core Version:    0.7.0.1
 */