.class public Lo/ahp;
.super Lo/ahl;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final bFa:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lo/ahl;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/ahp;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ahp;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic ˊ(Lo/ahp;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ahp;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ahp;)Landroid/os/Handler;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ahp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public ˊ(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 15

    .line 33
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lo/ahp;->bFa:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v1, p2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lo/ahp;->ˊ(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;I)Landroid/graphics/Path;

    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lo/ahp;->zF()F

    move-result v5

    .line 40
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v5, v1, v2

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 41
    const-wide/16 v0, 0xbb8

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 44
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->Y:Landroid/util/Property;

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 45
    const-wide/16 v0, 0xbb8

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 49
    const-wide/16 v0, 0xbb8

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    new-instance v0, Lo/ahq;

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, p0, v1, v2}, Lo/ahq;-><init>(Lo/ahp;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 72
    new-instance v0, Lo/ahs;

    move-object/from16 v1, p1

    invoke-direct {v0, p0, v1}, Lo/ahs;-><init>(Lo/ahp;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 94
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 96
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-wide/16 v0, 0xc8

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 100
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 103
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 104
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 110
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 111
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method
