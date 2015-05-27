.class public Lo/aek;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lo/aaq$if;
.implements Lo/aaq$ʻ;
.implements Lo/aaq$ˏ;
.implements Lo/aat$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aek$if;,
        Lo/aek$ˊ;
    }
.end annotation


# instance fields
.field private bAC:I

.field private bAD:Ljava/lang/String;

.field protected bAE:Z

.field protected bAF:Z

.field protected bAG:I

.field private bAH:Z

.field private bAI:Z

.field private bAJ:Z

.field private bAK:Z

.field private bAL:Z

.field private bAM:Z

.field private bAN:Lo/aek$if;

.field private bAO:D

.field protected bsE:Ltv/periscope/android/api/PsUser;

.field private buK:Lo/aaq;

.field private bvD:Landroid/view/Surface;

.field private bwl:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv/periscope/android/api/PsUser;Landroid/view/TextureView;Lo/aek$if;Z)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/aek;->mContext:Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aek;->bAE:Z

    .line 123
    iput-object p4, p0, Lo/aek;->bAN:Lo/aek$if;

    .line 124
    invoke-virtual {p3, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAJ:Z

    .line 128
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lo/aek;->bvD:Landroid/view/Surface;

    .line 130
    :cond_0
    iput-object p2, p0, Lo/aek;->bsE:Ltv/periscope/android/api/PsUser;

    .line 131
    iput-boolean p5, p0, Lo/aek;->bAE:Z

    .line 132
    return-void
.end method

.method private xO()Lo/aaq$aux;
    .locals 7

    .line 139
    iget-object v0, p0, Lo/aek;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/aek;->ː(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 140
    iget v0, p0, Lo/aek;->bAC:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported type ss"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported type dash"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_2
    new-instance v0, Lo/aap;

    iget-object v1, p0, Lo/aek;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lo/aek;->bAD:Ljava/lang/String;

    move-object v2, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/aap;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Lo/ۂ;)V

    return-object v0

    .line 151
    :pswitch_3
    new-instance v0, Lo/aat;

    iget-object v1, p0, Lo/aek;->bAD:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lo/aat;-><init>(Ljava/lang/String;Lo/aat$if;)V

    return-object v0

    .line 154
    :goto_0
    :pswitch_4
    new-instance v0, Lo/aao;

    iget-object v1, p0, Lo/aek;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lo/aek;->bAD:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lo/ᒺ;

    invoke-direct {v5}, Lo/ᒺ;-><init>()V

    move-object v2, v6

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/aao;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/widget/TextView;Lo/ᒎ;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private xP()V
    .locals 2

    .line 185
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lo/aek;->buK:Lo/aaq;

    .line 187
    new-instance v0, Lo/ael;

    invoke-direct {v0, p0, v1}, Lo/ael;-><init>(Lo/aek;Lo/aaq;)V

    invoke-virtual {v0}, Lo/ael;->start()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aek;->buK:Lo/aaq;

    .line 195
    :cond_0
    return-void
.end method

.method private xS()V
    .locals 3

    .line 290
    iget-boolean v0, p0, Lo/aek;->bAL:Z

    if-eqz v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-nez v0, :cond_1

    .line 294
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAL:Z

    .line 297
    invoke-direct {p0}, Lo/aek;->yc()V

    .line 298
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/aaq;->seekTo(J)V

    .line 299
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aaq;->ᑊ(Z)V

    .line 300
    return-void
.end method

.method private yc()V
    .locals 2

    .line 474
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aen;

    invoke-direct {v1, p0}, Lo/aen;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private yd()V
    .locals 2

    .line 483
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aeo;

    invoke-direct {v1, p0}, Lo/aeo;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method private ye()V
    .locals 2

    .line 492
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aep;

    invoke-direct {v1, p0}, Lo/aep;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method private yf()V
    .locals 2

    .line 501
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aeq;

    invoke-direct {v1, p0}, Lo/aeq;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method private yg()V
    .locals 2

    .line 510
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aer;

    invoke-direct {v1, p0}, Lo/aer;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method private ʽ(Ljava/lang/Exception;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aes;

    invoke-direct {v1, p0, p1}, Lo/aes;-><init>(Lo/aek;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    return-void
.end method

.method static synthetic ˊ(Lo/aek;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/aek;->yg()V

    return-void
.end method

.method static synthetic ˊ(Lo/aek;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lo/aek;->bAL:Z

    return p1
.end method

.method static synthetic ˋ(Lo/aek;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lo/aek;->xP()V

    return-void
.end method

.method static synthetic ˋ(Lo/aek;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/aek;->ᔾ(Z)V

    return-void
.end method

.method static synthetic ˎ(Lo/aek;)Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/aek;->bAH:Z

    return v0
.end method

.method static synthetic ˏ(Lo/aek;)Lo/aek$if;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/aek;->bAN:Lo/aek$if;

    return-object v0
.end method

.method public static ː(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 57
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    .line 59
    const-string v3, "?"

    .line 61
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ExoPlayerLib/1.3.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f060104

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ᔾ(Z)V
    .locals 3

    .line 160
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAK:Z

    .line 162
    new-instance v0, Lo/aaq;

    invoke-direct {p0}, Lo/aek;->xO()Lo/aaq$aux;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/aaq;-><init>(Lo/aaq$aux;)V

    iput-object v0, p0, Lo/aek;->buK:Lo/aaq;

    .line 163
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, p0}, Lo/aaq;->ˊ(Lo/aaq$ˏ;)V

    .line 164
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, p0}, Lo/aaq;->ˊ(Lo/aaq$ʻ;)V

    .line 165
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, p0}, Lo/aaq;->ˊ(Lo/aaq$if;)V

    .line 167
    new-instance v2, Lo/aan;

    invoke-direct {v2}, Lo/aan;-><init>()V

    .line 168
    invoke-virtual {v2}, Lo/aan;->vB()V

    .line 169
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, v2}, Lo/aaq;->ˊ(Lo/aaq$ˏ;)V

    .line 170
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, v2}, Lo/aaq;->ˊ(Lo/aaq$ˊ;)V

    .line 171
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0, v2}, Lo/aaq;->ˊ(Lo/aaq$ˋ;)V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lo/aek;->bAK:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->prepare()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aek;->bAK:Z

    .line 177
    :cond_1
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    iget-object v1, p0, Lo/aek;->bvD:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lo/aaq;->setSurface(Landroid/view/Surface;)V

    .line 179
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lo/aek;->xQ()V

    .line 182
    :cond_2
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lo/aek;->bwl:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lo/aek;->bAL:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lo/aek;->bAJ:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAJ:Z

    .line 208
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lo/aek;->bvD:Landroid/view/Surface;

    .line 210
    :cond_0
    iget-boolean v0, p0, Lo/aek;->bAI:Z

    if-nez v0, :cond_1

    .line 211
    return-void

    .line 213
    :cond_1
    iget-boolean v0, p0, Lo/aek;->bAE:Z

    invoke-direct {p0, v0}, Lo/aek;->ᔾ(Z)V

    .line 214
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 219
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 229
    return-void
.end method

.method public release()V
    .locals 1

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAH:Z

    .line 199
    invoke-direct {p0}, Lo/aek;->xP()V

    .line 200
    return-void
.end method

.method public vL()V
    .locals 2

    .line 348
    iget-boolean v0, p0, Lo/aek;->bAH:Z

    if-eqz v0, :cond_0

    .line 349
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lo/aek;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aem;

    invoke-direct {v1, p0}, Lo/aem;-><init>(Lo/aek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method public xQ()V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lo/aek;->bAL:Z

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lo/aek;->ye()V

    .line 236
    iget-boolean v0, p0, Lo/aek;->bAF:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lo/aek;->xS()V

    .line 239
    :cond_1
    return-void
.end method

.method public xR()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lo/aek;->bAM:Z

    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAM:Z

    .line 252
    invoke-virtual {p0}, Lo/aek;->xQ()V

    .line 253
    return-void
.end method

.method public xT()Ljava/math/BigInteger;
    .locals 4

    .line 367
    iget-wide v0, p0, Lo/aek;->bAO:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lo/akn;->AB()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    iget-wide v0, p0, Lo/aek;->bAO:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public xU()Ljava/math/BigInteger;
    .locals 2

    .line 374
    iget-wide v0, p0, Lo/aek;->bAO:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public xV()J
    .locals 2

    .line 378
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->ｖ()J

    move-result-wide v0

    return-wide v0

    .line 381
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public xW()J
    .locals 2

    .line 386
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 389
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public xX()V
    .locals 1

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAH:Z

    .line 395
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->stop()V

    .line 398
    :cond_0
    invoke-direct {p0}, Lo/aek;->yd()V

    .line 399
    return-void
.end method

.method public xY()V
    .locals 2

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bwl:Z

    .line 403
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/aaq;->ᑊ(Z)V

    .line 406
    :cond_0
    return-void
.end method

.method public xZ()Z
    .locals 2

    .line 413
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->ｉ()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ya()V
    .locals 2

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aek;->bwl:Z

    .line 422
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aaq;->ᑊ(Z)V

    .line 425
    :cond_0
    return-void
.end method

.method public yb()Z
    .locals 2

    .line 428
    iget v0, p0, Lo/aek;->bAC:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(IIF)V
    .locals 0

    .line 310
    return-void
.end method

.method public ˊ(Ljava/util/Map;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;J)V"
        }
    .end annotation

    .line 324
    if-nez p1, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    const-string v0, "ntp"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 328
    return-void

    .line 330
    :cond_1
    const-string v0, "ntp"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 331
    invoke-virtual/range {p0 .. p0}, Lo/aek;->xV()J

    move-result-wide v7

    .line 332
    sub-long v0, p2, v7

    long-to-double v9, v0

    .line 333
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, v0

    .line 334
    sub-double v0, v5, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/aek;->bAO:D

    .line 336
    invoke-static {}, Lo/akx;->Bl()Lo/akx;

    move-result-object v0

    invoke-virtual {v0}, Lo/akx;->getTime()J

    move-result-wide v0

    long-to-double v11, v0

    .line 337
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, v11, v0

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    add-double v13, v0, v2

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/aek;->bAO:D

    sub-double v15, v13, v0

    .line 339
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v0, "0.###"

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 340
    const-string v0, "BroadcastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    move-wide v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queued: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ntp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/aek;->bAO:D

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v2, v0

    move-wide/from16 v18, v2

    .line 343
    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 344
    const-string v0, "BroadcastPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    double-to-long v3, v11

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public ˊ(Lo/vm;)Z
    .locals 4

    .line 432
    iget-object v0, p0, Lo/aek;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 433
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    invoke-static {v0}, Lo/ze;->ˊ(Lo/aad;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_force_hls"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "BroadcastPlayer"

    const-string v1, "Using FORCED HLS."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x3

    iput v0, p0, Lo/aek;->bAC:I

    .line 437
    iget-object v0, p1, Lo/vm;->bnq:Ljava/lang/String;

    iput-object v0, p0, Lo/aek;->bAD:Ljava/lang/String;

    goto/16 :goto_1

    .line 438
    :cond_0
    iget-object v0, p1, Lo/vm;->bno:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "BroadcastPlayer"

    const-string v1, "Using RTMP url."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x4

    iput v0, p0, Lo/aek;->bAC:I

    .line 441
    iget-object v0, p1, Lo/vm;->bno:Ljava/lang/String;

    iput-object v0, p0, Lo/aek;->bAD:Ljava/lang/String;

    goto :goto_1

    .line 442
    :cond_1
    iget-object v0, p1, Lo/vm;->bnq:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    const-string v0, "BroadcastPlayer"

    const-string v1, "Using HLS url."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x3

    iput v0, p0, Lo/aek;->bAC:I

    .line 445
    iget-object v0, p1, Lo/vm;->bnq:Ljava/lang/String;

    iput-object v0, p0, Lo/aek;->bAD:Ljava/lang/String;

    goto :goto_1

    .line 446
    :cond_2
    iget-object v0, p1, Lo/vm;->bnp:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 447
    iget-object v0, p1, Lo/vm;->bnp:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    const-string v0, "BroadcastPlayer"

    const-string v1, "Found .m3u8 extension, using HLS."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x3

    iput v0, p0, Lo/aek;->bAC:I

    goto :goto_0

    .line 452
    :cond_3
    const-string v0, "BroadcastPlayer"

    const-string v1, "Using other url (probably mp4)"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x2

    iput v0, p0, Lo/aek;->bAC:I

    .line 455
    :goto_0
    iget-object v0, p1, Lo/vm;->bnp:Ljava/lang/String;

    iput-object v0, p0, Lo/aek;->bAD:Ljava/lang/String;

    .line 456
    goto :goto_1

    .line 458
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 462
    :goto_1
    iget v0, p1, Lo/vm;->bnl:I

    iput v0, p0, Lo/aek;->bAG:I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAI:Z

    .line 465
    iget-boolean v0, p0, Lo/aek;->bAJ:Z

    if-eqz v0, :cond_5

    .line 466
    iget-boolean v0, p0, Lo/aek;->bAE:Z

    invoke-direct {p0, v0}, Lo/aek;->ᔾ(Z)V

    .line 467
    const/4 v0, 0x1

    return v0

    .line 469
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(ZI)V
    .locals 2

    .line 258
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 261
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAF:Z

    .line 264
    invoke-direct {p0}, Lo/aek;->yf()V

    .line 265
    iget-boolean v0, p0, Lo/aek;->bAM:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/aek;->bAE:Z

    if-eqz v0, :cond_2

    .line 266
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aek;->bAM:Z

    .line 267
    invoke-direct {p0}, Lo/aek;->xS()V

    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "BroadcastPlayer"

    const-string v1, "playback was not requested"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    goto :goto_0

    .line 274
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aek;->bAL:Z

    .line 275
    invoke-direct {p0}, Lo/aek;->yd()V

    .line 276
    goto :goto_0

    .line 279
    :pswitch_2
    invoke-direct {p0}, Lo/aek;->yg()V

    .line 283
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ˏ(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/String;

    const-string v1, "TIT3"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lo/aek;->bAO:D

    .line 320
    return-void
.end method

.method public ᐝ(Ljava/lang/Exception;)V
    .locals 1

    .line 304
    invoke-direct {p0, p1}, Lo/aek;->ʽ(Ljava/lang/Exception;)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aek;->bAK:Z

    .line 306
    return-void
.end method

.method public ᓫ(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lo/aek;->bAE:Z

    .line 136
    return-void
.end method

.method public ⁱ(Ljava/lang/String;)V
    .locals 0

    .line 315
    return-void
.end method

.method public ﮈ()Z
    .locals 2

    .line 409
    iget-boolean v0, p0, Lo/aek;->bAH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->ｉ()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ﺓ()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aek;->buK:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->ｉ()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
