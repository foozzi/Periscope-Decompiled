package o;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ScrollView;
import android.widget.TextView;

class ԍ
  implements Runnable
{
  ԍ(ɬ paramɬ, Activity paramActivity, ɬ.if paramif, ᓾ paramᓾ, tp paramtp) {}
  
  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.nO);
    Object localObject = new օ(this);
    float f = this.nO.getResources().getDisplayMetrics().density;
    int i = ɬ.ˊ(this.nN, f, 5);
    TextView localTextView = new TextView(this.nO);
    localTextView.setAutoLinkMask(15);
    localTextView.setText(this.nQ.getMessage());
    localTextView.setTextAppearance(this.nO, 16973892);
    localTextView.setPadding(i, i, i, i);
    localTextView.setFocusable(false);
    ScrollView localScrollView = new ScrollView(this.nO);
    localScrollView.setPadding(ɬ.ˊ(this.nN, f, 14), ɬ.ˊ(this.nN, f, 2), ɬ.ˊ(this.nN, f, 10), ɬ.ˊ(this.nN, f, 12));
    localScrollView.addView(localTextView);
    localBuilder.setView(localScrollView).setTitle(this.nQ.getTitle()).setCancelable(false).setNeutralButton(this.nQ.ᒐ(), (DialogInterface.OnClickListener)localObject);
    if (this.nR.YY)
    {
      localObject = new א(this);
      localBuilder.setNegativeButton(this.nQ.ᓕ(), (DialogInterface.OnClickListener)localObject);
    }
    if (this.nR.Za)
    {
      localObject = new ע(this);
      localBuilder.setPositiveButton(this.nQ.ᓓ(), (DialogInterface.OnClickListener)localObject);
    }
    localBuilder.show();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô
 * JD-Core Version:    0.7.0.1
 */