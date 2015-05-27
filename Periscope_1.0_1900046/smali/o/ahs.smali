.class Lo/ahs;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFj:Lo/ahp;

.field final synthetic ɭ:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/ahp;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/ahs;->bFj:Lo/ahp;

    iput-object p2, p0, Lo/ahs;->ɭ:Landroid/view/View;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .line 75
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lo/ahs;->ɭ:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 80
    iget-object v0, p0, Lo/ahs;->ɭ:Landroid/view/View;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 82
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-wide/16 v0, 0x64

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 86
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 87
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 88
    return-void

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
