package o;

import android.util.Log;

class ز
  implements Runnable, כּ
{
  private final ᔿ em;
  private volatile boolean hb;
  private final ز.if ie;
  private final ʕ<?, ?, ?> jdField_if;
  private ز.ˊ ig;
  
  public ز(ز.if paramif, ʕ<?, ?, ?> paramʕ, ᔿ paramᔿ)
  {
    this.ie = paramif;
    this.jdField_if = paramʕ;
    this.ig = ز.ˊ.ih;
    this.em = paramᔿ;
  }
  
  private void ʽ(ڔ paramڔ)
  {
    this.ie.ʼ(paramڔ);
  }
  
  private void ˋ(Exception paramException)
  {
    if (Ꮁ())
    {
      this.ig = ز.ˊ.ii;
      this.ie.ˋ(this);
      return;
    }
    this.ie.ˊ(paramException);
  }
  
  private ڔ<?> ډ()
  {
    return this.jdField_if.ډ();
  }
  
  private boolean Ꮁ()
  {
    return this.ig == ز.ˊ.ih;
  }
  
  private ڔ<?> Ꮣ()
  {
    if (Ꮁ()) {
      return ᒦ();
    }
    return ډ();
  }
  
  private ڔ<?> ᒦ()
  {
    Object localObject2 = null;
    Object localObject1;
    try
    {
      localObject1 = this.jdField_if.װ();
    }
    catch (Exception localException)
    {
      localObject1 = localObject2;
      if (Log.isLoggable("EngineRunnable", 3))
      {
        Log.d("EngineRunnable", "Exception decoding result from cache: " + localException);
        localObject1 = localObject2;
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = this.jdField_if.ه();
    }
    return localObject2;
  }
  
  public void cancel()
  {
    this.hb = true;
    this.jdField_if.cancel();
  }
  
  public int getPriority()
  {
    return this.em.ordinal();
  }
  
  public void run()
  {
    if (this.hb) {
      return;
    }
    Object localObject1 = null;
    Object localObject2 = null;
    try
    {
      ڔ localڔ = Ꮣ();
      localObject2 = localڔ;
    }
    catch (Exception localException)
    {
      if (Log.isLoggable("EngineRunnable", 2)) {
        Log.v("EngineRunnable", "Exception decoding", localException);
      }
      localObject1 = localException;
    }
    if (this.hb)
    {
      if (localObject2 != null) {
        localObject2.recycle();
      }
      return;
    }
    if (localObject2 == null)
    {
      ˋ(localObject1);
      return;
    }
    ʽ(localObject2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø²
 * JD-Core Version:    0.7.0.1
 */