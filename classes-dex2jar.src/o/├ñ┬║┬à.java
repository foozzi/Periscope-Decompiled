package o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.Log;

public final class 亅
{
  private static Bitmap.Config ʿ(Bitmap paramBitmap)
  {
    if (paramBitmap.getConfig() != null) {
      return paramBitmap.getConfig();
    }
    return Bitmap.Config.ARGB_8888;
  }
  
  public static Bitmap ˊ(Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    if (paramBitmap2 == null) {
      return null;
    }
    if ((paramBitmap2.getWidth() == paramInt1) && (paramBitmap2.getHeight() == paramInt2)) {
      return paramBitmap2;
    }
    float f2 = 0.0F;
    float f3 = 0.0F;
    Matrix localMatrix = new Matrix();
    float f1;
    if (paramBitmap2.getWidth() * paramInt2 > paramBitmap2.getHeight() * paramInt1)
    {
      f1 = paramInt2 / paramBitmap2.getHeight();
      f2 = (paramInt1 - paramBitmap2.getWidth() * f1) * 0.5F;
    }
    else
    {
      f1 = paramInt1 / paramBitmap2.getWidth();
      f3 = (paramInt2 - paramBitmap2.getHeight() * f1) * 0.5F;
    }
    localMatrix.setScale(f1, f1);
    localMatrix.postTranslate((int)(0.5F + f2), (int)(0.5F + f3));
    if (paramBitmap1 == null) {
      paramBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, ʿ(paramBitmap2));
    }
    ˊ(paramBitmap2, paramBitmap1);
    new Canvas(paramBitmap1).drawBitmap(paramBitmap2, localMatrix, new Paint(6));
    return paramBitmap1;
  }
  
  public static Bitmap ˊ(Bitmap paramBitmap, ი paramი, int paramInt)
  {
    Matrix localMatrix = new Matrix();
    ˊ(paramInt, localMatrix);
    if (localMatrix.isIdentity()) {
      return paramBitmap;
    }
    RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    localMatrix.mapRect(localRectF);
    paramInt = Math.round(localRectF.width());
    int i = Math.round(localRectF.height());
    Bitmap.Config localConfig = ʿ(paramBitmap);
    Bitmap localBitmap = paramი.ˋ(paramInt, i, localConfig);
    paramი = localBitmap;
    if (localBitmap == null) {
      paramი = Bitmap.createBitmap(paramInt, i, localConfig);
    }
    localMatrix.postTranslate(-localRectF.left, -localRectF.top);
    new Canvas(paramი).drawBitmap(paramBitmap, localMatrix, new Paint(6));
    return paramი;
  }
  
  public static Bitmap ˊ(Bitmap paramBitmap, ი paramი, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size matches input, returning input");
      }
      return paramBitmap;
    }
    float f = Math.min(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
    int i = (int)(paramBitmap.getWidth() * f);
    int j = (int)(paramBitmap.getHeight() * f);
    if ((paramBitmap.getWidth() == i) && (paramBitmap.getHeight() == j))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "adjusted target size matches input, returning input");
      }
      return paramBitmap;
    }
    Object localObject2 = ʿ(paramBitmap);
    Object localObject1 = paramი.ˋ(i, j, (Bitmap.Config)localObject2);
    paramი = (ი)localObject1;
    if (localObject1 == null) {
      paramი = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject2);
    }
    ˊ(paramBitmap, paramი);
    if (Log.isLoggable("TransformationUtils", 2))
    {
      Log.v("TransformationUtils", "request: " + paramInt1 + "x" + paramInt2);
      Log.v("TransformationUtils", "toFit:   " + paramBitmap.getWidth() + "x" + paramBitmap.getHeight());
      Log.v("TransformationUtils", "toReuse: " + paramი.getWidth() + "x" + paramი.getHeight());
      Log.v("TransformationUtils", "minPct:   " + f);
    }
    localObject1 = new Canvas(paramი);
    localObject2 = new Matrix();
    ((Matrix)localObject2).setScale(f, f);
    ((Canvas)localObject1).drawBitmap(paramBitmap, (Matrix)localObject2, new Paint(6));
    return paramი;
  }
  
  static void ˊ(int paramInt, Matrix paramMatrix)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      paramMatrix.setScale(-1.0F, 1.0F);
      return;
    case 3: 
      paramMatrix.setRotate(180.0F);
      return;
    case 4: 
      paramMatrix.setRotate(180.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    case 5: 
      paramMatrix.setRotate(90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    case 6: 
      paramMatrix.setRotate(90.0F);
      return;
    case 7: 
      paramMatrix.setRotate(-90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    }
    paramMatrix.setRotate(-90.0F);
  }
  
  @TargetApi(12)
  public static void ˊ(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if ((Build.VERSION.SDK_INT >= 12) && (paramBitmap2 != null)) {
      paramBitmap2.setHasAlpha(paramBitmap1.hasAlpha());
    }
  }
  
  public static int ᓫ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 5: 
    case 6: 
      return 90;
    case 3: 
    case 4: 
      return 180;
    case 7: 
    case 8: 
      return 270;
    }
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.äº
 * JD-Core Version:    0.7.0.1
 */