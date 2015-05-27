.class Lo/ɨ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ғ:Lo/ﺩ;


# direct methods
.method constructor <init>(Lo/ﺩ;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lo/ɨ;->ғ:Lo/ﺩ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 823
    iget-object v0, p0, Lo/ɨ;->ғ:Lo/ﺩ;

    invoke-static {v0}, Lo/ﺩ;->ʻ(Lo/ﺩ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lo/ɨ;->ғ:Lo/ﺩ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﺩ;->ˊ(Lo/ﺩ;Landroid/view/animation/Animation$AnimationListener;)V

    .line 826
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 830
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 819
    return-void
.end method
