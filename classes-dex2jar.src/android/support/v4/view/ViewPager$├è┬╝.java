package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

class ViewPager$ʼ
  implements Comparator<View>
{
  public int ˊ(View paramView1, View paramView2)
  {
    paramView1 = (ViewPager.ˋ)paramView1.getLayoutParams();
    paramView2 = (ViewPager.ˋ)paramView2.getLayoutParams();
    if (paramView1.ﭝ != paramView2.ﭝ)
    {
      if (paramView1.ﭝ) {
        return 1;
      }
      return -1;
    }
    return paramView1.position - paramView2.position;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.Ê¼
 * JD-Core Version:    0.7.0.1
 */