package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.Queue;

public final class ᔄ<A, T, Z, R>
  implements ᔨ, 丿, ᘆ
{
  private static final Queue<ᔄ<?, ?, ?, ?>> me = ﾕ.ᵘ(0);
  private Context dV;
  private Class<R> dX;
  private ʷ eC;
  private A eb;
  private ﮆ ec;
  private ᖕ<? super A, R> eg;
  private Drawable ek;
  private ᔿ em;
  private ḹ<R> eo;
  private int ep;
  private int eq;
  private ʖ er;
  private ﺭ<Z> es;
  private Drawable ev;
  private ڔ<?> hL;
  private int mf;
  private int mg;
  private int mh;
  private ᔁ<A, T, Z, R> mi;
  private ᔭ mj;
  private boolean mk;
  private ﭩ<R> ml;
  private float mm;
  private Drawable mn;
  private boolean mo;
  private ʷ.ˋ mp;
  private ᔄ.if mq;
  private long startTime;
  private final String tag = String.valueOf(hashCode());
  
  private void ʾ(ڔ paramڔ)
  {
    this.eC.ᐝ(paramڔ);
    this.hL = null;
  }
  
  private void ʿ(String paramString)
  {
    Log.v("GenericRequest", paramString + " this: " + this.tag);
  }
  
  public static <A, T, Z, R> ᔄ<A, T, Z, R> ˊ(ᔁ<A, T, Z, R> paramᔁ, A paramA, ﮆ paramﮆ, Context paramContext, ᔿ paramᔿ, ﭩ<R> paramﭩ, float paramFloat, Drawable paramDrawable1, int paramInt1, Drawable paramDrawable2, int paramInt2, Drawable paramDrawable3, int paramInt3, ᖕ<? super A, R> paramᖕ, ᔭ paramᔭ, ʷ paramʷ, ﺭ<Z> paramﺭ, Class<R> paramClass, boolean paramBoolean, ḹ<R> paramḹ, int paramInt4, int paramInt5, ʖ paramʖ)
  {
    ᔄ localᔄ2 = (ᔄ)me.poll();
    ᔄ localᔄ1 = localᔄ2;
    if (localᔄ2 == null) {
      localᔄ1 = new ᔄ();
    }
    localᔄ1.ˋ(paramᔁ, paramA, paramﮆ, paramContext, paramᔿ, paramﭩ, paramFloat, paramDrawable1, paramInt1, paramDrawable2, paramInt2, paramDrawable3, paramInt3, paramᖕ, paramᔭ, paramʷ, paramﺭ, paramClass, paramBoolean, paramḹ, paramInt4, paramInt5, paramʖ);
    return localᔄ1;
  }
  
  private static void ˊ(String paramString1, Object paramObject, String paramString2)
  {
    if (paramObject == null)
    {
      paramString1 = new StringBuilder(paramString1);
      paramString1.append(" must not be null");
      if (paramString2 != null)
      {
        paramString1.append(", ");
        paramString1.append(paramString2);
      }
      throw new NullPointerException(paramString1.toString());
    }
  }
  
  private void ˊ(ڔ<?> paramڔ, R paramR)
  {
    boolean bool = ᔁ();
    this.mq = ᔄ.if.mu;
    this.hL = paramڔ;
    if ((this.eg == null) || (!this.eg.ˊ(paramR, this.eb, this.ml, this.mo, bool)))
    {
      ḟ localḟ = this.eo.ᐝ(this.mo, bool);
      this.ml.ˊ(paramR, localḟ);
    }
    ᔄ();
    if (Log.isLoggable("GenericRequest", 2)) {
      ʿ("Resource ready in " + ｯ.ˎ(this.startTime) + " size: " + paramڔ.getSize() * 9.5367431640625E-007D + " fromCache: " + this.mo);
    }
  }
  
  private void ˋ(ᔁ<A, T, Z, R> paramᔁ, A paramA, ﮆ paramﮆ, Context paramContext, ᔿ paramᔿ, ﭩ<R> paramﭩ, float paramFloat, Drawable paramDrawable1, int paramInt1, Drawable paramDrawable2, int paramInt2, Drawable paramDrawable3, int paramInt3, ᖕ<? super A, R> paramᖕ, ᔭ paramᔭ, ʷ paramʷ, ﺭ<Z> paramﺭ, Class<R> paramClass, boolean paramBoolean, ḹ<R> paramḹ, int paramInt4, int paramInt5, ʖ paramʖ)
  {
    this.mi = paramᔁ;
    this.eb = paramA;
    this.ec = paramﮆ;
    this.ev = paramDrawable3;
    this.mf = paramInt3;
    this.dV = paramContext.getApplicationContext();
    this.em = paramᔿ;
    this.ml = paramﭩ;
    this.mm = paramFloat;
    this.ek = paramDrawable1;
    this.mg = paramInt1;
    this.mn = paramDrawable2;
    this.mh = paramInt2;
    this.eg = paramᖕ;
    this.mj = paramᔭ;
    this.eC = paramʷ;
    this.es = paramﺭ;
    this.dX = paramClass;
    this.mk = paramBoolean;
    this.eo = paramḹ;
    this.eq = paramInt4;
    this.ep = paramInt5;
    this.er = paramʖ;
    this.mq = ᔄ.if.mr;
    if (paramA != null)
    {
      ˊ("ModelLoader", paramᔁ.Ꮠ(), "try .using(ModelLoader)");
      ˊ("Transcoder", paramᔁ.ᐜ(), "try .as*(Class).transcode(ResourceTranscoder)");
      ˊ("Transformation", paramﺭ, "try .transform(UnitTransformation.get())");
      if (paramʖ.ە()) {
        ˊ("SourceEncoder", paramᔁ.ｩ(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
      } else {
        ˊ("SourceDecoder", paramᔁ.ｃ(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
      }
      if ((paramʖ.ە()) || (paramʖ.ܕ())) {
        ˊ("CacheDecoder", paramᔁ.ﻩ(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
      }
      if (paramʖ.ܕ()) {
        ˊ("Encoder", paramᔁ.ｪ(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
      }
    }
  }
  
  private void ˎ(Exception paramException)
  {
    if (!ᔀ()) {
      return;
    }
    if (this.eb == null) {
      localObject2 = ᓸ();
    } else {
      localObject2 = null;
    }
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = ᓹ();
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = ᓼ();
    }
    this.ml.ˊ(paramException, (Drawable)localObject2);
  }
  
  private Drawable ᓸ()
  {
    if ((this.ev == null) && (this.mf > 0)) {
      this.ev = this.dV.getResources().getDrawable(this.mf);
    }
    return this.ev;
  }
  
  private Drawable ᓹ()
  {
    if ((this.mn == null) && (this.mh > 0)) {
      this.mn = this.dV.getResources().getDrawable(this.mh);
    }
    return this.mn;
  }
  
  private Drawable ᓼ()
  {
    if ((this.ek == null) && (this.mg > 0)) {
      this.ek = this.dV.getResources().getDrawable(this.mg);
    }
    return this.ek;
  }
  
  private boolean ᓽ()
  {
    return (this.mj == null) || (this.mj.ˎ(this));
  }
  
  private boolean ᔀ()
  {
    return (this.mj == null) || (this.mj.ˏ(this));
  }
  
  private boolean ᔁ()
  {
    return (this.mj == null) || (!this.mj.ᔨ());
  }
  
  private void ᔄ()
  {
    if (this.mj != null) {
      this.mj.ᐝ(this);
    }
  }
  
  public void begin()
  {
    this.startTime = ｯ.〱();
    if (this.eb == null)
    {
      ˊ(null);
      return;
    }
    this.mq = ᔄ.if.mt;
    if (ﾕ.ᵀ(this.eq, this.ep)) {
      ᴶ(this.eq, this.ep);
    } else {
      this.ml.ˊ(this);
    }
    if ((!isComplete()) && (!isFailed()) && (ᔀ())) {
      this.ml.ι(ᓼ());
    }
    if (Log.isLoggable("GenericRequest", 2)) {
      ʿ("finished run method in " + ｯ.ˎ(this.startTime));
    }
  }
  
  void cancel()
  {
    this.mq = ᔄ.if.mw;
    if (this.mp != null)
    {
      this.mp.cancel();
      this.mp = null;
    }
  }
  
  public void clear()
  {
    
    if (this.mq == ᔄ.if.mx) {
      return;
    }
    cancel();
    if (this.hL != null) {
      ʾ(this.hL);
    }
    if (ᔀ()) {
      this.ml.ͺ(ᓼ());
    }
    this.mq = ᔄ.if.mx;
  }
  
  public boolean isCancelled()
  {
    return (this.mq == ᔄ.if.mw) || (this.mq == ᔄ.if.mx);
  }
  
  public boolean isComplete()
  {
    return this.mq == ᔄ.if.mu;
  }
  
  public boolean isFailed()
  {
    return this.mq == ᔄ.if.mv;
  }
  
  public boolean isRunning()
  {
    return (this.mq == ᔄ.if.ms) || (this.mq == ᔄ.if.mt);
  }
  
  public void pause()
  {
    clear();
    this.mq = ᔄ.if.my;
  }
  
  public void recycle()
  {
    this.mi = null;
    this.eb = null;
    this.dV = null;
    this.ml = null;
    this.ek = null;
    this.mn = null;
    this.ev = null;
    this.eg = null;
    this.mj = null;
    this.es = null;
    this.eo = null;
    this.mo = false;
    this.mp = null;
    me.offer(this);
  }
  
  public void ʼ(ڔ<?> paramڔ)
  {
    if (paramڔ == null)
    {
      ˊ(new Exception("Expected to receive a Resource<R> with an object of " + this.dX + " inside, but instead got null."));
      return;
    }
    Object localObject2 = paramڔ.get();
    if ((localObject2 == null) || (!this.dX.isAssignableFrom(localObject2.getClass())))
    {
      ʾ(paramڔ);
      StringBuilder localStringBuilder = new StringBuilder().append("Expected to receive an object of ").append(this.dX).append(" but instead got ");
      if (localObject2 != null) {
        localObject1 = localObject2.getClass();
      } else {
        localObject1 = "";
      }
      Object localObject1 = localStringBuilder.append(localObject1).append("{").append(localObject2).append("}").append(" inside Resource{").append(paramڔ).append("}.");
      if (localObject2 != null) {
        paramڔ = "";
      } else {
        paramڔ = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
      }
      ˊ(new Exception(paramڔ));
      return;
    }
    if (!ᓽ())
    {
      ʾ(paramڔ);
      this.mq = ᔄ.if.mu;
      return;
    }
    ˊ(paramڔ, localObject2);
  }
  
  public void ˊ(Exception paramException)
  {
    if (Log.isLoggable("GenericRequest", 3)) {
      Log.d("GenericRequest", "load failed", paramException);
    }
    this.mq = ᔄ.if.mv;
    if ((this.eg == null) || (!this.eg.ˊ(paramException, this.eb, this.ml, ᔁ()))) {
      ˎ(paramException);
    }
  }
  
  public boolean ᓷ()
  {
    return isComplete();
  }
  
  public void ᴶ(int paramInt1, int paramInt2)
  {
    if (Log.isLoggable("GenericRequest", 2)) {
      ʿ("Got onSizeReady in " + ｯ.ˎ(this.startTime));
    }
    if (this.mq != ᔄ.if.mt) {
      return;
    }
    this.mq = ᔄ.if.ms;
    paramInt1 = Math.round(this.mm * paramInt1);
    paramInt2 = Math.round(this.mm * paramInt2);
    Į localĮ = this.mi.Ꮠ().ˎ(this.eb, paramInt1, paramInt2);
    if (localĮ == null)
    {
      ˊ(new Exception("Failed to load model: '" + this.eb + "'"));
      return;
    }
    ғ localғ = this.mi.ᐜ();
    if (Log.isLoggable("GenericRequest", 2)) {
      ʿ("finished setup for calling load in " + ｯ.ˎ(this.startTime));
    }
    this.mo = true;
    this.mp = this.eC.ˊ(this.ec, paramInt1, paramInt2, localĮ, this.mi, this.es, localғ, this.em, this.mk, this.er, this);
    boolean bool;
    if (this.hL != null) {
      bool = true;
    } else {
      bool = false;
    }
    this.mo = bool;
    if (Log.isLoggable("GenericRequest", 2)) {
      ʿ("finished onSizeReady in " + ｯ.ˎ(this.startTime));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */