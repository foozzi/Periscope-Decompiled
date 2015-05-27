package o;

import android.support.v7.widget.RecyclerView.ˎ;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ᵖ
  extends RecyclerView.ˎ
{
  private ArrayList<RecyclerView.ˑ> פ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ק = new ArrayList();
  private ArrayList<ᵖ.ˊ> ת = new ArrayList();
  private ArrayList<ᵖ.if> ث = new ArrayList();
  private ArrayList<ArrayList<RecyclerView.ˑ>> ٽ = new ArrayList();
  private ArrayList<ArrayList<ᵖ.ˊ>> پ = new ArrayList();
  private ArrayList<ArrayList<ᵖ.if>> ڑ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ۅ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ۉ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ے = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ܘ = new ArrayList();
  
  private void ĺ()
  {
    if (!isRunning()) {
      ɼ();
    }
  }
  
  private void ˊ(List<ᵖ.if> paramList, RecyclerView.ˑ paramˑ)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ᵖ.if localif = (ᵖ.if)paramList.get(i);
      if ((ˊ(localif, paramˑ)) && (localif.ງ == null) && (localif.ე == null)) {
        paramList.remove(localif);
      }
      i -= 1;
    }
  }
  
  private void ˊ(ᵖ.if paramif)
  {
    Object localObject1 = paramif.ງ;
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = ((RecyclerView.ˑ)localObject1).bB;
    }
    Object localObject2 = paramif.ე;
    if (localObject2 != null) {
      localObject2 = ((RecyclerView.ˑ)localObject2).bB;
    } else {
      localObject2 = null;
    }
    if (localObject1 != null)
    {
      this.ܘ.add(paramif.ງ);
      localObject1 = ﺑ.ﹳ((View)localObject1).ˊ(ɟ());
      ((ᵘ)localObject1).ˏ(paramif.Ꮭ - paramif.პ);
      ((ᵘ)localObject1).ᐝ(paramif.ᐱ - paramif.Ꮧ);
      ((ᵘ)localObject1).ˎ(0.0F).ˊ(new ἱ(this, paramif, (ᵘ)localObject1)).start();
    }
    if (localObject2 != null)
    {
      this.ܘ.add(paramif.ე);
      localObject1 = ﺑ.ﹳ((View)localObject2);
      ((ᵘ)localObject1).ˏ(0.0F).ᐝ(0.0F).ˊ(ɟ()).ˎ(1.0F).ˊ(new ὶ(this, paramif, (ᵘ)localObject1, (View)localObject2)).start();
    }
  }
  
  private boolean ˊ(ᵖ.if paramif, RecyclerView.ˑ paramˑ)
  {
    boolean bool = false;
    if (paramif.ე == paramˑ)
    {
      paramif.ე = null;
    }
    else if (paramif.ງ == paramˑ)
    {
      paramif.ງ = null;
      bool = true;
    }
    else
    {
      return false;
    }
    ﺑ.ˎ(paramˑ.bB, 1.0F);
    ﺑ.ˊ(paramˑ.bB, 0.0F);
    ﺑ.ˋ(paramˑ.bB, 0.0F);
    ˊ(paramˑ, bool);
    return true;
  }
  
  private void ˋ(RecyclerView.ˑ paramˑ)
  {
    ᵘ localᵘ = ﺑ.ﹳ(paramˑ.bB);
    localᵘ.ˊ(ɔ()).ˎ(0.0F).ˊ(new ṛ(this, paramˑ, localᵘ)).start();
    this.ے.add(paramˑ);
  }
  
  private void ˋ(RecyclerView.ˑ paramˑ, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = paramˑ.bB;
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if (paramInt1 != 0) {
      ﺑ.ﹳ((View)localObject).ˏ(0.0F);
    }
    if (paramInt2 != 0) {
      ﺑ.ﹳ((View)localObject).ᐝ(0.0F);
    }
    this.ۉ.add(paramˑ);
    localObject = ﺑ.ﹳ((View)localObject);
    ((ᵘ)localObject).ˊ(ľ()).ˊ(new ἰ(this, paramˑ, paramInt1, paramInt2, (ᵘ)localObject)).start();
  }
  
  private void ˋ(ᵖ.if paramif)
  {
    if (paramif.ງ != null) {
      ˊ(paramif, paramif.ງ);
    }
    if (paramif.ე != null) {
      ˊ(paramif, paramif.ე);
    }
  }
  
  private void ˏ(RecyclerView.ˑ paramˑ)
  {
    Object localObject = paramˑ.bB;
    this.ۅ.add(paramˑ);
    localObject = ﺑ.ﹳ((View)localObject);
    ((ᵘ)localObject).ˎ(1.0F).ˊ(ǀ()).ˊ(new ỉ(this, paramˑ, (ᵘ)localObject)).start();
  }
  
  public boolean isRunning()
  {
    return (!this.ק.isEmpty()) || (!this.ث.isEmpty()) || (!this.ת.isEmpty()) || (!this.פ.isEmpty()) || (!this.ۉ.isEmpty()) || (!this.ے.isEmpty()) || (!this.ۅ.isEmpty()) || (!this.ܘ.isEmpty()) || (!this.پ.isEmpty()) || (!this.ٽ.isEmpty()) || (!this.ڑ.isEmpty());
  }
  
  public void ĭ()
  {
    int i;
    if (!this.פ.isEmpty()) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (!this.ת.isEmpty()) {
      j = 1;
    } else {
      j = 0;
    }
    int k;
    if (!this.ث.isEmpty()) {
      k = 1;
    } else {
      k = 0;
    }
    int m;
    if (!this.ק.isEmpty()) {
      m = 1;
    } else {
      m = 0;
    }
    if ((i == 0) && (j == 0) && (m == 0) && (k == 0)) {
      return;
    }
    Object localObject1 = this.פ.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ˋ((RecyclerView.ˑ)((Iterator)localObject1).next());
    }
    this.פ.clear();
    Object localObject2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.ת);
      this.پ.add(localObject1);
      this.ת.clear();
      localObject2 = new ᵟ(this, (ArrayList)localObject1);
      if (i != 0) {
        ﺑ.ˊ(((ᵖ.ˊ)((ArrayList)localObject1).get(0)).ᓮ.bB, (Runnable)localObject2, ɔ());
      } else {
        ((Runnable)localObject2).run();
      }
    }
    if (k != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.ث);
      this.ڑ.add(localObject1);
      this.ث.clear();
      localObject2 = new ḷ(this, (ArrayList)localObject1);
      if (i != 0) {
        ﺑ.ˊ(((ᵖ.if)((ArrayList)localObject1).get(0)).ງ.bB, (Runnable)localObject2, ɔ());
      } else {
        ((Runnable)localObject2).run();
      }
    }
    if (m != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.ק);
      this.ٽ.add(localObject1);
      this.ק.clear();
      localObject2 = new ṙ(this, (ArrayList)localObject1);
      if ((i != 0) || (j != 0) || (k != 0))
      {
        long l1;
        if (i != 0) {
          l1 = ɔ();
        } else {
          l1 = 0L;
        }
        if (j != 0) {
          l2 = ľ();
        } else {
          l2 = 0L;
        }
        long l3;
        if (k != 0) {
          l3 = ɟ();
        } else {
          l3 = 0L;
        }
        long l2 = Math.max(l2, l3);
        ﺑ.ˊ(((RecyclerView.ˑ)((ArrayList)localObject1).get(0)).bB, (Runnable)localObject2, l1 + l2);
        return;
      }
      ((Runnable)localObject2).run();
    }
  }
  
  public void ļ()
  {
    int i = this.ת.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (ᵖ.ˊ)this.ת.get(i);
      localObject2 = ((ᵖ.ˊ)localObject1).ᓮ.bB;
      ﺑ.ˋ((View)localObject2, 0.0F);
      ﺑ.ˊ((View)localObject2, 0.0F);
      ˉ(((ᵖ.ˊ)localObject1).ᓮ);
      this.ת.remove(i);
      i -= 1;
    }
    i = this.פ.size() - 1;
    while (i >= 0)
    {
      ˈ((RecyclerView.ˑ)this.פ.get(i));
      this.פ.remove(i);
      i -= 1;
    }
    i = this.ק.size() - 1;
    while (i >= 0)
    {
      localObject1 = (RecyclerView.ˑ)this.ק.get(i);
      ﺑ.ˎ(((RecyclerView.ˑ)localObject1).bB, 1.0F);
      ˌ((RecyclerView.ˑ)localObject1);
      this.ק.remove(i);
      i -= 1;
    }
    i = this.ث.size() - 1;
    while (i >= 0)
    {
      ˋ((ᵖ.if)this.ث.get(i));
      i -= 1;
    }
    this.ث.clear();
    if (!isRunning()) {
      return;
    }
    i = this.پ.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.پ.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (ᵖ.ˊ)((ArrayList)localObject1).get(j);
        View localView = ((ᵖ.ˊ)localObject2).ᓮ.bB;
        ﺑ.ˋ(localView, 0.0F);
        ﺑ.ˊ(localView, 0.0F);
        ˉ(((ᵖ.ˊ)localObject2).ᓮ);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.پ.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.ٽ.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.ٽ.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (RecyclerView.ˑ)((ArrayList)localObject1).get(j);
        ﺑ.ˎ(((RecyclerView.ˑ)localObject2).bB, 1.0F);
        ˌ((RecyclerView.ˑ)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.ٽ.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.ڑ.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.ڑ.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        ˋ((ᵖ.if)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          this.ڑ.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    ˏ(this.ے);
    ˏ(this.ۉ);
    ˏ(this.ۅ);
    ˏ(this.ܘ);
    ɼ();
  }
  
  public boolean ˊ(RecyclerView.ˑ paramˑ)
  {
    ᐝ(paramˑ);
    this.פ.add(paramˑ);
    return true;
  }
  
  public boolean ˊ(RecyclerView.ˑ paramˑ, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramˑ.bB;
    paramInt1 = (int)(paramInt1 + ﺑ.ˑ(paramˑ.bB));
    paramInt2 = (int)(paramInt2 + ﺑ.ـ(paramˑ.bB));
    ᐝ(paramˑ);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      ˉ(paramˑ);
      return false;
    }
    if (i != 0) {
      ﺑ.ˊ(localView, -i);
    }
    if (j != 0) {
      ﺑ.ˋ(localView, -j);
    }
    this.ת.add(new ᵖ.ˊ(paramˑ, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean ˊ(RecyclerView.ˑ paramˑ1, RecyclerView.ˑ paramˑ2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = ﺑ.ˑ(paramˑ1.bB);
    float f2 = ﺑ.ـ(paramˑ1.bB);
    float f3 = ﺑ.ˉ(paramˑ1.bB);
    ᐝ(paramˑ1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    ﺑ.ˊ(paramˑ1.bB, f1);
    ﺑ.ˋ(paramˑ1.bB, f2);
    ﺑ.ˎ(paramˑ1.bB, f3);
    if ((paramˑ2 != null) && (paramˑ2.bB != null))
    {
      ᐝ(paramˑ2);
      ﺑ.ˊ(paramˑ2.bB, -i);
      ﺑ.ˋ(paramˑ2.bB, -j);
      ﺑ.ˎ(paramˑ2.bB, 0.0F);
    }
    this.ث.add(new ᵖ.if(paramˑ1, paramˑ2, paramInt1, paramInt2, paramInt3, paramInt4, null));
    return true;
  }
  
  public boolean ˎ(RecyclerView.ˑ paramˑ)
  {
    ᐝ(paramˑ);
    ﺑ.ˎ(paramˑ.bB, 0.0F);
    this.ק.add(paramˑ);
    return true;
  }
  
  void ˏ(List<RecyclerView.ˑ> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ﺑ.ﹳ(((RecyclerView.ˑ)paramList.get(i)).bB).cancel();
      i -= 1;
    }
  }
  
  public void ᐝ(RecyclerView.ˑ paramˑ)
  {
    View localView = paramˑ.bB;
    ﺑ.ﹳ(localView).cancel();
    int i = this.ת.size() - 1;
    while (i >= 0)
    {
      if (((ᵖ.ˊ)this.ת.get(i)).ᓮ == paramˑ)
      {
        ﺑ.ˋ(localView, 0.0F);
        ﺑ.ˊ(localView, 0.0F);
        ˉ(paramˑ);
        this.ת.remove(i);
      }
      i -= 1;
    }
    ˊ(this.ث, paramˑ);
    if (this.פ.remove(paramˑ))
    {
      ﺑ.ˎ(localView, 1.0F);
      ˈ(paramˑ);
    }
    if (this.ק.remove(paramˑ))
    {
      ﺑ.ˎ(localView, 1.0F);
      ˌ(paramˑ);
    }
    i = this.ڑ.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.ڑ.get(i);
      ˊ(localArrayList, paramˑ);
      if (localArrayList.isEmpty()) {
        this.ڑ.remove(i);
      }
      i -= 1;
    }
    i = this.پ.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.پ.get(i);
      int j = localArrayList.size() - 1;
      while (j >= 0)
      {
        if (((ᵖ.ˊ)localArrayList.get(j)).ᓮ == paramˑ)
        {
          ﺑ.ˋ(localView, 0.0F);
          ﺑ.ˊ(localView, 0.0F);
          ˉ(paramˑ);
          localArrayList.remove(j);
          if (!localArrayList.isEmpty()) {
            break;
          }
          this.پ.remove(i);
          break;
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.ٽ.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.ٽ.get(i);
      if (localArrayList.remove(paramˑ))
      {
        ﺑ.ˎ(localView, 1.0F);
        ˌ(paramˑ);
        if (localArrayList.isEmpty()) {
          this.ٽ.remove(i);
        }
      }
      i -= 1;
    }
    this.ے.remove(paramˑ);
    this.ۅ.remove(paramˑ);
    this.ܘ.remove(paramˑ);
    this.ۉ.remove(paramˑ);
    ĺ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */