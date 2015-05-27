package o;

import android.opengl.GLES20;
import tv.periscope.android.util.Size;

public class abp
{
  public static Size wy()
  {
    int[] arrayOfInt = new int[4];
    GLES20.glGetIntegerv(2978, arrayOfInt, 0);
    return Size.ﻧ(arrayOfInt[2], arrayOfInt[3]);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abp
 * JD-Core Version:    0.7.0.1
 */