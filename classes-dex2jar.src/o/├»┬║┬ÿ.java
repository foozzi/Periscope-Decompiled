package o;

import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

final class ﺘ
  implements ViewTreeObserver.OnScrollChangedListener
{
  ﺘ(Field paramField, PopupWindow paramPopupWindow, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener) {}
  
  public void onScrollChanged()
  {
    try
    {
      Object localObject = (WeakReference)this.ӱ.get(this.ԏ);
      if (localObject != null)
      {
        localObject = ((WeakReference)localObject).get();
        if (localObject != null) {}
      }
      else
      {
        return;
      }
      this.Դ.onScrollChanged();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº
 * JD-Core Version:    0.7.0.1
 */