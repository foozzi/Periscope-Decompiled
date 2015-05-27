package o;

import android.support.v7.widget.RecyclerView.ˎ;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class ags
  extends RecyclerView.ˎ
{
  private ArrayList<ags.ˊ> ק = new ArrayList();
  private ArrayList<ags.ˊ> ת = new ArrayList();
  private ArrayList<if> ث = new ArrayList();
  private ArrayList<ArrayList<ags.ˊ>> ٽ = new ArrayList();
  private ArrayList<ArrayList<ags.ˊ>> پ = new ArrayList();
  private ArrayList<ArrayList<if>> ڑ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ۅ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ۉ = new ArrayList();
  private ArrayList<RecyclerView.ˑ> ܘ = new ArrayList();
  
  private void ĺ()
  {
    if (!isRunning()) {
      ɼ();
    }
  }
  
  private void ˊ(List<if> paramList, RecyclerView.ˑ paramˑ)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      if localif = (if)paramList.get(i);
      if ((ˊ(localif, paramˑ)) && (localif.ງ == null) && (localif.ე == null)) {
        paramList.remove(localif);
      }
      i -= 1;
    }
  }
  
  private void ˊ(if paramif)
  {
    Object localObject2 = paramif.ງ.bB;
    Object localObject1 = paramif.ე;
    if (localObject1 != null) {
      localObject1 = ((RecyclerView.ˑ)localObject1).bB;
    } else {
      localObject1 = null;
    }
    this.ܘ.add(paramif.ງ);
    ᵘ localᵘ = ﺑ.ﹳ((View)localObject2).ˊ(ɟ());
    localᵘ.ˏ(paramif.Ꮭ - paramif.პ);
    localᵘ.ᐝ(paramif.ᐱ - paramif.Ꮧ);
    if (paramif.bDZ != paramif.bDY)
    {
      ((View)localObject2).setPivotX(0.0F);
      ((View)localObject2).setPivotY(0.0F);
      localᵘ.ʻ(paramif.bDZ / paramif.bDY);
    }
    localᵘ.ˎ(0.0F).ˊ(new agw(this, paramif, localᵘ)).start();
    if (localObject1 != null)
    {
      this.ܘ.add(paramif.ე);
      localObject2 = ﺑ.ﹳ((View)localObject1);
      ((ᵘ)localObject2).ˏ(0.0F).ᐝ(0.0F).ˊ(ɟ()).ˎ(1.0F).ˊ(new agx(this, paramif, (ᵘ)localObject2, (View)localObject1)).start();
    }
  }
  
  private void ˊ(ags.ˊ paramˊ)
  {
    RecyclerView.ˑ localˑ = paramˊ.ᓮ;
    int k = paramˊ.პ;
    int i = paramˊ.Ꮧ;
    int m = paramˊ.Ꮭ;
    int j = paramˊ.ᐱ;
    Object localObject = localˑ.bB;
    k = m - k;
    i = j - i;
    if (k != 0) {
      ﺑ.ﹳ((View)localObject).ˏ(0.0F);
    }
    if (i != 0) {
      ﺑ.ﹳ((View)localObject).ᐝ(0.0F);
    }
    if (paramˊ.bEa) {
      this.ۅ.add(localˑ);
    } else {
      this.ۉ.add(localˑ);
    }
    localObject = ﺑ.ﹳ((View)localObject);
    ((ᵘ)localObject).ˊ(ľ()).ˊ(new agv(this, paramˊ, localˑ, k, i, (ᵘ)localObject)).start();
  }
  
  private boolean ˊ(if paramif, RecyclerView.ˑ paramˑ)
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
  
  private void ˋ(if paramif)
  {
    if (paramif.ງ != null) {
      ˊ(paramif, paramif.ງ);
    }
    if (paramif.ე != null) {
      ˊ(paramif, paramif.ე);
    }
  }
  
  public boolean isRunning()
  {
    return (!this.ק.isEmpty()) || (!this.ث.isEmpty()) || (!this.ת.isEmpty()) || (!this.ۉ.isEmpty()) || (!this.ۅ.isEmpty()) || (!this.ܘ.isEmpty()) || (!this.پ.isEmpty()) || (!this.ٽ.isEmpty()) || (!this.ڑ.isEmpty());
  }
  
  public void ĭ()
  {
    int i;
    if (!this.ת.isEmpty()) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (!this.ث.isEmpty()) {
      j = 1;
    } else {
      j = 0;
    }
    int k;
    if (!this.ק.isEmpty()) {
      k = 1;
    } else {
      k = 0;
    }
    if ((i == 0) && (k == 0) && (j == 0)) {
      return;
    }
    ArrayList localArrayList1;
    if ((k != 0) || (i != 0))
    {
      localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      if (i != 0)
      {
        localArrayList3.addAll(this.ת);
        localArrayList1.addAll(localArrayList3);
        this.پ.add(localArrayList3);
        this.ת.clear();
      }
      if (k != 0)
      {
        localArrayList2.addAll(this.ק);
        localArrayList1.addAll(localArrayList2);
        this.ٽ.add(localArrayList2);
        this.ק.clear();
      }
      new agt(this, localArrayList1, localArrayList3, localArrayList2).run();
    }
    if (j != 0)
    {
      localArrayList1 = new ArrayList();
      localArrayList1.addAll(this.ث);
      this.ڑ.add(localArrayList1);
      this.ث.clear();
      new agu(this, localArrayList1).run();
    }
  }
  
  public void ļ()
  {
    int i = this.ת.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (ags.ˊ)this.ת.get(i);
      localObject2 = ((ags.ˊ)localObject1).ᓮ.bB;
      ﺑ.ˋ((View)localObject2, 0.0F);
      ﺑ.ˊ((View)localObject2, 0.0F);
      ˉ(((ags.ˊ)localObject1).ᓮ);
      this.ת.remove(i);
      i -= 1;
    }
    i = this.ק.size() - 1;
    while (i >= 0)
    {
      localObject1 = ((ags.ˊ)this.ק.get(i)).ᓮ;
      ﺑ.ˎ(((RecyclerView.ˑ)localObject1).bB, 1.0F);
      ˌ((RecyclerView.ˑ)localObject1);
      this.ק.remove(i);
      i -= 1;
    }
    i = this.ث.size() - 1;
    while (i >= 0)
    {
      ˋ((if)this.ث.get(i));
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
        localObject2 = (ags.ˊ)((ArrayList)localObject1).get(j);
        View localView = ((ags.ˊ)localObject2).ᓮ.bB;
        ﺑ.ˋ(localView, 0.0F);
        ﺑ.ˊ(localView, 0.0F);
        ˉ(((ags.ˊ)localObject2).ᓮ);
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
        localObject2 = ((ags.ˊ)((ArrayList)localObject1).get(j)).ᓮ;
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
        ˋ((if)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          this.ڑ.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    ˏ(this.ۉ);
    ˏ(this.ۅ);
    ˏ(this.ܘ);
    ɼ();
  }
  
  public boolean ˊ(RecyclerView.ˑ paramˑ)
  {
    ˈ(paramˑ);
    return false;
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
    this.ת.add(new ags.ˊ(paramˑ, paramInt1, paramInt2, paramInt3, paramInt4, null));
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
      i = paramˑ1.bB.getWidth();
      j = paramˑ2.bB.getWidth();
      this.ث.add(new if(paramˑ1, paramˑ2, paramInt1, paramInt2, paramInt3, paramInt4, i, j, null));
      return true;
    }
    ˊ(paramˑ1, true);
    return false;
  }
  
  public boolean ˎ(RecyclerView.ˑ paramˑ)
  {
    ᐝ(paramˑ);
    float f = ﺑ.ـ(paramˑ.bB);
    int i = paramˑ.bB.getHeight();
    int j = (int)f;
    int k = (int)f;
    ﺑ.ˋ(paramˑ.bB, i);
    paramˑ = new ags.ˊ(paramˑ, 0, j + i, 0, k, null);
    paramˑ.bEa = true;
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
      if (((ags.ˊ)this.ת.get(i)).ᓮ == paramˑ)
      {
        ﺑ.ˋ(localView, 0.0F);
        ﺑ.ˊ(localView, 0.0F);
        ˉ(paramˑ);
        this.ת.remove(i);
      }
      i -= 1;
    }
    ˊ(this.ث, paramˑ);
    i = this.ק.size() - 1;
    while (i >= 0)
    {
      if (((ags.ˊ)this.ק.get(i)).ᓮ == paramˑ)
      {
        this.ק.remove(i);
        ﺑ.ˋ(localView, 0.0F);
        ˌ(paramˑ);
      }
      i -= 1;
    }
    i = this.ڑ.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.ڑ.get(i);
      ˊ(localArrayList, paramˑ);
      if (localArrayList.isEmpty()) {
        this.ڑ.remove(localArrayList);
      }
      i -= 1;
    }
    i = this.پ.size() - 1;
    int j;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.پ.get(i);
      j = localArrayList.size() - 1;
      while (j >= 0)
      {
        if (((ags.ˊ)localArrayList.get(j)).ᓮ == paramˑ)
        {
          ﺑ.ˋ(localView, 0.0F);
          ﺑ.ˊ(localView, 0.0F);
          ˉ(paramˑ);
          localArrayList.remove(j);
          if (!localArrayList.isEmpty()) {
            break;
          }
          this.پ.remove(localArrayList);
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
      j = localArrayList.size() - 1;
      while (j >= 0)
      {
        if (((ags.ˊ)localArrayList.get(j)).ᓮ == paramˑ)
        {
          localArrayList.remove(j);
          ﺑ.ˋ(localView, 0.0F);
          ˌ(paramˑ);
          if (localArrayList.isEmpty()) {
            this.ٽ.remove(localArrayList);
          }
        }
        j -= 1;
      }
      i -= 1;
    }
    this.ۅ.remove(paramˑ);
    this.ܘ.remove(paramˑ);
    this.ۉ.remove(paramˑ);
    ĺ();
  }
  
  static class if
  {
    public int bDY;
    public int bDZ;
    public RecyclerView.ˑ ງ;
    public RecyclerView.ˑ ე;
    public int პ;
    public int Ꮧ;
    public int Ꮭ;
    public int ᐱ;
    
    private if(RecyclerView.ˑ paramˑ1, RecyclerView.ˑ paramˑ2)
    {
      this.ງ = paramˑ1;
      this.ე = paramˑ2;
    }
    
    private if(RecyclerView.ˑ paramˑ1, RecyclerView.ˑ paramˑ2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      this(paramˑ1, paramˑ2);
      this.პ = paramInt1;
      this.Ꮧ = paramInt2;
      this.Ꮭ = paramInt3;
      this.ᐱ = paramInt4;
      this.bDY = paramInt5;
      this.bDZ = paramInt6;
    }
    
    public String toString()
    {
      return "ChangeInfo{oldHolder=" + this.ງ + ", newHolder=" + this.ე + ", fromX=" + this.პ + ", fromY=" + this.Ꮧ + ", fromWidth=" + this.bDY + ", toX=" + this.Ꮭ + ", toY=" + this.ᐱ + ", toWidth=" + this.bDZ + '}';
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ags
 * JD-Core Version:    0.7.0.1
 */