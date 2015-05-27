.class public Lo/ahm;
.super Lo/ahl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ahm$if;
    }
.end annotation


# instance fields
.field private final bEY:I

.field private final bEZ:I

.field private final bFa:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1}, Lo/ahl;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/ahm;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 33
    const v0, 0x7f0a005a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/ahm;->bEY:I

    .line 34
    const v0, 0x7f0a0059

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/ahm;->bEZ:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ahm;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic ˊ(Lo/ahm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ahm;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ahm;)Landroid/os/Handler;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ahm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public ˊ(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    .line 40
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lo/ahm;->bEY:I

    iget v1, p0, Lo/ahm;->bEZ:I

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lo/ahm;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p2, v1}, Lo/ahm;->ˊ(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;I)Landroid/graphics/Path;

    move-result-object v3

    .line 45
    new-instance v4, Lo/ahm$if;

    invoke-virtual {p0}, Lo/ahm;->zF()F

    move-result v0

    invoke-direct {v4, v3, v0, p2, p1}, Lo/ahm$if;-><init>(Landroid/graphics/Path;FLandroid/view/View;Landroid/view/View;)V

    .line 47
    const-wide/16 v0, 0xbb8

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    new-instance v0, Lo/ahn;

    invoke-direct {v0, p0, p2, p1}, Lo/ahn;-><init>(Lo/ahm;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 68
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 69
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    invoke-virtual {p1, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    return-void
.end method
