package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import o.ﺑ;

public abstract class RecyclerView$ˑ
{
  public final View bB;
  int bC = -1;
  long bD = -1L;
  int bE = -1;
  int bF = -1;
  ˑ bG = null;
  ˑ bH = null;
  private int bI = 0;
  private RecyclerView.ʾ bJ = null;
  private int ῖ;
  int Ύ = -1;
  
  public RecyclerView$ˑ(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    this.bB = paramView;
  }
  
  private boolean Ί()
  {
    return (this.ῖ & 0x10) != 0;
  }
  
  private boolean ℴ()
  {
    return ((this.ῖ & 0x10) == 0) && (ﺑ.ʾ(this.bB));
  }
  
  public void addFlags(int paramInt)
  {
    this.ῖ |= paramInt;
  }
  
  public final int getAdapterPosition()
  {
    ViewParent localViewParent = this.bB.getParent();
    if (!(localViewParent instanceof RecyclerView)) {
      return -1;
    }
    return RecyclerView.ˊ((RecyclerView)localViewParent, this);
  }
  
  public final long getItemId()
  {
    return this.bD;
  }
  
  public final int getItemViewType()
  {
    return this.bE;
  }
  
  public final int getLayoutPosition()
  {
    if (this.bF == -1) {
      return this.Ύ;
    }
    return this.bF;
  }
  
  public final int getOldPosition()
  {
    return this.bC;
  }
  
  @Deprecated
  public final int getPosition()
  {
    if (this.bF == -1) {
      return this.Ύ;
    }
    return this.bF;
  }
  
  boolean isBound()
  {
    return (this.ῖ & 0x1) != 0;
  }
  
  boolean isRemoved()
  {
    return (this.ῖ & 0x8) != 0;
  }
  
  void setFlags(int paramInt1, int paramInt2)
  {
    this.ῖ = (this.ῖ & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final void setIsRecyclable(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = this.bI - 1;
    } else {
      i = this.bI + 1;
    }
    this.bI = i;
    if (this.bI < 0)
    {
      this.bI = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
      return;
    }
    if ((!paramBoolean) && (this.bI == 1))
    {
      this.ῖ |= 0x10;
      return;
    }
    if ((paramBoolean) && (this.bI == 0)) {
      this.ῖ &= 0xFFFFFFEF;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.Ύ + " id=" + this.bD + ", oldPos=" + this.bC + ", pLpos:" + this.bF);
    if (ᴛ()) {
      localStringBuilder.append(" scrap");
    }
    if (Ḯ()) {
      localStringBuilder.append(" invalid");
    }
    if (!isBound()) {
      localStringBuilder.append(" unbound");
    }
    if (Ἰ()) {
      localStringBuilder.append(" update");
    }
    if (isRemoved()) {
      localStringBuilder.append(" removed");
    }
    if (ᴐ()) {
      localStringBuilder.append(" ignored");
    }
    if (Ἱ()) {
      localStringBuilder.append(" changed");
    }
    if (Ῐ()) {
      localStringBuilder.append(" tmpDetached");
    }
    if (!Ὶ()) {
      localStringBuilder.append(" not recyclable(" + this.bI + ")");
    }
    if (!Ῑ()) {
      localStringBuilder.append("undefined adapter position");
    }
    if (this.bB.getParent() == null) {
      localStringBuilder.append(" no parent");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  void ʻ(RecyclerView.ʾ paramʾ)
  {
    this.bJ = paramʾ;
  }
  
  void ˌ(int paramInt, boolean paramBoolean)
  {
    if (this.bC == -1) {
      this.bC = this.Ύ;
    }
    if (this.bF == -1) {
      this.bF = this.Ύ;
    }
    if (paramBoolean) {
      this.bF += paramInt;
    }
    this.Ύ += paramInt;
    if (this.bB.getLayoutParams() != null) {
      ((RecyclerView.ʼ)this.bB.getLayoutParams()).aQ = true;
    }
  }
  
  void ˏ(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    addFlags(8);
    ˌ(paramInt2, paramBoolean);
    this.Ύ = paramInt1;
  }
  
  void ڌ()
  {
    this.ῖ = 0;
    this.Ύ = -1;
    this.bC = -1;
    this.bD = -1L;
    this.bF = -1;
    this.bI = 0;
    this.bG = null;
    this.bH = null;
  }
  
  void ᕻ()
  {
    this.bC = -1;
    this.bF = -1;
  }
  
  boolean ᘁ(int paramInt)
  {
    return (this.ῖ & paramInt) != 0;
  }
  
  void ᴄ()
  {
    if (this.bC == -1) {
      this.bC = this.Ύ;
    }
  }
  
  public boolean ᴐ()
  {
    return (this.ῖ & 0x80) != 0;
  }
  
  boolean ᴛ()
  {
    return this.bJ != null;
  }
  
  void ᴺ()
  {
    this.bJ.ⁱ(this);
  }
  
  boolean ᵈ()
  {
    return (this.ῖ & 0x20) != 0;
  }
  
  void ᵑ()
  {
    this.ῖ &= 0xFFFFFFDF;
  }
  
  public void ᵨ()
  {
    this.ῖ &= 0xFFFFFEFF;
  }
  
  public boolean Ḯ()
  {
    return (this.ῖ & 0x4) != 0;
  }
  
  boolean Ἰ()
  {
    return (this.ῖ & 0x2) != 0;
  }
  
  boolean Ἱ()
  {
    return (this.ῖ & 0x40) != 0;
  }
  
  public boolean Ῐ()
  {
    return (this.ῖ & 0x100) != 0;
  }
  
  boolean Ῑ()
  {
    return (this.ῖ & 0x200) != 0;
  }
  
  public final boolean Ὶ()
  {
    return ((this.ῖ & 0x10) == 0) && (!ﺑ.ʾ(this.bB));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */