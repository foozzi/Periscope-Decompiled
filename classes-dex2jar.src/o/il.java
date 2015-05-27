package o;

import java.lang.reflect.Field;

class il
  extends ik.ˊ
{
  final gk<?> LQ = ik.ˊ(this.LV, this.LR, this.LS, this.LT);
  
  il(ik paramik, String paramString, boolean paramBoolean1, boolean paramBoolean2, fl paramfl, Field paramField, jy paramjy, boolean paramBoolean3)
  {
    super(paramString, paramBoolean1, paramBoolean2);
  }
  
  public boolean ı(Object paramObject)
  {
    if (!this.LX) {
      return false;
    }
    return this.LS.get(paramObject) != paramObject;
  }
  
  void ˊ(jz paramjz, Object paramObject)
  {
    paramjz = this.LQ.ˋ(paramjz);
    if ((paramjz != null) || (!this.LU)) {
      this.LS.set(paramObject, paramjz);
    }
  }
  
  void ˊ(kc paramkc, Object paramObject)
  {
    paramObject = this.LS.get(paramObject);
    new iq(this.LR, this.LQ, this.LT.V()).ˊ(paramkc, paramObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.il
 * JD-Core Version:    0.7.0.1
 */