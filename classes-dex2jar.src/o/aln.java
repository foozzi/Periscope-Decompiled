package o;

import android.support.v4.view.ViewPager.aux;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class aln
  implements ViewPager.aux
{
  List<ViewPager.aux> bMc = new ArrayList();
  
  public void ʹ(int paramInt)
  {
    Iterator localIterator = this.bMc.iterator();
    while (localIterator.hasNext()) {
      ((ViewPager.aux)localIterator.next()).ʹ(paramInt);
    }
  }
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2)
  {
    Iterator localIterator = this.bMc.iterator();
    while (localIterator.hasNext()) {
      ((ViewPager.aux)localIterator.next()).ˊ(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public void ˊ(ViewPager.aux paramaux)
  {
    this.bMc.add(paramaux);
  }
  
  public void ﾞ(int paramInt)
  {
    Iterator localIterator = this.bMc.iterator();
    while (localIterator.hasNext()) {
      ((ViewPager.aux)localIterator.next()).ﾞ(paramInt);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aln
 * JD-Core Version:    0.7.0.1
 */