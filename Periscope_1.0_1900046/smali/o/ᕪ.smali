.class Lo/ᕪ;
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
.field final synthetic ๆ:Lo/ᒃ$ˊ;

.field final synthetic Ꭻ:Lo/ᒃ;


# direct methods
.method constructor <init>(Lo/ᒃ;Lo/ᒃ$ˊ;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    iput-object p2, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 359
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ι()V

    .line 364
    iget-object v0, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ɩ()V

    .line 365
    iget-object v0, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    iget-object v1, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    invoke-virtual {v1}, Lo/ᒃ$ˊ;->ˁ()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ʿ(F)V

    .line 366
    iget-object v0, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    iget-boolean v0, v0, Lo/ᒃ;->จ:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/ᒃ;->จ:Z

    .line 370
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 371
    iget-object v0, p0, Lo/ᕪ;->ๆ:Lo/ᒃ$ˊ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ʾ(Z)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    iget-object v1, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    invoke-static {v1}, Lo/ᒃ;->ˊ(Lo/ᒃ;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lo/ᒃ;->ˊ(Lo/ᒃ;F)F

    .line 375
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lo/ᕪ;->Ꭻ:Lo/ᒃ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᒃ;->ˊ(Lo/ᒃ;F)F

    .line 354
    return-void
.end method
