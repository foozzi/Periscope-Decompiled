package o;

import android.text.TextUtils;

final class ԁ$if
{
  public final String mimeType;
  public final boolean sb;
  
  public ԁ$if(String paramString, boolean paramBoolean)
  {
    this.mimeType = paramString;
    this.sb = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (paramObject.getClass() != if.class)) {
      return false;
    }
    paramObject = (if)paramObject;
    return (TextUtils.equals(this.mimeType, paramObject.mimeType)) && (this.sb == paramObject.sb);
  }
  
  public int hashCode()
  {
    int i;
    if (this.mimeType == null) {
      i = 0;
    } else {
      i = this.mimeType.hashCode();
    }
    int j;
    if (this.sb) {
      j = 1231;
    } else {
      j = 1237;
    }
    return (i + 31) * 31 + j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô.if
 * JD-Core Version:    0.7.0.1
 */