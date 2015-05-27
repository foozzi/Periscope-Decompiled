.class Lo/agy$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private bEc:Landroid/view/View;

.field private bEd:Lo/agr;

.field private bEe:Landroid/animation/ValueAnimator;

.field private bEf:Z

.field private bEg:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lo/agr;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/agy$if;->bEc:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lo/agy$if;->bEd:Lo/agr;

    .line 30
    invoke-direct {p0, p1, p2}, Lo/agy$if;->ˊ(Landroid/view/View;Lo/agr;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    .line 31
    return-void
.end method

.method private ˊ(Landroid/view/View;Lo/agr;)Landroid/animation/ValueAnimator;
    .locals 4

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p2}, Lo/agr;->zy()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 63
    invoke-virtual {p2}, Lo/agr;->zz()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    new-instance v0, Lo/agz;

    invoke-direct {v0, p0, p2, p1}, Lo/agz;-><init>(Lo/agy$if;Lo/agr;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    new-instance v0, Lo/aha;

    invoke-direct {v0, p0}, Lo/aha;-><init>(Lo/agy$if;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    return-object v3
.end method

.method static synthetic ˊ(Lo/agy$if;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 20
    iput-object p1, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic ˊ(Lo/agy$if;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 20
    iput-object p1, p0, Lo/agy$if;->bEc:Landroid/view/View;

    return-object p1
.end method

.method static synthetic ˊ(Lo/agy$if;Lo/agr;)Lo/agr;
    .locals 0

    .line 20
    iput-object p1, p0, Lo/agy$if;->bEd:Lo/agr;

    return-object p1
.end method

.method static synthetic ˊ(Lo/agy$if;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/agy$if;->bEf:Z

    return p1
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 53
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lo/agy$if;->bEc:Landroid/view/View;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lo/agy$if;->bEd:Lo/agr;

    .line 59
    return-void
.end method

.method public run()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/agy$if;->zC()Z

    .line 36
    return-void
.end method

.method public setDuration(J)V
    .locals 4

    .line 87
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lo/agy$if;->bEg:Z

    if-eqz v0, :cond_1

    .line 91
    long-to-float v0, p1

    iget-object v1, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v2, v0

    .line 92
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 93
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 94
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 96
    iget-object v0, p0, Lo/agy$if;->bEd:Lo/agr;

    invoke-virtual {v0, v2, v3}, Lo/agr;->ˢ(J)V

    .line 97
    iget-object v0, p0, Lo/agy$if;->bEc:Landroid/view/View;

    iget-object v1, p0, Lo/agy$if;->bEd:Lo/agr;

    invoke-direct {p0, v0, v1}, Lo/agy$if;->ˊ(Landroid/view/View;Lo/agr;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    :goto_0
    return-void
.end method

.method public zB()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lo/agy$if;->bEf:Z

    return v0
.end method

.method public zC()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lo/agy$if;->bEg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lo/agy$if;->bEe:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/agy$if;->bEg:Z

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
