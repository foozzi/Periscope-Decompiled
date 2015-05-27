package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;

public class ײַ
{
  private int delay = 0;
  private int fH = -1;
  private int fI;
  private Integer fV = null;
  private int fW = -1;
  private Bitmap fX;
  private byte[] fY;
  private byte[] fZ;
  private int ga;
  private byte[] gb;
  private boolean[] gc = new boolean[256];
  private int gd = 7;
  private boolean ge = false;
  private boolean gf = true;
  private boolean gg = false;
  private int gh = 10;
  private boolean gi;
  private int height;
  private OutputStream out;
  private boolean started = false;
  private int width;
  
  private void writeShort(int paramInt)
  {
    this.out.write(paramInt & 0xFF);
    this.out.write(paramInt >> 8 & 0xFF);
  }
  
  private void writeString(String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      this.out.write((byte)paramString.charAt(i));
      i += 1;
    }
  }
  
  private void ċ()
  {
    writeShort(this.width);
    writeShort(this.height);
    this.out.write(this.gd | 0xF0);
    this.out.write(0);
    this.out.write(0);
  }
  
  private void ĩ()
  {
    this.out.write(33);
    this.out.write(255);
    this.out.write(11);
    writeString("NETSCAPE2.0");
    this.out.write(3);
    this.out.write(1);
    writeShort(this.fW);
    this.out.write(0);
  }
  
  private void ɽ()
  {
    this.out.write(this.gb, 0, this.gb.length);
    int j = this.gb.length;
    int i = 0;
    while (i < 768 - j)
    {
      this.out.write(0);
      i += 1;
    }
  }
  
  private void ʃ()
  {
    new ﬧ(this.width, this.height, this.fZ, this.ga).encode(this.out);
  }
  
  private int ї(int paramInt)
  {
    if (this.gb == null) {
      return -1;
    }
    int i1 = Color.red(paramInt);
    int i2 = Color.green(paramInt);
    int i3 = Color.blue(paramInt);
    int i = 0;
    paramInt = 16777216;
    int i4 = this.gb.length;
    int m;
    for (int j = 0; j < i4; j = m)
    {
      byte[] arrayOfByte = this.gb;
      int k = j + 1;
      j = i1 - (arrayOfByte[j] & 0xFF);
      arrayOfByte = this.gb;
      int i5 = k + 1;
      k = i2 - (arrayOfByte[k] & 0xFF);
      m = i3 - (this.gb[i5] & 0xFF);
      int n = j * j + k * k + m * m;
      m = i5 / 3;
      k = i;
      j = paramInt;
      if (this.gc[m] != 0)
      {
        k = i;
        j = paramInt;
        if (n < paramInt)
        {
          j = n;
          k = m;
        }
      }
      m = i5 + 1;
      i = k;
      paramInt = j;
    }
    return i;
  }
  
  private void ｧ()
  {
    int j = this.fY.length;
    int m = j / 3;
    this.fZ = new byte[m];
    דּ localדּ = new דּ(this.fY, j, this.gh);
    this.gb = localדּ.ч();
    j = 0;
    while (j < this.gb.length)
    {
      int i = this.gb[j];
      this.gb[j] = this.gb[(j + 2)];
      this.gb[(j + 2)] = i;
      this.gc[(j / 3)] = false;
      j += 3;
    }
    int k = 0;
    j = 0;
    while (j < m)
    {
      byte[] arrayOfByte = this.fY;
      int i2 = k + 1;
      int n = arrayOfByte[k];
      arrayOfByte = this.fY;
      int i1 = i2 + 1;
      i2 = arrayOfByte[i2];
      arrayOfByte = this.fY;
      k = i1 + 1;
      n = localדּ.ͺ(n & 0xFF, i2 & 0xFF, arrayOfByte[i1] & 0xFF);
      this.gc[n] = true;
      this.fZ[j] = ((byte)n);
      j += 1;
    }
    this.fY = null;
    this.ga = 8;
    this.gd = 7;
    if (this.fV != null)
    {
      this.fI = ї(this.fV.intValue());
      return;
    }
    if (this.gi) {
      this.fI = ї(0);
    }
  }
  
  private void ｲ()
  {
    int i = this.fX.getWidth();
    int j = this.fX.getHeight();
    if ((i != this.width) || (j != this.height))
    {
      localObject = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
      new Canvas((Bitmap)localObject).drawBitmap((Bitmap)localObject, 0.0F, 0.0F, null);
      this.fX = ((Bitmap)localObject);
    }
    Object localObject = new int[i * j];
    this.fX.getPixels((int[])localObject, 0, i, 0, 0, i, j);
    this.fY = new byte[localObject.length * 3];
    int k = 0;
    this.gi = false;
    int m = 0;
    int n = localObject.length;
    i = 0;
    while (i < n)
    {
      int i1 = localObject[i];
      j = m;
      if (i1 == 0) {
        j = m + 1;
      }
      byte[] arrayOfByte = this.fY;
      m = k + 1;
      arrayOfByte[k] = ((byte)(i1 & 0xFF));
      arrayOfByte = this.fY;
      int i2 = m + 1;
      arrayOfByte[m] = ((byte)(i1 >> 8 & 0xFF));
      arrayOfByte = this.fY;
      k = i2 + 1;
      arrayOfByte[i2] = ((byte)(i1 >> 16 & 0xFF));
      i += 1;
      m = j;
    }
    double d = m * 100 / localObject.length;
    boolean bool;
    if (d > 4.0D) {
      bool = true;
    } else {
      bool = false;
    }
    this.gi = bool;
    if (Log.isLoggable("AnimatedGifEncoder", 3)) {
      Log.d("AnimatedGifEncoder", "got pixels for frame with " + d + "% transparent pixels");
    }
  }
  
  private void ﾌ()
  {
    this.out.write(33);
    this.out.write(249);
    this.out.write(4);
    int j;
    int i;
    if ((this.fV == null) && (!this.gi))
    {
      j = 0;
      i = 0;
    }
    else
    {
      j = 1;
      i = 2;
    }
    if (this.fH >= 0) {
      i = this.fH & 0x7;
    }
    this.out.write(i << 2 | 0x0 | 0x0 | j);
    writeShort(this.delay);
    this.out.write(this.fI);
    this.out.write(0);
  }
  
  private void ﾍ()
  {
    this.out.write(44);
    writeShort(0);
    writeShort(0);
    writeShort(this.width);
    writeShort(this.height);
    if (this.gf)
    {
      this.out.write(0);
      return;
    }
    this.out.write(this.gd | 0x80);
  }
  
  public void setSize(int paramInt1, int paramInt2)
  {
    if ((this.started) && (!this.gf)) {
      return;
    }
    this.width = paramInt1;
    this.height = paramInt2;
    if (this.width < 1) {
      this.width = 320;
    }
    if (this.height < 1) {
      this.height = 240;
    }
    this.gg = true;
  }
  
  public boolean ˊ(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      return false;
    }
    boolean bool = true;
    this.ge = false;
    this.out = paramOutputStream;
    try
    {
      writeString("GIF89a");
    }
    catch (IOException paramOutputStream)
    {
      bool = false;
    }
    this.started = bool;
    return bool;
  }
  
  public boolean ˎ(Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (!this.started)) {
      return false;
    }
    try
    {
      if (!this.gg) {
        setSize(paramBitmap.getWidth(), paramBitmap.getHeight());
      }
      this.fX = paramBitmap;
      ｲ();
      ｧ();
      if (this.gf)
      {
        ċ();
        ɽ();
        if (this.fW >= 0) {
          ĩ();
        }
      }
      ﾌ();
      ﾍ();
      if (!this.gf) {
        ɽ();
      }
      ʃ();
      this.gf = false;
      return true;
    }
    catch (IOException paramBitmap) {}
    return false;
  }
  
  public void і(int paramInt)
  {
    this.delay = Math.round(paramInt / 10.0F);
  }
  
  public boolean Ｌ()
  {
    if (!this.started) {
      return false;
    }
    boolean bool = true;
    this.started = false;
    try
    {
      this.out.write(59);
      this.out.flush();
      if (this.ge) {
        this.out.close();
      }
    }
    catch (IOException localIOException)
    {
      bool = false;
    }
    this.fI = 0;
    this.out = null;
    this.fX = null;
    this.fY = null;
    this.fZ = null;
    this.gb = null;
    this.ge = false;
    this.gf = true;
    return bool;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬
 * JD-Core Version:    0.7.0.1
 */