package android.support.v7.widget;

import android.view.View;
import java.util.List;

class LinearLayoutManager$ˋ
{
  int ḯ;
  boolean ト = true;
  int リ;
  int ヮ;
  int ヶ;
  int 丫;
  int 乁;
  int 爫 = 0;
  boolean ﬤ = false;
  List<RecyclerView.ˑ> טּ = null;
  
  private View ڍ()
  {
    int n = this.טּ.size();
    Object localObject1 = null;
    int j = 2147483647;
    int i = 0;
    Object localObject2;
    for (;;)
    {
      localObject2 = localObject1;
      if (i >= n) {
        break;
      }
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.טּ.get(i);
      int k;
      if ((!this.ﬤ) && (localˑ.isRemoved()))
      {
        localObject2 = localObject1;
        k = j;
      }
      else
      {
        int m = (localˑ.getLayoutPosition() - this.ヮ) * this.ヶ;
        if (m < 0)
        {
          localObject2 = localObject1;
          k = j;
        }
        else
        {
          localObject2 = localObject1;
          k = j;
          if (m < j)
          {
            localObject1 = localˑ;
            k = m;
            localObject2 = localObject1;
            if (m == 0)
            {
              localObject2 = localObject1;
              break;
            }
          }
        }
      }
      i += 1;
      localObject1 = localObject2;
      j = k;
    }
    if (localObject2 != null)
    {
      this.ヮ = (localObject2.getLayoutPosition() + this.ヶ);
      return localObject2.bB;
    }
    return null;
  }
  
  boolean ˈ(RecyclerView.ˉ paramˉ)
  {
    return (this.ヮ >= 0) && (this.ヮ < paramˉ.getItemCount());
  }
  
  View ˊ(RecyclerView.ʾ paramʾ)
  {
    if (this.טּ != null) {
      return ڍ();
    }
    paramʾ = paramʾ.ᔉ(this.ヮ);
    this.ヮ += this.ヶ;
    return paramʾ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.Ë
 * JD-Core Version:    0.7.0.1
 */