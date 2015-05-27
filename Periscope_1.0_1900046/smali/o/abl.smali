.class public Lo/abl;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abl$1;,
        Lo/abl$ʽ;,
        Lo/abl$ʼ;,
        Lo/abl$ʻ;,
        Lo/abl$ι;,
        Lo/abl$ˊ;,
        Lo/abl$if;,
        Lo/abl$ˏ;,
        Lo/abl$ˎ;,
        Lo/abl$ᐝ;,
        Lo/abl$ˋ;,
        Lo/abl$aux;,
        Lo/abl$ͺ;
    }
.end annotation


# static fields
.field private static final bvK:Lo/abl$ʽ;


# instance fields
.field private final bvL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<Lo/abl;>;"
        }
    .end annotation
.end field

.field private bvM:Lo/abl$ʼ;

.field private bvN:Lo/abl$ͺ;

.field private bvO:Lo/abl$ˏ;

.field private bvP:Lo/abl$aux;

.field private bvQ:Lo/abl$ᐝ;

.field private bvR:I

.field private bvS:I

.field private bvT:Z

.field private mDetached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1735
    new-instance v0, Lo/abl$ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abl$ʽ;-><init>(Lo/abl$1;)V

    sput-object v0, Lo/abl;->bvK:Lo/abl$ʽ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 209
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1737
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/abl;->bvL:Ljava/lang/ref/WeakReference;

    .line 210
    invoke-direct {p0}, Lo/abl;->init()V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1737
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/abl;->bvL:Ljava/lang/ref/WeakReference;

    .line 219
    invoke-direct {p0}, Lo/abl;->init()V

    .line 220
    return-void
.end method

.method private init()V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lo/abl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 239
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 247
    return-void
.end method

.method private vZ()V
    .locals 2

    .line 1650
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 1651
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1654
    :cond_0
    return-void
.end method

.method static synthetic wa()Lo/abl$ʽ;
    .locals 1

    .line 159
    sget-object v0, Lo/abl;->bvK:Lo/abl$ʽ;

    return-object v0
.end method

.method static synthetic ʻ(Lo/abl;)Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lo/abl;->bvT:Z

    return v0
.end method

.method static synthetic ʼ(Lo/abl;)Lo/abl$ͺ;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/abl;->bvN:Lo/abl$ͺ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/abl;)I
    .locals 1

    .line 159
    iget v0, p0, Lo/abl;->bvS:I

    return v0
.end method

.method static synthetic ˎ(Lo/abl;)Lo/abl$ˏ;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/abl;->bvO:Lo/abl$ˏ;

    return-object v0
.end method

.method static synthetic ˏ(Lo/abl;)Lo/abl$aux;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/abl;->bvP:Lo/abl$aux;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/abl;)Lo/abl$ᐝ;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/abl;->bvQ:Lo/abl$ᐝ;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 225
    :try_start_0
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->wm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1

    .line 233
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 567
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 571
    iget-boolean v0, p0, Lo/abl;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/abl;->bvN:Lo/abl$ͺ;

    if-eqz v0, :cond_2

    .line 572
    const/4 v2, 0x1

    .line 573
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->getRenderMode()I

    move-result v2

    .line 576
    :cond_0
    new-instance v0, Lo/abl$ʼ;

    iget-object v1, p0, Lo/abl;->bvL:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lo/abl$ʼ;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    .line 577
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    .line 578
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0, v2}, Lo/abl$ʼ;->setRenderMode(I)V

    .line 580
    :cond_1
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->start()V

    .line 582
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abl;->mDetached:Z

    .line 583
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 590
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->wm()V

    .line 593
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abl;->mDetached:Z

    .line 594
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 595
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 494
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->requestRender()V

    .line 497
    :cond_0
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 259
    iput p1, p0, Lo/abl;->bvR:I

    .line 260
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    .line 420
    new-instance v0, Lo/abl$ˊ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lo/abl$ˊ;-><init>(Lo/abl;IIIIII)V

    invoke-virtual {p0, v0}, Lo/abl;->setEGLConfigChooser(Lo/abl$ˏ;)V

    .line 422
    return-void
.end method

.method public setEGLConfigChooser(Lo/abl$ˏ;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lo/abl;->vZ()V

    .line 384
    iput-object p1, p0, Lo/abl;->bvO:Lo/abl$ˏ;

    .line 385
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 402
    new-instance v0, Lo/abl$ι;

    invoke-direct {v0, p0, p1}, Lo/abl$ι;-><init>(Lo/abl;Z)V

    invoke-virtual {p0, v0}, Lo/abl;->setEGLConfigChooser(Lo/abl$ˏ;)V

    .line 403
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 451
    invoke-direct {p0}, Lo/abl;->vZ()V

    .line 452
    iput p1, p0, Lo/abl;->bvS:I

    .line 453
    return-void
.end method

.method public setEGLContextFactory(Lo/abl$aux;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lo/abl;->vZ()V

    .line 353
    iput-object p1, p0, Lo/abl;->bvP:Lo/abl$aux;

    .line 354
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lo/abl$ᐝ;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lo/abl;->vZ()V

    .line 367
    iput-object p1, p0, Lo/abl;->bvQ:Lo/abl$ᐝ;

    .line 368
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lo/abl;->bvT:Z

    .line 290
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0, p1}, Lo/abl$ʼ;->setRenderMode(I)V

    .line 473
    return-void
.end method

.method public setRenderer(Lo/abl$ͺ;)V
    .locals 2

    .line 326
    invoke-direct {p0}, Lo/abl;->vZ()V

    .line 327
    iget-object v0, p0, Lo/abl;->bvO:Lo/abl$ˏ;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lo/abl$ι;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/abl$ι;-><init>(Lo/abl;Z)V

    iput-object v0, p0, Lo/abl;->bvO:Lo/abl$ˏ;

    .line 330
    :cond_0
    iget-object v0, p0, Lo/abl;->bvP:Lo/abl$aux;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lo/abl$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/abl$ˋ;-><init>(Lo/abl;Lo/abl$1;)V

    iput-object v0, p0, Lo/abl;->bvP:Lo/abl$aux;

    .line 333
    :cond_1
    iget-object v0, p0, Lo/abl;->bvQ:Lo/abl$ᐝ;

    if-nez v0, :cond_2

    .line 334
    new-instance v0, Lo/abl$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abl$ˎ;-><init>(Lo/abl$1;)V

    iput-object v0, p0, Lo/abl;->bvQ:Lo/abl$ᐝ;

    .line 336
    :cond_2
    iput-object p1, p0, Lo/abl;->bvN:Lo/abl$ͺ;

    .line 337
    new-instance v0, Lo/abl$ʼ;

    iget-object v1, p0, Lo/abl;->bvL:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lo/abl$ʼ;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    .line 338
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->start()V

    .line 339
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 525
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0, p3, p4}, Lo/abl$ʼ;->ﹻ(II)V

    .line 528
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->wk()V

    .line 507
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lo/abl;->bvM:Lo/abl$ʼ;

    invoke-virtual {v0}, Lo/abl$ʼ;->wl()V

    .line 518
    :cond_0
    return-void
.end method
