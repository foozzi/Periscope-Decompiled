package o;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class ب
{
  private int hY;
  public final int height;
  private int maxHeight;
  private int maxWidth;
  public final String mimeType;
  public final long re;
  public final int sC;
  public final float sD;
  public final int sE;
  public final int sF;
  public final List<byte[]> sG;
  private MediaFormat sH;
  public final int width;
  
  private ب(String paramString, int paramInt1, long paramLong, int paramInt2, int paramInt3, float paramFloat, int paramInt4, int paramInt5, List<byte[]> paramList)
  {
    this.mimeType = paramString;
    this.sC = paramInt1;
    this.re = paramLong;
    this.width = paramInt2;
    this.height = paramInt3;
    this.sD = paramFloat;
    this.sE = paramInt4;
    this.sF = paramInt5;
    if (paramList == null) {
      paramList = Collections.emptyList();
    }
    this.sG = paramList;
    this.maxWidth = -1;
    this.maxHeight = -1;
  }
  
  public static ب ˊ(String paramString, int paramInt1, int paramInt2, int paramInt3, List<byte[]> paramList)
  {
    return ˊ(paramString, paramInt1, -1L, paramInt2, paramInt3, paramList);
  }
  
  public static ب ˊ(String paramString, int paramInt1, long paramLong, int paramInt2, int paramInt3, float paramFloat, List<byte[]> paramList)
  {
    return new ب(paramString, paramInt1, paramLong, paramInt2, paramInt3, paramFloat, -1, -1, paramList);
  }
  
  public static ب ˊ(String paramString, int paramInt1, long paramLong, int paramInt2, int paramInt3, List<byte[]> paramList)
  {
    return ˊ(paramString, paramInt1, paramLong, paramInt2, paramInt3, 1.0F, paramList);
  }
  
  @SuppressLint({"InlinedApi"})
  @TargetApi(16)
  private final void ˊ(MediaFormat paramMediaFormat)
  {
    ˊ(paramMediaFormat, "max-width", this.maxWidth);
    ˊ(paramMediaFormat, "max-height", this.maxHeight);
  }
  
  @TargetApi(16)
  private static final void ˊ(MediaFormat paramMediaFormat, String paramString, float paramFloat)
  {
    if (paramFloat != -1.0F) {
      paramMediaFormat.setFloat(paramString, paramFloat);
    }
  }
  
  @TargetApi(16)
  private static final void ˊ(MediaFormat paramMediaFormat, String paramString, int paramInt)
  {
    if (paramInt != -1) {
      paramMediaFormat.setInteger(paramString, paramInt);
    }
  }
  
  public static ب ˋ(String paramString, int paramInt1, int paramInt2, int paramInt3, List<byte[]> paramList)
  {
    return ˋ(paramString, paramInt1, -1L, paramInt2, paramInt3, paramList);
  }
  
  public static ب ˋ(String paramString, int paramInt1, long paramLong, int paramInt2, int paramInt3, List<byte[]> paramList)
  {
    return new ب(paramString, paramInt1, paramLong, -1, -1, -1.0F, paramInt2, paramInt3, paramList);
  }
  
  private boolean ˋ(ب paramب, boolean paramBoolean)
  {
    if ((this.sC != paramب.sC) || (this.width != paramب.width) || (this.height != paramب.height) || (this.sD != paramب.sD) || ((!paramBoolean) && ((this.maxWidth != paramب.maxWidth) || (this.maxHeight != paramب.maxHeight))) || (this.sE != paramب.sE) || (this.sF != paramب.sF) || (!ผ.ʻ(this.mimeType, paramب.mimeType)) || (this.sG.size() != paramب.sG.size())) {
      return false;
    }
    int i = 0;
    while (i < this.sG.size())
    {
      if (!Arrays.equals((byte[])this.sG.get(i), (byte[])paramب.sG.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static ب Һ()
  {
    return ᵎ("application/id3");
  }
  
  public static ب ӌ()
  {
    return ᵎ("application/eia-608");
  }
  
  public static ب ԁ()
  {
    return ᵎ("application/ttml+xml");
  }
  
  public static ب ᵎ(String paramString)
  {
    return new ب(paramString, -1, -1L, -1, -1, -1.0F, -1, -1, null);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    return ˋ((ب)paramObject, false);
  }
  
  public int hashCode()
  {
    if (this.hY == 0)
    {
      if (this.mimeType == null) {
        i = 0;
      } else {
        i = this.mimeType.hashCode();
      }
      int j = (((((((((i + 527) * 31 + this.sC) * 31 + this.width) * 31 + this.height) * 31 + Float.floatToRawIntBits(this.sD)) * 31 + (int)this.re) * 31 + this.maxWidth) * 31 + this.maxHeight) * 31 + this.sE) * 31 + this.sF;
      int i = 0;
      while (i < this.sG.size())
      {
        j = j * 31 + Arrays.hashCode((byte[])this.sG.get(i));
        i += 1;
      }
      this.hY = j;
    }
    return this.hY;
  }
  
  public String toString()
  {
    return "MediaFormat(" + this.mimeType + ", " + this.sC + ", " + this.width + ", " + this.height + ", " + this.sD + ", " + this.sE + ", " + this.sF + ", " + this.re + ", " + this.maxWidth + ", " + this.maxHeight + ")";
  }
  
  public boolean ˊ(ب paramب, boolean paramBoolean)
  {
    if (this == paramب) {
      return true;
    }
    if (paramب == null) {
      return false;
    }
    return ˋ(paramب, paramBoolean);
  }
  
  @TargetApi(16)
  public final MediaFormat ԅ()
  {
    if (this.sH == null)
    {
      MediaFormat localMediaFormat = new MediaFormat();
      localMediaFormat.setString("mime", this.mimeType);
      ˊ(localMediaFormat, "max-input-size", this.sC);
      ˊ(localMediaFormat, "width", this.width);
      ˊ(localMediaFormat, "height", this.height);
      ˊ(localMediaFormat, "channel-count", this.sE);
      ˊ(localMediaFormat, "sample-rate", this.sF);
      ˊ(localMediaFormat, "com.google.android.videos.pixelWidthHeightRatio", this.sD);
      int i = 0;
      while (i < this.sG.size())
      {
        localMediaFormat.setByteBuffer("csd-" + i, ByteBuffer.wrap((byte[])this.sG.get(i)));
        i += 1;
      }
      if (this.re != -1L) {
        localMediaFormat.setLong("durationUs", this.re);
      }
      ˊ(localMediaFormat);
      this.sH = localMediaFormat;
    }
    return this.sH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø¨
 * JD-Core Version:    0.7.0.1
 */