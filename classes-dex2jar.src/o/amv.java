package o;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;

public class amv
{
  private final AnimatorSet bNA;
  private final ObjectAnimator bNB;
  private final PopupWindow bNy;
  private final TextView bNz;
  private final Handler mHandler;
  
  public amv(Context paramContext)
  {
    this.bNy = new PopupWindow(paramContext);
    this.bNz = ((TextView)LayoutInflater.from(paramContext).inflate(2130903121, null));
    this.mHandler = new if(this.bNy, this.bNz);
    this.bNA = new AnimatorSet();
    this.bNB = ObjectAnimator.ofFloat(this.bNz, View.ALPHA, new float[] { 1.0F, 0.0F });
    this.bNB.setDuration(2500L);
    this.bNy.setHeight(-2);
    this.bNy.setWidth(-2);
    this.bNy.setBackgroundDrawable(null);
    this.bNy.setContentView(this.bNz);
  }
  
  public void dismiss()
  {
    this.mHandler.removeMessages(100);
    this.bNA.cancel();
    this.bNy.dismiss();
  }
  
  public boolean isShowing()
  {
    return this.bNy.isShowing();
  }
  
  public void ˊ(View paramView, CharSequence paramCharSequence)
  {
    this.bNz.setText(paramCharSequence);
    paramCharSequence = new int[2];
    paramView.getLocationOnScreen(paramCharSequence);
    int i = paramCharSequence[0];
    int j = paramCharSequence[1];
    paramCharSequence = new Rect(i, j, paramView.getWidth() + i, paramView.getHeight() + j);
    this.bNz.measure(-2, -2);
    int k = this.bNz.getMeasuredWidth();
    i = this.bNz.getMeasuredHeight();
    j = paramCharSequence.centerX();
    k /= 2;
    int m = paramCharSequence.top;
    this.bNy.showAtLocation(paramView, 0, j - k, m - i);
    this.bNA.play(this.bNB);
    this.bNA.start();
    this.mHandler.sendEmptyMessageDelayed(100, 2500L);
  }
  
  static class if
    extends Handler
  {
    private final PopupWindow bNy;
    private final TextView bNz;
    
    public if(PopupWindow paramPopupWindow, TextView paramTextView)
    {
      super();
      this.bNy = paramPopupWindow;
      this.bNz = paramTextView;
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        return;
      }
      if ((this.bNy.isShowing()) && (this.bNz.isAttachedToWindow())) {
        this.bNy.dismiss();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amv
 * JD-Core Version:    0.7.0.1
 */