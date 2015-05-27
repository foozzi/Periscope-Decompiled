package o;

final class pe
{
  volatile boolean UA;
  final Object Uy;
  final pc Uz;
  final int priority;
  
  pe(Object paramObject, pc parampc, int paramInt)
  {
    this.Uy = paramObject;
    this.Uz = parampc;
    this.priority = paramInt;
    this.UA = true;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof pe))
    {
      paramObject = (pe)paramObject;
      return (this.Uy == paramObject.Uy) && (this.Uz.equals(paramObject.Uz));
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.Uy.hashCode() + this.Uz.Uv.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pe
 * JD-Core Version:    0.7.0.1
 */