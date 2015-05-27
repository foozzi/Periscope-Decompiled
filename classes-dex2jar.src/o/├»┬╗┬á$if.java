package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class ﻠ$if
  extends Drawable.ConstantState
{
  Context dV;
  ი eD;
  byte[] fw;
  ᵨ.if fy;
  ⅹ kM;
  ﺭ<Bitmap> kN;
  int kO;
  int kP;
  Bitmap kQ;
  
  public ﻠ$if(ⅹ paramⅹ, byte[] paramArrayOfByte, Context paramContext, ﺭ<Bitmap> paramﺭ, int paramInt1, int paramInt2, ᵨ.if paramif, ი paramი, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("The first frame of the GIF must not be null");
    }
    this.kM = paramⅹ;
    this.fw = paramArrayOfByte;
    this.eD = paramი;
    this.kQ = paramBitmap;
    this.dV = paramContext.getApplicationContext();
    this.kN = paramﺭ;
    this.kO = paramInt1;
    this.kP = paramInt2;
    this.fy = paramif;
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return new ﻠ(this);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return newDrawable();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï» .if
 * JD-Core Version:    0.7.0.1
 */