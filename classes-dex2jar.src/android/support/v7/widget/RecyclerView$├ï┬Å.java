package android.support.v7.widget;

class RecyclerView$ˏ
  implements RecyclerView.ˎ.ˊ
{
  private RecyclerView$ˏ(RecyclerView paramRecyclerView) {}
  
  public void ՙ(RecyclerView.ˑ paramˑ)
  {
    paramˑ.setIsRecyclable(true);
    if (!RecyclerView.ˑ.ｰ(paramˑ)) {
      RecyclerView.ᐝ(this.aB, paramˑ.bB);
    }
  }
  
  public void י(RecyclerView.ˑ paramˑ)
  {
    paramˑ.setIsRecyclable(true);
    if ((paramˑ.bG != null) && (paramˑ.bH == null))
    {
      paramˑ.bG = null;
      paramˑ.setFlags(-65, RecyclerView.ˑ.ʳ(paramˑ));
    }
    paramˑ.bH = null;
    if (!RecyclerView.ˑ.ｰ(paramˑ)) {
      RecyclerView.ᐝ(this.aB, paramˑ.bB);
    }
  }
  
  public void ᐨ(RecyclerView.ˑ paramˑ)
  {
    paramˑ.setIsRecyclable(true);
    if ((!RecyclerView.ᐝ(this.aB, paramˑ.bB)) && (paramˑ.Ῐ())) {
      this.aB.removeDetachedView(paramˑ.bB, false);
    }
  }
  
  public void ﾞ(RecyclerView.ˑ paramˑ)
  {
    paramˑ.setIsRecyclable(true);
    if (!RecyclerView.ˑ.ｰ(paramˑ)) {
      RecyclerView.ᐝ(this.aB, paramˑ.bB);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */