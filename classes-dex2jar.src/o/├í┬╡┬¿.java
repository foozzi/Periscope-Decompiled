package o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class ᵨ
{
  private static final String TAG = ᵨ.class.getSimpleName();
  private static final Bitmap.Config fm = Bitmap.Config.ARGB_8888;
  private boolean fA;
  private int[] fn;
  private ByteBuffer fo;
  private final byte[] fp = new byte[256];
  private short[] fq;
  private byte[] fr;
  private byte[] fs;
  private byte[] ft;
  private int[] fu;
  private int fv;
  private byte[] fw;
  private ⅹ fx;
  private ᵨ.if fy;
  private Bitmap fz;
  private int status;
  
  public ᵨ(ᵨ.if paramif)
  {
    this.fy = paramif;
    this.fx = new ⅹ();
  }
  
  private int read()
  {
    try
    {
      int i = this.fo.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      this.status = 1;
    }
    return 0;
  }
  
  private Bitmap ˊ(ℴ paramℴ1, ℴ paramℴ2)
  {
    int i4 = this.fx.width;
    int i5 = this.fx.height;
    int[] arrayOfInt = this.fu;
    int i;
    if ((paramℴ2 != null) && (paramℴ2.fH > 0)) {
      if (paramℴ2.fH == 2)
      {
        i = 0;
        if (!paramℴ1.fG) {
          i = this.fx.bgColor;
        }
        Arrays.fill(arrayOfInt, i);
      }
      else if ((paramℴ2.fH == 3) && (this.fz != null))
      {
        this.fz.getPixels(arrayOfInt, 0, i4, 0, 0, i4, i5);
      }
    }
    ˊ(paramℴ1);
    int i2 = 1;
    int m = 8;
    int n = 0;
    int k = 0;
    while (k < paramℴ1.fE)
    {
      i = k;
      int i1 = i2;
      int j = m;
      int i3 = n;
      if (paramℴ1.fF)
      {
        i1 = i2;
        j = m;
        i = n;
        if (n >= paramℴ1.fE)
        {
          i1 = i2 + 1;
          switch (i1)
          {
          default: 
            j = m;
            i = n;
            break;
          case 2: 
            i = 4;
            j = m;
            break;
          case 3: 
            i = 2;
            j = 4;
            break;
          case 4: 
            i = 1;
            j = 2;
          }
        }
        m = i;
        i3 = i + j;
        i = m;
      }
      i += paramℴ1.fC;
      if (i < this.fx.height)
      {
        i2 = i * this.fx.width;
        n = i2 + paramℴ1.fB;
        i = n + paramℴ1.fD;
        m = i;
        if (this.fx.width + i2 < i) {
          m = i2 + this.fx.width;
        }
        i = k * paramℴ1.fD;
        for (;;)
        {
          i2 = i;
          if (n >= m) {
            break;
          }
          paramℴ2 = this.ft;
          i = i2 + 1;
          i2 = paramℴ2[i2];
          i2 = this.fn[(i2 & 0xFF)];
          if (i2 != 0) {
            arrayOfInt[n] = i2;
          }
          n += 1;
        }
      }
      k += 1;
      i2 = i1;
      m = j;
      n = i3;
    }
    if ((this.fA) && ((paramℴ1.fH == 0) || (paramℴ1.fH == 1)))
    {
      if (this.fz == null) {
        this.fz = Ⅼ();
      }
      this.fz.setPixels(arrayOfInt, 0, i4, 0, 0, i4, i5);
    }
    paramℴ1 = Ⅼ();
    paramℴ1.setPixels(arrayOfInt, 0, i4, 0, 0, i4, i5);
    return paramℴ1;
  }
  
  @TargetApi(12)
  private static void ˊ(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12) {
      paramBitmap.setHasAlpha(true);
    }
  }
  
  private void ˊ(ℴ paramℴ)
  {
    if (paramℴ != null) {
      this.fo.position(paramℴ.fJ);
    }
    int i11;
    if (paramℴ == null) {
      i11 = this.fx.width * this.fx.height;
    } else {
      i11 = paramℴ.fD * paramℴ.fE;
    }
    if ((this.ft == null) || (this.ft.length < i11)) {
      this.ft = new byte[i11];
    }
    if (this.fq == null) {
      this.fq = new short[4096];
    }
    if (this.fr == null) {
      this.fr = new byte[4096];
    }
    if (this.fs == null) {
      this.fs = new byte[4097];
    }
    int i21 = read();
    int i22 = 1 << i21;
    int i18 = i22 + 2;
    int i15 = -1;
    int i16 = i21 + 1;
    int i17 = (1 << i16) - 1;
    int i = 0;
    while (i < i22)
    {
      this.fq[i] = 0;
      this.fr[i] = ((byte)i);
      i += 1;
    }
    int i7 = 0;
    int j = 0;
    int k = 0;
    int i13 = 0;
    int i10 = 0;
    int i9 = 0;
    int i6 = 0;
    int i14 = 0;
    if (i14 < i11)
    {
      i = i10;
      if (i10 == 0)
      {
        i = ΐ();
        if (i <= 0) {
          this.status = 3;
        } else {
          i7 = 0;
        }
      }
      else
      {
        int m = i6 + ((this.fp[i7] & 0xFF) << i9);
        int i5 = i9 + 8;
        int i19 = i7 + 1;
        int i20 = i - 1;
        int n = j;
        j = k;
        int i4 = i13;
        int i12 = i14;
        i = i15;
        int i3 = i16;
        int i1 = i17;
        int i2 = i18;
        for (;;)
        {
          i8 = j;
          i18 = i2;
          i17 = i1;
          i16 = i3;
          i15 = i;
          i9 = i5;
          i10 = i20;
          i14 = i12;
          i6 = m;
          i13 = i4;
          k = i8;
          i7 = i19;
          j = n;
          if (i5 < i3) {
            break;
          }
          j = m & i1;
          i6 = m >> i3;
          i9 = i5 - i3;
          if (j == i22)
          {
            i3 = i21 + 1;
            i1 = (1 << i3) - 1;
            i2 = i22 + 2;
            i = -1;
            i5 = i9;
            m = i6;
            j = i8;
          }
          else
          {
            if (j > i2)
            {
              this.status = 3;
              i18 = i2;
              i17 = i1;
              i16 = i3;
              i15 = i;
              i10 = i20;
              i14 = i12;
              i13 = i4;
              k = i8;
              i7 = i19;
              j = n;
              break;
            }
            if (j == i22 + 1)
            {
              i18 = i2;
              i17 = i1;
              i16 = i3;
              i15 = i;
              i10 = i20;
              i14 = i12;
              i13 = i4;
              k = i8;
              i7 = i19;
              j = n;
              break;
            }
            if (i != -1) {
              break label577;
            }
            paramℴ = this.fs;
            k = i8 + 1;
            paramℴ[i8] = this.fr[j];
            i = j;
            i5 = i9;
            m = i6;
            i4 = j;
            j = k;
          }
        }
        label577:
        k = j;
        m = i8;
        if (j >= i2)
        {
          paramℴ = this.fs;
          m = i8 + 1;
          paramℴ[i8] = ((byte)i4);
          k = i;
        }
        while (k >= i22)
        {
          paramℴ = this.fs;
          i4 = m + 1;
          paramℴ[m] = this.fr[k];
          k = this.fq[k];
          m = i4;
        }
        i16 = this.fr[k] & 0xFF;
        paramℴ = this.fs;
        k = m + 1;
        paramℴ[m] = ((byte)i16);
        int i8 = i2;
        i10 = i1;
        i7 = i3;
        if (i2 < 4096)
        {
          this.fq[i2] = ((short)i);
          this.fr[i2] = ((byte)i16);
          i = i2 + 1;
          i8 = i;
          i10 = i1;
          i7 = i3;
          if ((i & i1) == 0)
          {
            i8 = i;
            i10 = i1;
            i7 = i3;
            if (i < 4096)
            {
              i7 = i3 + 1;
              i10 = i1 + i;
              i8 = i;
            }
          }
        }
        i13 = j;
        i14 = i12;
        for (;;)
        {
          i15 = n;
          i2 = i8;
          i1 = i10;
          i3 = i7;
          i = i13;
          i5 = i9;
          i12 = i14;
          m = i6;
          i4 = i16;
          j = k;
          n = i15;
          if (k <= 0) {
            break;
          }
          k -= 1;
          paramℴ = this.ft;
          n = i15 + 1;
          paramℴ[i15] = this.fs[k];
          i14 += 1;
        }
      }
    }
    while (j < i11)
    {
      this.ft[j] = 0;
      j += 1;
    }
  }
  
  private int ΐ()
  {
    int k = read();
    int i = 0;
    int j = 0;
    if (k > 0)
    {
      i = j;
      for (;;)
      {
        if (i < k) {
          j = k - i;
        }
        try
        {
          this.fo.get(this.fp, i, j);
          i += j;
        }
        catch (Exception localException)
        {
          Log.w(TAG, "Error Reading Block", localException);
          this.status = 1;
        }
      }
      return i;
    }
    return i;
  }
  
  private Bitmap Ⅼ()
  {
    Bitmap localBitmap2 = this.fy.ˊ(this.fx.width, this.fx.height, fm);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = Bitmap.createBitmap(this.fx.width, this.fx.height, fm);
    }
    ˊ(localBitmap1);
    return localBitmap1;
  }
  
  public void advance()
  {
    this.fv = ((this.fv + 1) % this.fx.fM);
  }
  
  public void clear()
  {
    this.fx = null;
    this.fw = null;
    this.ft = null;
    this.fu = null;
    if (this.fz != null) {
      this.fy.ˋ(this.fz);
    }
    this.fz = null;
  }
  
  public int getFrameCount()
  {
    return this.fx.fM;
  }
  
  public void ˊ(ⅹ paramⅹ, byte[] paramArrayOfByte)
  {
    this.fx = paramⅹ;
    this.fw = paramArrayOfByte;
    this.status = 0;
    this.fv = -1;
    this.fo = ByteBuffer.wrap(paramArrayOfByte);
    this.fo.rewind();
    this.fo.order(ByteOrder.LITTLE_ENDIAN);
    this.fA = false;
    paramArrayOfByte = paramⅹ.fO.iterator();
    while (paramArrayOfByte.hasNext()) {
      if (((ℴ)paramArrayOfByte.next()).fH == 3)
      {
        this.fA = true;
        break;
      }
    }
    this.ft = new byte[paramⅹ.width * paramⅹ.height];
    this.fu = new int[paramⅹ.width * paramⅹ.height];
  }
  
  public int Ι(int paramInt)
  {
    int j = -1;
    int i = j;
    if (paramInt >= 0)
    {
      i = j;
      if (paramInt < this.fx.fM) {
        i = ((ℴ)this.fx.fO.get(paramInt)).delay;
      }
    }
    return i;
  }
  
  public int ṟ()
  {
    if ((this.fx.fM <= 0) || (this.fv < 0)) {
      return -1;
    }
    return Ι(this.fv);
  }
  
  public int ẛ()
  {
    return this.fv;
  }
  
  public int Ỉ()
  {
    return this.fx.fT;
  }
  
  public Bitmap ῒ()
  {
    try
    {
      if ((this.fx.fM <= 0) || (this.fv < 0))
      {
        if (Log.isLoggable(TAG, 3)) {
          Log.d(TAG, "unable to decode frame, frameCount=" + this.fx.fM + " framePointer=" + this.fv);
        }
        this.status = 1;
      }
      if ((this.status == 1) || (this.status == 2))
      {
        if (Log.isLoggable(TAG, 3)) {
          Log.d(TAG, "Unable to decode frame, status=" + this.status);
        }
        return null;
      }
      this.status = 0;
      ℴ localℴ = (ℴ)this.fx.fO.get(this.fv);
      Object localObject1 = null;
      int i = this.fv - 1;
      if (i >= 0) {
        localObject1 = (ℴ)this.fx.fO.get(i);
      }
      if (localℴ.fK == null)
      {
        this.fn = this.fx.fL;
      }
      else
      {
        this.fn = localℴ.fK;
        if (this.fx.fR == localℴ.fI) {
          this.fx.bgColor = 0;
        }
      }
      i = 0;
      if (localℴ.fG)
      {
        i = this.fn[localℴ.fI];
        this.fn[localℴ.fI] = 0;
      }
      if (this.fn == null)
      {
        if (Log.isLoggable(TAG, 3)) {
          Log.d(TAG, "No Valid Color Table");
        }
        this.status = 1;
        return null;
      }
      localObject1 = ˊ(localℴ, (ℴ)localObject1);
      if (localℴ.fG) {
        this.fn[localℴ.fI] = i;
      }
      return localObject1;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¨
 * JD-Core Version:    0.7.0.1
 */