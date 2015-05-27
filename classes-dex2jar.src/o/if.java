package o;

import android.app.Activity;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

public class if
  extends ᵣ
{
  private static ˊ.if ˊ(ᕀ paramᕀ)
  {
    if localif = null;
    if (paramᕀ != null) {
      localif = new if(paramᕀ);
    }
    return localif;
  }
  
  public static void ˊ(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ˊ.ˊ(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void ˊ(Activity paramActivity, ᕀ paramᕀ)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ˊ.ˊ(paramActivity, ˊ(paramᕀ));
    }
  }
  
  public static void ˋ(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ˊ.ˋ(paramActivity);
    }
  }
  
  public static void ˋ(Activity paramActivity, ᕀ paramᕀ)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ˊ.ˋ(paramActivity, ˊ(paramᕀ));
    }
  }
  
  public static void ˎ(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ˊ.ˎ(paramActivity);
    }
  }
  
  static class if
    extends ˊ.if
  {
    private ᕀ ˊ;
    
    public if(ᕀ paramᕀ)
    {
      this.ˊ = paramᕀ;
    }
    
    public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
    {
      return this.ˊ.onCaptureSharedElementSnapshot(paramView, paramMatrix, paramRectF);
    }
    
    public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
    {
      return this.ˊ.onCreateSnapshotView(paramContext, paramParcelable);
    }
    
    public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap)
    {
      this.ˊ.onMapSharedElements(paramList, paramMap);
    }
    
    public void onRejectSharedElements(List<View> paramList)
    {
      this.ˊ.onRejectSharedElements(paramList);
    }
    
    public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      this.ˊ.onSharedElementEnd(paramList, paramList1, paramList2);
    }
    
    public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      this.ˊ.onSharedElementStart(paramList, paramList1, paramList2);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.if
 * JD-Core Version:    0.7.0.1
 */