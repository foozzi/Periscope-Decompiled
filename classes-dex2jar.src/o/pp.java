package o;

class pp<Result>
  extends ri<Void, Void, Result>
{
  final pq<Result> Rw;
  
  public pp(pq<Result> parampq)
  {
    this.Rw = parampq;
  }
  
  private qy ʺ(String paramString)
  {
    paramString = new qy(this.Rw.ｯ() + "." + paramString, "KitInitialization");
    paramString.cL();
    return paramString;
  }
  
  protected void onCancelled(Result paramResult)
  {
    this.Rw.onCancelled(paramResult);
    paramResult = new po(this.Rw.ｯ() + " Initialization was cancelled");
    this.Rw.UO.ˏ(paramResult);
  }
  
  protected void onPostExecute(Result paramResult)
  {
    this.Rw.onPostExecute(paramResult);
    this.Rw.UO.ו(paramResult);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    qy localqy = ʺ("onPreExecute");
    try
    {
      boolean bool = this.Rw.ﺰ();
      localqy.cM();
      if (!bool)
      {
        cancel(true);
        return;
      }
    }
    catch (rq localrq)
    {
      throw localrq;
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Fabric", "Failure onPreExecute()", localException);
      return;
    }
    finally
    {
      localqy.cM();
      if (0 == 0) {
        cancel(true);
      }
    }
  }
  
  protected Result ˊ(Void... paramVarArgs)
  {
    qy localqy = ʺ("doInBackground");
    paramVarArgs = null;
    if (!isCancelled()) {
      paramVarArgs = this.Rw.э();
    }
    localqy.cM();
    return paramVarArgs;
  }
  
  public rh є()
  {
    return rh.Xg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pp
 * JD-Core Version:    0.7.0.1
 */