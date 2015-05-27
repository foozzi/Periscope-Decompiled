.class Lo/agz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEh:Lo/agr;

.field final synthetic bEi:Landroid/view/View;

.field final synthetic bEj:Lo/agy$if;


# direct methods
.method constructor <init>(Lo/agy$if;Lo/agr;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/agz;->bEj:Lo/agy$if;

    iput-object p2, p0, Lo/agz;->bEh:Lo/agr;

    iput-object p3, p0, Lo/agz;->bEi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 68
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 69
    iget-object v0, p0, Lo/agz;->bEh:Lo/agr;

    const v1, 0x458ca000    # 4500.0f

    mul-float/2addr v1, v3

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/agr;->ˢ(J)V

    .line 70
    iget-object v0, p0, Lo/agz;->bEh:Lo/agr;

    invoke-virtual {v0, v3}, Lo/agr;->ˡ(F)V

    .line 71
    iget-object v0, p0, Lo/agz;->bEi:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 72
    return-void
.end method
