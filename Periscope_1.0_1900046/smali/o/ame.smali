.class Lo/ame;
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
.field final synthetic bMX:Lo/amd;


# direct methods
.method constructor <init>(Lo/amd;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/ame;->bMX:Lo/amd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lo/ame;->bMX:Lo/amd;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, p0, Lo/ame;->bMX:Lo/amd;

    invoke-static {v2}, Lo/amd;->ˊ(Lo/amd;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lo/amd;->ˊ(Lo/amd;F)F

    .line 53
    iget-object v0, p0, Lo/ame;->bMX:Lo/amd;

    invoke-virtual {v0}, Lo/amd;->invalidate()V

    .line 54
    return-void
.end method
