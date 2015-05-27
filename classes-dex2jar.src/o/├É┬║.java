package o;

import android.net.Uri;

public final class к
{
  public final int flags;
  public final String key;
  public final long length;
  public final long tU;
  public final Uri uri;
  public final long zX;
  
  public к(Uri paramUri, int paramInt)
  {
    this(paramUri, 0L, -1L, null, paramInt);
  }
  
  public к(Uri paramUri, long paramLong1, long paramLong2, long paramLong3, String paramString, int paramInt)
  {
    boolean bool;
    if (paramLong1 >= 0L) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if (paramLong2 >= 0L) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    if ((paramLong3 > 0L) || (paramLong3 == -1L)) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    this.uri = paramUri;
    this.zX = paramLong1;
    this.tU = paramLong2;
    this.length = paramLong3;
    this.key = paramString;
    this.flags = paramInt;
  }
  
  public к(Uri paramUri, long paramLong1, long paramLong2, String paramString)
  {
    this(paramUri, paramLong1, paramLong1, paramLong2, paramString, 0);
  }
  
  public к(Uri paramUri, long paramLong1, long paramLong2, String paramString, int paramInt)
  {
    this(paramUri, paramLong1, paramLong1, paramLong2, paramString, paramInt);
  }
  
  public String toString()
  {
    return "DataSpec[" + this.uri + ", " + this.zX + ", " + this.tU + ", " + this.length + ", " + this.key + ", " + this.flags + "]";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ðº
 * JD-Core Version:    0.7.0.1
 */