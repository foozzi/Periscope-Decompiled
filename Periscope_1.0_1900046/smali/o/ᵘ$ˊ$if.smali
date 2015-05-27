.class Lo/ᵘ$ˊ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﭔ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵘ$ˊ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field į:Lo/ᵘ;


# direct methods
.method constructor <init>(Lo/ᵘ;)V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    .line 506
    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 4

    .line 510
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˎ(Lo/ᵘ;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 511
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˊ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˊ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 516
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 517
    const/4 v3, 0x0

    .line 518
    instance-of v0, v2, Lo/ﭔ;

    if-eqz v0, :cond_2

    .line 519
    move-object v0, v2

    check-cast v0, Lo/ﭔ;

    move-object v3, v0

    .line 521
    :cond_2
    if-eqz v3, :cond_3

    .line 522
    invoke-interface {v3, p1}, Lo/ﭔ;->ᵢ(Landroid/view/View;)V

    .line 524
    :cond_3
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 4

    .line 528
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˎ(Lo/ᵘ;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 529
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˎ(Lo/ᵘ;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lo/ᵘ;->ˊ(Lo/ᵘ;I)I

    .line 532
    :cond_0
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˋ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lo/ᵘ$ˊ$if;->į:Lo/ᵘ;

    invoke-static {v0}, Lo/ᵘ;->ˋ(Lo/ᵘ;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 535
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 536
    const/4 v3, 0x0

    .line 537
    instance-of v0, v2, Lo/ﭔ;

    if-eqz v0, :cond_2

    .line 538
    move-object v0, v2

    check-cast v0, Lo/ﭔ;

    move-object v3, v0

    .line 540
    :cond_2
    if-eqz v3, :cond_3

    .line 541
    invoke-interface {v3, p1}, Lo/ﭔ;->ⁱ(Landroid/view/View;)V

    .line 543
    :cond_3
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 3

    .line 547
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 548
    const/4 v2, 0x0

    .line 549
    instance-of v0, v1, Lo/ﭔ;

    if-eqz v0, :cond_0

    .line 550
    move-object v0, v1

    check-cast v0, Lo/ﭔ;

    move-object v2, v0

    .line 552
    :cond_0
    if-eqz v2, :cond_1

    .line 553
    invoke-interface {v2, p1}, Lo/ﭔ;->ﹶ(Landroid/view/View;)V

    .line 555
    :cond_1
    return-void
.end method
