package o;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.media.MediaScannerConnection;
import android.os.Environment;
import android.widget.Toast;
import java.io.File;
import java.util.List;

public class adz
  implements ady
{
  private final vn brN;
  private final amw byV;
  private boolean bzA;
  private final alg bzx;
  private final agd bzy;
  private final afo bzz;
  private final Activity mActivity;
  
  public adz(Activity paramActivity, vn paramvn, alg paramalg, amw paramamw, agd paramagd, afo paramafo)
  {
    this(paramActivity, paramvn, paramalg, paramamw, paramagd, paramafo, false);
  }
  
  public adz(Activity paramActivity, vn paramvn, alg paramalg, amw paramamw, agd paramagd, afo paramafo, boolean paramBoolean)
  {
    this.mActivity = paramActivity;
    this.brN = paramvn;
    this.bzx = paramalg;
    this.byV = paramamw;
    this.bzy = paramagd;
    this.bzz = paramafo;
    this.bzA = paramBoolean;
  }
  
  private void xe()
  {
    if (this.bzx != null) {
      this.bzx.xe();
    }
  }
  
  public void onEventMainThread(aai paramaai)
  {
    switch (1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
      return;
    case 1: 
      if (paramaai.vA())
      {
        vi.ˊ(vi.if.bmt);
        Toast.makeText(this.mActivity, 2131099871, 0).show();
        return;
      }
      vi.ˊ(vi.if.bmv);
      Toast.makeText(this.mActivity, 2131099870, 0).show();
      return;
    case 2: 
      if (paramaai.vA())
      {
        Toast.makeText(this.mActivity, 2131099764, 0).show();
        this.brN.tX();
        return;
      }
      Toast.makeText(this.mActivity, 2131099763, 0).show();
      return;
    }
    if (paramaai.vA())
    {
      Toast.makeText(this.mActivity, 2131099865, 0).show();
      return;
    }
    Toast.makeText(this.mActivity, 2131099864, 0).show();
  }
  
  public void xr()
  {
    this.bzz.xr();
    xe();
  }
  
  public void xs()
  {
    this.bzz.xs();
    xe();
  }
  
  public boolean xt()
  {
    return this.bzz.xt();
  }
  
  public boolean xu()
  {
    return this.bzA;
  }
  
  public boolean xv()
  {
    return new acz(this.mActivity).wS().byl;
  }
  
  public void ƚ(String paramString)
  {
    this.byV.ƚ(paramString);
  }
  
  public void ǐ(String paramString)
  {
    if (this.bzy != null) {
      this.bzy.ǐ(paramString);
    }
    xe();
  }
  
  public void Ȋ(String paramString)
  {
    new AlertDialog.Builder(this.mActivity).setMessage(this.mActivity.getString(2131099869)).setNegativeButton(2131099867, new aec(this)).setPositiveButton(2131099868, new aeb(this, paramString)).setOnCancelListener(new aea(this)).show();
  }
  
  public void ʅ(String paramString)
  {
    new AlertDialog.Builder(this.mActivity).setMessage(this.mActivity.getString(2131099762)).setNegativeButton(2131099760, null).setPositiveButton(2131099761, new aed(this, paramString)).show();
  }
  
  public void ί(String paramString)
  {
    new AlertDialog.Builder(this.mActivity).setMessage(this.mActivity.getString(2131099863)).setNegativeButton(2131099861, null).setPositiveButton(2131099862, new aee(this, paramString)).show();
  }
  
  public String ד(String paramString)
  {
    File localFile = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES), "Periscope");
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    return new File(localFile, "ps" + paramString + ".mp4").getAbsolutePath();
  }
  
  public void י(List<? extends ale> paramList)
  {
    if (this.bzx != null) {
      this.bzx.ˋ(null, paramList);
    }
  }
  
  public void ױ(String paramString)
  {
    this.bzA = true;
    paramString = ד(paramString);
    MediaScannerConnection.scanFile(this.mActivity, new String[] { paramString }, new String[] { "video/mp4" }, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adz
 * JD-Core Version:    0.7.0.1
 */