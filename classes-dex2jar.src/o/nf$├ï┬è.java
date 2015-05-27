package o;

class nf$ˊ
  extends lz<mr>
{
  private final mh<mr> QR;
  private final lz<mr> Qz;
  
  public nf$ˊ(mh<mr> parammh, lz<mr> paramlz)
  {
    this.QR = parammh;
    this.Qz = paramlz;
  }
  
  public void ˊ(mf<mr> parammf)
  {
    pj.cd().ˑ("Twitter", "Authorization completed successfully");
    this.QR.ˊ((mg)parammf.data);
    this.Qz.ˊ(parammf);
  }
  
  public void ˊ(mo parammo)
  {
    pj.cd().ˏ("Twitter", "Authorization completed with an error", parammo);
    this.Qz.ˊ(parammo);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nf.Ë
 * JD-Core Version:    0.7.0.1
 */