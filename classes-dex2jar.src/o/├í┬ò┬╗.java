package o;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

public class ᕻ
  implements ร
{
  private final ᕻ.ˋ dT;
  private final Context dV;
  private final ᓲ dW;
  private final ᐜ dY;
  private final ধ dZ;
  private final Ꮠ eX;
  private ᕻ.if eY;
  
  public ᕻ(Context paramContext, ধ paramধ, Ꮠ paramᏐ)
  {
    this(paramContext, paramধ, paramᏐ, new ᐜ(), new ٳ());
  }
  
  ᕻ(Context paramContext, ধ paramধ, Ꮠ paramᏐ, ᐜ paramᐜ, ٳ paramٳ)
  {
    this.dV = paramContext.getApplicationContext();
    this.dZ = paramধ;
    this.eX = paramᏐ;
    this.dY = paramᐜ;
    this.dW = ᓲ.ˉ(paramContext);
    this.dT = new ᕻ.ˋ(this);
    paramContext = paramٳ.ˊ(paramContext, new ᕻ.ˎ(paramᐜ));
    if (ﾕ.ﮇ()) {
      new Handler(Looper.getMainLooper()).post(new ᴄ(this, paramধ));
    } else {
      paramধ.ˊ(this);
    }
    paramধ.ˊ(paramContext);
  }
  
  private static <T> Class<T> ˆ(T paramT)
  {
    if (paramT != null) {
      return paramT.getClass();
    }
    return null;
  }
  
  private <T> ઽ<T> ˊ(Class<T> paramClass)
  {
    ɽ localɽ1 = ᓲ.ˊ(paramClass, this.dV);
    ɽ localɽ2 = ᓲ.ˋ(paramClass, this.dV);
    if ((paramClass != null) && (localɽ1 == null) && (localɽ2 == null)) {
      throw new IllegalArgumentException("Unknown type " + paramClass + ". You must provide a Model of a type for" + " which there is a registered ModelLoader, if you are using a custom model, you must first call" + " Glide#register with a ModelLoaderFactory for your custom model class");
    }
    return (ઽ)this.dT.ˋ(new ઽ(paramClass, localɽ1, localɽ2, this.dV, this.dW, this.dY, this.dZ, this.dT));
  }
  
  public void onDestroy()
  {
    this.dY.ใ();
  }
  
  public void onLowMemory()
  {
    this.dW.ᒪ();
  }
  
  public void onStart()
  {
    ᴠ();
  }
  
  public void onStop()
  {
    ᘄ();
  }
  
  public void onTrimMemory(int paramInt)
  {
    this.dW.ﹼ(paramInt);
  }
  
  public ઽ<String> ʻ(String paramString)
  {
    return (ઽ)ᴰ().ʳ(paramString);
  }
  
  public <A, T> ᕻ.ˊ<A, T> ˊ(ɽ<A, T> paramɽ, Class<T> paramClass)
  {
    return new ᕻ.ˊ(this, paramɽ, paramClass);
  }
  
  public void ᘄ()
  {
    ﾕ.בּ();
    this.dY.ᘄ();
  }
  
  public void ᴠ()
  {
    ﾕ.בּ();
    this.dY.ᴠ();
  }
  
  public ઽ<String> ᴰ()
  {
    return ˊ(String.class);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»
 * JD-Core Version:    0.7.0.1
 */