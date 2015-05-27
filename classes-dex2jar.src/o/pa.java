package o;

final class pa
{
  private oz Uo;
  private oz Up;
  
  oz bZ()
  {
    try
    {
      oz localoz = this.Uo;
      if (this.Uo != null)
      {
        this.Uo = this.Uo.Un;
        if (this.Uo == null) {
          this.Up = null;
        }
      }
      return localoz;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void ˎ(oz paramoz)
  {
    if (paramoz == null) {}
    try
    {
      throw new NullPointerException("null cannot be enqueued");
    }
    finally {}
    if (this.Up != null)
    {
      this.Up.Un = paramoz;
      this.Up = paramoz;
    }
    else if (this.Uo == null)
    {
      this.Up = paramoz;
      this.Uo = paramoz;
    }
    else
    {
      throw new IllegalStateException("Head present, but no tail");
    }
    notifyAll();
  }
  
  oz ῑ(int paramInt)
  {
    try
    {
      if (this.Uo == null) {
        wait(paramInt);
      }
      oz localoz = bZ();
      return localoz;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pa
 * JD-Core Version:    0.7.0.1
 */