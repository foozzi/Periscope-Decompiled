package o;

import android.util.Log;

class ʕ<A, T, Z>
{
  private static final ʕ.ˊ hc = new ʕ.ˊ();
  private final ᔿ em;
  private final ʖ er;
  private final ﺭ<T> es;
  private volatile boolean hb;
  private final τ hd;
  private final Į<A> he;
  private final int height;
  private final ᓹ<A, T> hf;
  private final ғ<T, Z> hg;
  private final ʕ.if hh;
  private final ʕ.ˊ hi;
  private final int width;
  
  public ʕ(τ paramτ, int paramInt1, int paramInt2, Į<A> paramĮ, ᓹ<A, T> paramᓹ, ﺭ<T> paramﺭ, ғ<T, Z> paramғ, ʕ.if paramif, ʖ paramʖ, ᔿ paramᔿ)
  {
    this(paramτ, paramInt1, paramInt2, paramĮ, paramᓹ, paramﺭ, paramғ, paramif, paramʖ, paramᔿ, hc);
  }
  
  ʕ(τ paramτ, int paramInt1, int paramInt2, Į<A> paramĮ, ᓹ<A, T> paramᓹ, ﺭ<T> paramﺭ, ғ<T, Z> paramғ, ʕ.if paramif, ʖ paramʖ, ᔿ paramᔿ, ʕ.ˊ paramˊ)
  {
    this.hd = paramτ;
    this.width = paramInt1;
    this.height = paramInt2;
    this.he = paramĮ;
    this.hf = paramᓹ;
    this.es = paramﺭ;
    this.hg = paramғ;
    this.hh = paramif;
    this.er = paramʖ;
    this.em = paramᔿ;
    this.hi = paramˊ;
  }
  
  private ڔ<Z> ˊ(ڔ<T> paramڔ)
  {
    long l = ｯ.〱();
    paramڔ = ˎ(paramڔ);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Transformed resource from source", l);
    }
    ˋ(paramڔ);
    l = ｯ.〱();
    paramڔ = ˏ(paramڔ);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Transcoded transformed from source", l);
    }
    return paramڔ;
  }
  
  private void ˋ(String paramString, long paramLong)
  {
    Log.v("DecodeJob", paramString + " in " + ｯ.ˎ(paramLong) + ", key: " + this.hd);
  }
  
  private void ˋ(ڔ<T> paramڔ)
  {
    if ((paramڔ == null) || (!this.er.ܕ())) {
      return;
    }
    long l = ｯ.〱();
    paramڔ = new ʕ.ˋ(this, this.hf.ｪ(), paramڔ);
    this.hh.ڗ().ˊ(this.hd, paramڔ);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Wrote transformed from source to cache", l);
    }
  }
  
  private ڔ<T> ˎ(ڔ<T> paramڔ)
  {
    if (paramڔ == null) {
      return null;
    }
    ڔ localڔ = this.es.ˊ(paramڔ, this.width, this.height);
    if (!paramڔ.equals(localڔ)) {
      paramڔ.recycle();
    }
    return localڔ;
  }
  
  private ڔ<T> ˎ(ﮆ paramﮆ)
  {
    Object localObject = this.hh.ڗ().ᐝ(paramﮆ);
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = this.hf.ﻩ().ˋ(localObject, this.width, this.height);
      if (localObject == null)
      {
        this.hh.ڗ().ʻ(paramﮆ);
        return localObject;
      }
    }
    finally
    {
      if (0 == 0) {
        this.hh.ڗ().ʻ(paramﮆ);
      }
    }
    return localڔ;
  }
  
  private ڔ<Z> ˏ(ڔ<T> paramڔ)
  {
    if (paramڔ == null) {
      return null;
    }
    return this.hg.ˏ(paramڔ);
  }
  
  private ڔ<T> ږ()
  {
    try
    {
      long l = ｯ.〱();
      Object localObject1 = this.he.ˊ(this.em);
      if (Log.isLoggable("DecodeJob", 2)) {
        ˋ("Fetched data", l);
      }
      boolean bool = this.hb;
      if (bool) {
        return null;
      }
      localObject1 = ۥ(localObject1);
      return localObject1;
    }
    finally
    {
      this.he.ב();
    }
  }
  
  private ڔ<T> ۥ(A paramA)
  {
    if (this.er.ە()) {
      return ᐠ(paramA);
    }
    long l = ｯ.〱();
    paramA = this.hf.ｃ().ˋ(paramA, this.width, this.height);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Decoded from source", l);
    }
    return paramA;
  }
  
  private ڔ<T> ᐠ(A paramA)
  {
    long l = ｯ.〱();
    paramA = new ʕ.ˋ(this, this.hf.ｩ(), paramA);
    this.hh.ڗ().ˊ(this.hd.ๆ(), paramA);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Wrote source to cache", l);
    }
    l = ｯ.〱();
    paramA = ˎ(this.hd.ๆ());
    if ((Log.isLoggable("DecodeJob", 2)) && (paramA != null)) {
      ˋ("Decoded source from cache", l);
    }
    return paramA;
  }
  
  public void cancel()
  {
    this.hb = true;
    this.he.cancel();
  }
  
  public ڔ<Z> װ()
  {
    if (!this.er.ܕ()) {
      return null;
    }
    long l = ｯ.〱();
    ڔ localڔ = ˎ(this.hd);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Decoded transformed from cache", l);
    }
    l = ｯ.〱();
    localڔ = ˏ(localڔ);
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Transcoded transformed from cache", l);
    }
    return localڔ;
  }
  
  public ڔ<Z> ه()
  {
    if (!this.er.ە()) {
      return null;
    }
    long l = ｯ.〱();
    ڔ localڔ = ˎ(this.hd.ๆ());
    if (Log.isLoggable("DecodeJob", 2)) {
      ˋ("Decoded source from cache", l);
    }
    return ˊ(localڔ);
  }
  
  public ڔ<Z> ډ()
  {
    return ˊ(ږ());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */