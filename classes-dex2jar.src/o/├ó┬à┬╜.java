package o;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;

public class ⅽ
{
  private int fU = 0;
  private ByteBuffer fo;
  private final byte[] fp = new byte[256];
  private ⅹ fx;
  
  private int read()
  {
    try
    {
      int i = this.fo.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      this.fx.status = 1;
    }
    return 0;
  }
  
  private void readHeader()
  {
    String str = "";
    int i = 0;
    while (i < 6)
    {
      str = str + (char)read();
      i += 1;
    }
    if (!str.startsWith("GIF"))
    {
      this.fx.status = 1;
      return;
    }
    ﺌ();
    if ((this.fx.fP) && (!Ｊ()))
    {
      this.fx.fL = І(this.fx.fQ);
      this.fx.bgColor = this.fx.fL[this.fx.fR];
    }
  }
  
  private void reset()
  {
    this.fo = null;
    Arrays.fill(this.fp, (byte)0);
    this.fx = new ⅹ();
    this.fU = 0;
  }
  
  private int[] І(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt * 3];
    try
    {
      this.fo.get(arrayOfByte);
      int[] arrayOfInt = new int[256];
      int i = 0;
      int j = 0;
      while (i < paramInt)
      {
        int n = j + 1;
        int m = arrayOfByte[j];
        int k = n + 1;
        n = arrayOfByte[n];
        j = k + 1;
        int i1 = arrayOfByte[k];
        k = i + 1;
        arrayOfInt[i] = ((m & 0xFF) << 16 | 0xFF000000 | (n & 0xFF) << 8 | i1 & 0xFF);
        i = k;
      }
      return arrayOfInt;
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      if (Log.isLoggable("GifHeaderParser", 3)) {
        Log.d("GifHeaderParser", "Format Error Reading Color Table", localBufferUnderflowException);
      }
      this.fx.status = 1;
    }
    return null;
  }
  
  private int ΐ()
  {
    this.fU = read();
    int i = 0;
    int k = 0;
    if (this.fU > 0)
    {
      int j = 0;
      i = k;
      for (;;)
      {
        k = j;
        try
        {
          if (i < this.fU)
          {
            k = j;
            j = this.fU - i;
            k = j;
            this.fo.get(this.fp, i, j);
            i += j;
          }
          else
          {
            return i;
          }
        }
        catch (Exception localException)
        {
          if (Log.isLoggable("GifHeaderParser", 3)) {
            Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + k + " blockSize: " + this.fU, localException);
          }
          this.fx.status = 1;
        }
      }
    }
    return i;
  }
  
  private void ךּ()
  {
    int i = 0;
    while ((i == 0) && (!Ｊ()))
    {
      switch (read())
      {
      default: 
        break;
      case 44: 
        if (this.fx.fN == null) {
          this.fx.fN = new ℴ();
        }
        ﭨ();
        break;
      case 33: 
        switch (read())
        {
        default: 
          break;
        case 249: 
          this.fx.fN = new ℴ();
          כּ();
          break;
        case 255: 
          ΐ();
          String str = "";
          int j = 0;
          while (j < 11)
          {
            str = str + (char)this.fp[j];
            j += 1;
          }
          if (str.equals("NETSCAPE2.0")) {
            ﮢ();
          } else {
            ﺯ();
          }
          break;
        case 254: 
          ﺯ();
          break;
        case 1: 
          ﺯ();
          break;
        }
        ﺯ();
        break;
      case 59: 
        i = 1;
        break;
      }
      this.fx.status = 1;
    }
  }
  
  private void כּ()
  {
    read();
    int i = read();
    this.fx.fN.fH = ((i & 0x1C) >> 2);
    if (this.fx.fN.fH == 0) {
      this.fx.fN.fH = 1;
    }
    ℴ localℴ = this.fx.fN;
    boolean bool;
    if ((i & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localℴ.fG = bool;
    int j = ﻣ();
    i = j;
    if (j < 3) {
      i = 10;
    }
    this.fx.fN.delay = (i * 10);
    this.fx.fN.fI = read();
    read();
  }
  
  private void ﭨ()
  {
    this.fx.fN.fB = ﻣ();
    this.fx.fN.fC = ﻣ();
    this.fx.fN.fD = ﻣ();
    this.fx.fN.fE = ﻣ();
    int j = read();
    int i;
    if ((j & 0x80) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    int k = (int)Math.pow(2.0D, (j & 0x7) + 1);
    Object localObject = this.fx.fN;
    boolean bool;
    if ((j & 0x40) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    ((ℴ)localObject).fF = bool;
    if (i != 0) {
      this.fx.fN.fK = І(k);
    } else {
      this.fx.fN.fK = null;
    }
    this.fx.fN.fJ = this.fo.position();
    ﺬ();
    if (Ｊ()) {
      return;
    }
    localObject = this.fx;
    ((ⅹ)localObject).fM += 1;
    this.fx.fO.add(this.fx.fN);
  }
  
  private void ﮢ()
  {
    do
    {
      ΐ();
      if (this.fp[0] == 1)
      {
        int i = this.fp[1];
        int j = this.fp[2];
        this.fx.fT = ((j & 0xFF) << 8 | i & 0xFF);
      }
    } while ((this.fU > 0) && (!Ｊ()));
  }
  
  private void ﺌ()
  {
    this.fx.width = ﻣ();
    this.fx.height = ﻣ();
    int i = read();
    ⅹ localⅹ = this.fx;
    boolean bool;
    if ((i & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localⅹ.fP = bool;
    this.fx.fQ = (2 << (i & 0x7));
    this.fx.fR = read();
    this.fx.fS = read();
  }
  
  private void ﺬ()
  {
    read();
    ﺯ();
  }
  
  private void ﺯ()
  {
    int i;
    do
    {
      i = read();
      this.fo.position(this.fo.position() + i);
    } while (i > 0);
  }
  
  private int ﻣ()
  {
    return this.fo.getShort();
  }
  
  private boolean Ｊ()
  {
    return this.fx.status != 0;
  }
  
  public void clear()
  {
    this.fo = null;
    this.fx = null;
  }
  
  public ⅽ ˊ(byte[] paramArrayOfByte)
  {
    reset();
    if (paramArrayOfByte != null)
    {
      this.fo = ByteBuffer.wrap(paramArrayOfByte);
      this.fo.rewind();
      this.fo.order(ByteOrder.LITTLE_ENDIAN);
      return this;
    }
    this.fo = null;
    this.fx.status = 2;
    return this;
  }
  
  public ⅹ ィ()
  {
    if (this.fo == null) {
      throw new IllegalStateException("You must call setData() before parseHeader()");
    }
    if (Ｊ()) {
      return this.fx;
    }
    readHeader();
    if (!Ｊ())
    {
      ךּ();
      if (this.fx.fM < 0) {
        this.fx.status = 1;
      }
    }
    return this.fx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â½
 * JD-Core Version:    0.7.0.1
 */