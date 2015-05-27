package o;

import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ʹ
  implements ViewTreeObserver.OnPreDrawListener
{
  ʹ(View paramView1, ﹳ.ˊ paramˊ, Map paramMap1, Map paramMap2, Transition paramTransition, ArrayList paramArrayList, View paramView2) {}
  
  public boolean onPreDraw()
  {
    this.ˤ.getViewTreeObserver().removeOnPreDrawListener(this);
    View localView = this.ι.getView();
    if (localView != null)
    {
      if (!this.৲.isEmpty())
      {
        ﹳ.ˊ(this.ᐢ, localView);
        this.ᐢ.keySet().retainAll(this.৲.values());
        Iterator localIterator = this.৲.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          Object localObject = (String)localEntry.getValue();
          localObject = (View)this.ᐢ.get(localObject);
          if (localObject != null) {
            ((View)localObject).setTransitionName((String)localEntry.getKey());
          }
        }
      }
      if (this.ᒻ != null)
      {
        ﹳ.ˋ(this.ᔅ, localView);
        this.ᔅ.removeAll(this.ᐢ.values());
        this.ᔅ.add(this.ᔉ);
        this.ᒻ.removeTarget(this.ᔉ);
        ﹳ.ˋ(this.ᒻ, this.ᔅ);
      }
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê¹
 * JD-Core Version:    0.7.0.1
 */