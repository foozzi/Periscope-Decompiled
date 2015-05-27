package o;

import android.content.Context;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.EGLConfig;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.util.Size;

public class yq
  implements yp, SurfaceTexture.OnFrameAvailableListener
{
  private ArrayBlockingQueue<yq.ˊ> bqA = new ArrayBlockingQueue(30);
  private ArrayBlockingQueue<yq.ˊ> bqB = new ArrayBlockingQueue(30);
  private boolean bqC;
  private boolean bqD;
  private int bqE = 409600;
  private int bqF = 24;
  private int bqG = 0;
  private Size bqH = Size.bIt;
  private Size bqI = Size.bIt;
  private boolean bqJ = true;
  private Camera bqk;
  private Camera.CameraInfo bql = new Camera.CameraInfo();
  private AudioRecord bqm;
  private MediaCodec bqn;
  private MediaCodec bqo;
  private yp.if bqp;
  private abl bqq;
  private abn bqr;
  private abh bqs;
  private abh bqt;
  private abq bqu;
  private abq bqv;
  private yq.ˎ bqw;
  private yq.ᐝ bqx;
  private yq.ˋ bqy;
  private if bqz;
  private Handler mHandler = new Handler(Looper.getMainLooper());
  private long ẛ;
  
  private void uv()
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(727040);
    GLES20.glReadPixels(0, 0, 320, 568, 6408, 5121, localByteBuffer);
    localByteBuffer.rewind();
    this.mHandler.post(new ys(this, localByteBuffer));
  }
  
  private void uw()
  {
    try
    {
      if (this.bqk != null)
      {
        this.bqk.stopPreview();
        this.bqk.release();
        this.bqk = null;
      }
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
    this.bqk = akf.ˊ(this.bqG, this.bql);
  }
  
  private void ux()
  {
    try
    {
      akk.ᐪ("RTMP", "resetCamera");
      if (this.bqt == null) {
        return;
      }
      this.bqt.ˊ(new yt(this));
      return;
    }
    finally {}
  }
  
  private MediaCodec uy()
  {
    MediaFormat localMediaFormat = new MediaFormat();
    localMediaFormat.setString("mime", "audio/mp4a-latm");
    localMediaFormat.setInteger("aac-profile", 2);
    localMediaFormat.setInteger("sample-rate", 44100);
    localMediaFormat.setInteger("channel-count", 1);
    localMediaFormat.setInteger("bitrate", 32768);
    localMediaFormat.setInteger("max-input-size", 2048);
    MediaCodec localMediaCodec = MediaCodec.createEncoderByType("audio/mp4a-latm");
    localMediaCodec.configure(localMediaFormat, null, null, 1);
    return localMediaCodec;
  }
  
  private MediaCodec uz()
  {
    MediaFormat localMediaFormat = MediaFormat.createVideoFormat("video/avc", 320, 568);
    localMediaFormat.setInteger("bitrate", this.bqE);
    localMediaFormat.setInteger("frame-rate", this.bqF);
    localMediaFormat.setInteger("i-frame-interval", 2);
    localMediaFormat.setInteger("color-format", 2130708361);
    localMediaFormat.setInteger("profile", 2);
    localMediaFormat.setInteger("level", 64);
    MediaCodec localMediaCodec = MediaCodec.createEncoderByType("video/avc");
    localMediaCodec.configure(localMediaFormat, null, null, 1);
    return localMediaCodec;
  }
  
  private void ˊ(yq.ˊ paramˊ)
  {
    try
    {
      this.bqB.put(paramˊ);
      return;
    }
    catch (InterruptedException paramˊ)
    {
      akk.ᐧ("cameraBroadcaster", "dropping audio samples");
    }
  }
  
  private void ˋ(yq.ˊ paramˊ)
  {
    try
    {
      this.bqA.put(paramˊ);
      return;
    }
    catch (InterruptedException paramˊ)
    {
      akk.ᐧ("cameraBroadcaster", "dropping audio samples");
    }
  }
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    try
    {
      if (this.bqt == null) {
        return;
      }
      this.bqt.ˊ(new yv(this, paramSurfaceTexture));
      return;
    }
    finally {}
  }
  
  public void stopPreview()
  {
    try
    {
      akk.ᐪ("RTMP", "Camera stopPreview");
      if (this.bqk != null)
      {
        this.bqk.stopPreview();
        this.bqk.release();
        this.bqk = null;
      }
      if (this.bqs != null)
      {
        this.bqs.vQ();
        this.bqs = null;
      }
      return;
    }
    finally {}
  }
  
  public void uA()
  {
    Object localObject1 = ((WindowManager)this.bqq.getContext().getApplicationContext().getSystemService("window")).getDefaultDisplay();
    Object localObject2 = new Point();
    ((Display)localObject1).getSize((Point)localObject2);
    this.bqH = Size.ﻧ(((Point)localObject2).x, ((Point)localObject2).y);
    this.bqk.stopPreview();
    localObject1 = this.bqk.getParameters();
    ((Camera.Parameters)localObject1).setRecordingHint(true);
    localObject2 = akf.ˊ(24000, ((Camera.Parameters)localObject1).getSupportedPreviewFpsRange());
    if (localObject2 != null) {
      ((Camera.Parameters)localObject1).setPreviewFpsRange(localObject2[0], localObject2[1]);
    }
    akf.ˊ(this.bqk, (Camera.Parameters)localObject1);
    int i = this.bql.orientation;
    localObject2 = akf.ˊ(this.bqH.Ꭸ(i), ((Camera.Parameters)localObject1).getSupportedPreviewSizes());
    ((Camera.Parameters)localObject1).setPreviewSize(((Size)localObject2).width(), ((Size)localObject2).height());
    this.bqI = ((Size)localObject2);
    this.bqk.setParameters((Camera.Parameters)localObject1);
    this.bqk.startPreview();
  }
  
  public void uo()
  {
    try
    {
      akk.ᐪ("RTMP", "Camera startEncoding");
      this.bqC = true;
      this.ẛ = System.nanoTime();
      if (this.bqn == null)
      {
        akk.ᐨ("RTMP", "Video encoder null in startEncoding");
        return;
      }
      this.bqz = new if(null);
      this.bqz.start();
      this.bqz.uD();
      this.bqy = new yq.ˋ(this, null);
      this.bqy.start();
      this.bqx = new yq.ᐝ(this, null);
      this.bqx.start();
      this.bqx.uD();
      this.bqw = new yq.ˎ(this, null);
      this.bqw.start();
      return;
    }
    finally {}
  }
  
  public void up()
  {
    try
    {
      this.bqD = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void uq()
  {
    try
    {
      akk.ᐪ("RTMP", "Camera stopBroadcast");
      this.bqC = false;
      this.bqD = false;
      if (this.bqw != null)
      {
        this.bqw.join();
        this.bqw = null;
      }
      if (this.bqy != null)
      {
        this.bqy.join();
        this.bqy = null;
      }
      if (this.bqz != null)
      {
        this.bqz.join();
        this.bqz = null;
      }
      if (this.bqx != null)
      {
        this.bqx.join();
        this.bqx = null;
      }
      if (this.bqn != null)
      {
        this.bqn.stop();
        this.bqn.release();
        this.bqn = null;
      }
      if (this.bqu != null)
      {
        this.bqu.vQ();
        this.bqu = null;
      }
      if (this.bqt != null)
      {
        this.bqt.vQ();
        this.bqt = null;
      }
      return;
    }
    finally {}
  }
  
  public int ur()
  {
    return this.bqE;
  }
  
  public int us()
  {
    return this.bqG;
  }
  
  public void ut()
  {
    for (;;)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder().append("resetVideoEncoder ");
        if (this.bqC)
        {
          String str1 = "Encoding";
          akk.ᐪ("RTMP", str1);
          if (this.bqC)
          {
            if (this.bqw != null)
            {
              this.bqw.join();
              this.bqw = null;
            }
            if (this.bqx != null)
            {
              this.bqx.join();
              this.bqx = null;
            }
            if (this.bqn != null)
            {
              this.bqn.stop();
              this.bqn.release();
              this.bqn = null;
            }
          }
          this.bqt.ˊ(new yu(this));
          if (this.bqC)
          {
            this.bqx = new yq.ᐝ(this, null);
            this.bqx.start();
            this.bqx.uD();
            this.bqw = new yq.ˎ(this, null);
            this.bqw.start();
          }
          return;
        }
      }
      finally {}
      String str2 = "Not encoding";
    }
  }
  
  public void ˊ(yp.if paramif)
  {
    this.bqp = paramif;
  }
  
  public boolean ˊ(abl paramabl)
  {
    try
    {
      akk.ᐪ("RTMP", "Camera startPreview");
      this.bqq = paramabl;
      uw();
      this.bqm = new AudioRecord(1, 44100, 16, 2, AudioRecord.getMinBufferSize(44100, 16, 2) * 8);
      this.bqn = uz();
      Surface localSurface = this.bqn.createInputSurface();
      this.bqo = uy();
      akk.ᐪ("RTMP", "Encoders created");
      this.bqt = new abh();
      if (!this.bqt.ˊ(null, localSurface)) {
        throw new RuntimeException("Failed to create video encoder context");
      }
      this.bqt.ˊ(new yr(this, paramabl));
      this.bqr.getSurfaceTexture().setOnFrameAvailableListener(this);
      this.bqk.setPreviewTexture(this.bqr.getSurfaceTexture());
      this.bqs = new abh();
      if (!this.bqs.ˊ(this.bqt, null)) {
        throw new RuntimeException("Failed to create video render context");
      }
      this.bqq.setEGLContextFactory(this.bqs.vV());
      this.bqq.setEGLConfigChooser(this.bqs.vW());
      this.bqq.getHolder().setFormat(1);
      this.bqq.setRenderer(new aux());
      this.bqq.setRenderMode(0);
      uA();
      return true;
    }
    catch (Exception paramabl)
    {
      akk.ᐪ("RTMP", "Failed to start camera:" + paramabl.toString());
      ɬ.ˋ(paramabl);
      return false;
    }
    finally {}
  }
  
  public void ﻠ(int paramInt)
  {
    if (this.bqE != paramInt)
    {
      this.bqE = paramInt;
      if (this.bqn != null) {
        ut();
      }
    }
  }
  
  public void ﻩ(int paramInt)
  {
    if (this.bqG != paramInt)
    {
      this.bqG = paramInt;
      ux();
    }
  }
  
  public class aux
    implements abl.ͺ
  {
    public aux() {}
    
    public void uG()
    {
      abq localabq = yq.ᐨ(yq.this);
      boolean bool;
      if (yq.ʽ(yq.this).facing == 1) {
        bool = true;
      } else {
        bool = false;
      }
      localabq.ᑦ(bool);
      yq.ᐨ(yq.this).ˊ(yq.ˏ(yq.this));
    }
    
    public void ˊ(EGLConfig paramEGLConfig)
    {
      yq.ι(yq.this).post(new yw(this));
    }
    
    public void ﹷ(int paramInt1, int paramInt2) {}
  }
  
  class if
    extends yq.ˏ
  {
    private if() {}
    
    public void run()
    {
      yq.ˌ(yq.this).start();
      uF();
      ByteBuffer[] arrayOfByteBuffer = yq.ˌ(yq.this).getInputBuffers();
      while (uE())
      {
        Object localObject = null;
        try
        {
          yq.ˊ localˊ = (yq.ˊ)yq.ˍ(yq.this).poll(1000L, TimeUnit.MICROSECONDS);
          localObject = localˊ;
        }
        catch (InterruptedException localInterruptedException) {}
        if (localObject != null)
        {
          while (uE())
          {
            int i = yq.ˌ(yq.this).dequeueInputBuffer(1000L);
            if (i != -1)
            {
              ByteBuffer localByteBuffer = arrayOfByteBuffer[i];
              localObject.ˊ(localByteBuffer);
              yq.ˌ(yq.this).queueInputBuffer(i, 0, localByteBuffer.limit(), localObject.uC() / 1000L, 0);
            }
          }
          yq.ˋ(yq.this, localObject);
        }
      }
      yq.ˌ(yq.this).stop();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yq
 * JD-Core Version:    0.7.0.1
 */