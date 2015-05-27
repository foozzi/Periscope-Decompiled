package tv.periscope.android.util;

import android.hardware.Camera.Size;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import o.akm;

public class Size
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Size> CREATOR = new akm();
  public static final Size bIt = new Size();
  private final int bvd;
  private final int γ;
  
  private Size()
  {
    this(0, 0);
  }
  
  private Size(int paramInt1, int paramInt2)
  {
    this.bvd = paramInt1;
    this.γ = paramInt2;
  }
  
  public Size(Parcel paramParcel)
  {
    this.bvd = paramParcel.readInt();
    this.γ = paramParcel.readInt();
  }
  
  public static Size ˊ(Camera.Size paramSize)
  {
    return ﻧ(paramSize.width, paramSize.height);
  }
  
  public static Size ˑ(float paramFloat1, float paramFloat2)
  {
    return ﻧ((int)paramFloat1, (int)paramFloat2);
  }
  
  public static Size ﻧ(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      return new Size(paramInt1, paramInt2);
    }
    return bIt;
  }
  
  public float Ay()
  {
    if (isEmpty()) {
      return 0.0F;
    }
    return this.bvd / this.γ;
  }
  
  public int Az()
  {
    return this.bvd * this.γ;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject != null) && (super.getClass() == paramObject.getClass()) && (ˊ((Size)paramObject)));
  }
  
  public int hashCode()
  {
    return (this.bvd << 16) + this.γ;
  }
  
  public int height()
  {
    return this.γ;
  }
  
  public boolean isEmpty()
  {
    return this.bvd * this.γ <= 0;
  }
  
  public String toString()
  {
    return String.format("[w: %d, h: %d]", new Object[] { Integer.valueOf(this.bvd), Integer.valueOf(this.γ) });
  }
  
  public int width()
  {
    return this.bvd;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.bvd);
    paramParcel.writeInt(this.γ);
  }
  
  public boolean ˊ(Size paramSize)
  {
    return (this == paramSize) || ((paramSize != null) && (this.bvd == paramSize.bvd) && (this.γ == paramSize.γ));
  }
  
  public Size Ꭸ(int paramInt)
  {
    if ((paramInt == 90) || (paramInt == 270)) {
      return ﻧ(height(), width());
    }
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.util.Size
 * JD-Core Version:    0.7.0.1
 */