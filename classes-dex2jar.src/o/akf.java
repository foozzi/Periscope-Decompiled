package o;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Build;
import java.util.Iterator;
import java.util.List;
import java.util.List<[I>;
import tv.periscope.android.util.Size;

public class akf
{
  public static final boolean bIj;
  
  static
  {
    boolean bool;
    if ((Build.MODEL.contains("GT-I9505")) || (Build.MODEL.contains("GT-I9506")) || (Build.MODEL.contains("GT-I9500")) || (Build.MODEL.contains("SGH-I337")) || (Build.MODEL.contains("SGH-M919")) || (Build.MODEL.contains("SCH-I545")) || (Build.MODEL.contains("SPH-L720")) || (Build.MODEL.contains("GT-I9508")) || (Build.MODEL.contains("SHV-E300")) || (Build.MODEL.contains("SCH-R970")) || (Build.MODEL.contains("SM-N900")) || (Build.MODEL.contains("LG-D801"))) {
      bool = true;
    } else {
      bool = false;
    }
    bIj = bool;
  }
  
  private static float ˊ(Size paramSize1, Size paramSize2)
  {
    float f1 = paramSize1.Ay();
    float f2 = paramSize2.Ay();
    if (f1 < f2) {
      paramSize1 = Size.ˑ(paramSize1.height() * f2, paramSize1.height());
    } else {
      paramSize1 = Size.ˑ(paramSize1.width(), paramSize1.width() / f2);
    }
    int i = paramSize1.Az() - paramSize2.Az();
    if (i > 0) {
      return i;
    }
    return -i * 25.0F;
  }
  
  public static Camera ˊ(int paramInt, Camera.CameraInfo paramCameraInfo)
  {
    int j = Camera.getNumberOfCameras();
    int i = 0;
    while (i < j)
    {
      Camera.getCameraInfo(i, paramCameraInfo);
      if (paramCameraInfo.facing == paramInt) {
        return Camera.open(i);
      }
      i += 1;
    }
    return ˊ(paramCameraInfo);
  }
  
  private static Camera ˊ(Camera.CameraInfo paramCameraInfo)
  {
    Camera.getCameraInfo(0, paramCameraInfo);
    return Camera.open(0);
  }
  
  public static Size ˊ(Size paramSize, List<Camera.Size> paramList)
  {
    if (paramList == null) {
      return null;
    }
    Size localSize = null;
    float f1 = -1.0F;
    Iterator localIterator = paramList.iterator();
    paramList = localSize;
    while (localIterator.hasNext())
    {
      localSize = Size.ˊ((Camera.Size)localIterator.next());
      float f3 = ˊ(paramSize, localSize);
      float f2;
      if (f3 >= f1)
      {
        f2 = f1;
        if (f1 >= 0.0F) {}
      }
      else
      {
        f2 = f3;
        paramList = localSize;
      }
      f1 = f2;
    }
    return paramList;
  }
  
  public static boolean ˊ(Camera paramCamera, Camera.Parameters paramParameters)
  {
    String str = "";
    Object localObject = paramParameters.getSupportedFocusModes();
    if (localObject == null) {
      return false;
    }
    if (bIj) {
      str = "auto";
    } else if (((List)localObject).contains("continuous-video")) {
      str = "continuous-video";
    } else if (((List)localObject).contains("infinity")) {
      str = "infinity";
    }
    localObject = paramParameters.getFocusMode();
    try
    {
      if (!str.equals(""))
      {
        paramParameters.setFocusMode(str);
        paramCamera.setParameters(paramParameters);
        return true;
      }
    }
    catch (Exception paramCamera)
    {
      ɬ.ˋ(paramCamera);
      paramParameters.setFocusMode((String)localObject);
    }
    return false;
  }
  
  public static int[] ˊ(int paramInt, List<int[]> paramList)
  {
    if (paramList == null) {
      return null;
    }
    int k = 2147483647;
    int i = 0;
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    for (paramList = (List<int[]>)localObject; localIterator.hasNext(); paramList = (List<int[]>)localObject)
    {
      int[] arrayOfInt = (int[])localIterator.next();
      int i1 = arrayOfInt[0];
      int n = arrayOfInt[1];
      int m = k;
      int j = i;
      localObject = paramList;
      if (n >= paramInt)
      {
        m = k;
        j = i;
        localObject = paramList;
        if (i1 <= paramInt) {
          if (i1 >= k)
          {
            m = k;
            j = i;
            localObject = paramList;
            if (i1 == k)
            {
              m = k;
              j = i;
              localObject = paramList;
              if (n <= i) {}
            }
          }
          else
          {
            m = i1;
            j = n;
            localObject = arrayOfInt;
          }
        }
      }
      k = m;
      i = j;
    }
    return paramList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akf
 * JD-Core Version:    0.7.0.1
 */