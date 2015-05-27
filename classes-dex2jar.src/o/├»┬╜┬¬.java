package o;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

class ｪ
{
  private final Handler handler;
  private boolean kI = false;
  private final ｪ.ˊ kU;
  private final ᵨ kV;
  private boolean kW = false;
  private ເ<ᵨ, ᵨ, Bitmap, Bitmap> kX;
  private ｪ.if kY;
  private boolean kZ;
  
  public ｪ(Context paramContext, ｪ.ˊ paramˊ, ᵨ paramᵨ, int paramInt1, int paramInt2)
  {
    this(paramˊ, paramᵨ, null, ˊ(paramContext, paramᵨ, paramInt1, paramInt2, ᓲ.ˉ(paramContext).Ꮀ()));
  }
  
  ｪ(ｪ.ˊ paramˊ, ᵨ paramᵨ, Handler paramHandler, ເ<ᵨ, ᵨ, Bitmap, Bitmap> paramເ)
  {
    Handler localHandler = paramHandler;
    if (paramHandler == null) {
      localHandler = new Handler(Looper.getMainLooper(), new ｪ.ˋ(this, null));
    }
    this.kU = paramˊ;
    this.kV = paramᵨ;
    this.handler = localHandler;
    this.kX = paramເ;
  }
  
  private static ເ<ᵨ, ᵨ, Bitmap, Bitmap> ˊ(Context paramContext, ᵨ paramᵨ, int paramInt1, int paramInt2, ი paramი)
  {
    paramი = new ﾅ(paramი);
    ﾃ localﾃ = new ﾃ();
    ﭥ localﭥ = Ꭻ.ﮅ();
    return ᓲ.ˌ(paramContext).ˊ(localﾃ, ᵨ.class).ˡ(paramᵨ).ˋ(Bitmap.class).ˋ(localﭥ).ˋ(paramი).ˡ(true).ˋ(ʖ.hm).ᔈ(paramInt1, paramInt2);
  }
  
  private void Ґ()
  {
    if ((!this.kI) || (this.kW)) {
      return;
    }
    this.kW = true;
    this.kV.advance();
    long l1 = SystemClock.uptimeMillis();
    long l2 = this.kV.ṟ();
    ｪ.if localif = new ｪ.if(this.handler, this.kV.ẛ(), l1 + l2);
    this.kX.ˋ(new ｪ.ˎ()).ˊ(localif);
  }
  
  public void clear()
  {
    stop();
    if (this.kY != null)
    {
      ᓲ.ˎ(this.kY);
      this.kY = null;
    }
    this.kZ = true;
  }
  
  public void start()
  {
    if (this.kI) {
      return;
    }
    this.kI = true;
    this.kZ = false;
    Ґ();
  }
  
  public void stop()
  {
    this.kI = false;
  }
  
  public void ˊ(ﺭ<Bitmap> paramﺭ)
  {
    if (paramﺭ == null) {
      throw new NullPointerException("Transformation must not be null");
    }
    this.kX = this.kX.ˎ(new ﺭ[] { paramﺭ });
  }
  
  void ˊ(ｪ.if paramif)
  {
    if (this.kZ)
    {
      this.handler.obtainMessage(2, paramif).sendToTarget();
      return;
    }
    ｪ.if localif = this.kY;
    this.kY = paramif;
    this.kU.ᔾ(ｪ.if.ˋ(paramif));
    if (localif != null) {
      this.handler.obtainMessage(2, localif).sendToTarget();
    }
    this.kW = false;
    Ґ();
  }
  
  public Bitmap ҁ()
  {
    if (this.kY != null) {
      return this.kY.ғ();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½ª
 * JD-Core Version:    0.7.0.1
 */