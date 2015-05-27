package o;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

public abstract class ˊ$if
{
  public abstract Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF);
  
  public abstract View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable);
  
  public abstract void onMapSharedElements(List<String> paramList, Map<String, View> paramMap);
  
  public abstract void onRejectSharedElements(List<View> paramList);
  
  public abstract void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2);
  
  public abstract void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë.if
 * JD-Core Version:    0.7.0.1
 */