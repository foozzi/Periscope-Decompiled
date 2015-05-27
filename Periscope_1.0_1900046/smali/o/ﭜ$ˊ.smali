.class Lo/ﭜ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﭜ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic ﮋ:Lo/ﭜ;


# direct methods
.method private constructor <init>(Lo/ﭜ;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ﭜ;Lo/ﭡ;)V
    .locals 0

    .line 554
    invoke-direct {p0, p1}, Lo/ﭜ$ˊ;-><init>(Lo/ﭜ;)V

    return-void
.end method

.method private ᒼ()V
    .locals 1

    .line 630
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ʽ(Lo/ﭜ;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ʽ(Lo/ﭜ;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 633
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 590
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ᐝ(Lo/ﭜ;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 591
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->ڊ()Z

    .line 592
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ɨ()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 593
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ﭕ;->ˊ(Landroid/content/pm/ResolveInfo;)I

    move-result v3

    .line 594
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ﭕ;->ᴶ(I)Landroid/content/Intent;

    move-result-object v4

    .line 595
    if-eqz v4, :cond_0

    .line 596
    const/high16 v0, 0x80000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ʻ(Lo/ﭜ;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 600
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﭜ;->ˊ(Lo/ﭜ;Z)Z

    .line 601
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    iget-object v1, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v1}, Lo/ﭜ;->ʼ(Lo/ﭜ;)I

    move-result v1

    invoke-static {v0, v1}, Lo/ﭜ;->ˊ(Lo/ﭜ;I)V

    goto :goto_0

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 605
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 623
    invoke-direct {p0}, Lo/ﭜ$ˊ;->ᒼ()V

    .line 624
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    iget-object v0, v0, Lo/ﭜ;->ἶ:Lo/ˤ;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    iget-object v0, v0, Lo/ﭜ;->ἶ:Lo/ˤ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ˤ;->ˎ(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lo/ﭜ$if;

    move-object v2, v0

    .line 560
    invoke-virtual {v2, p3}, Lo/ﭜ$if;->getItemViewType(I)I

    move-result v3

    .line 561
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    .line 563
    :sswitch_0
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lo/ﭜ;->ˊ(Lo/ﭜ;I)V

    .line 564
    goto :goto_2

    .line 566
    :sswitch_1
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->ڊ()Z

    .line 567
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˏ(Lo/ﭜ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    if-lez p3, :cond_3

    .line 570
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/ﭕ;->ᴸ(I)V

    goto :goto_2

    .line 575
    :cond_0
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᒄ()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    .line 576
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/ﭕ;->ᴶ(I)Landroid/content/Intent;

    move-result-object v4

    .line 577
    if-eqz v4, :cond_2

    .line 578
    const/high16 v0, 0x80000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    :cond_2
    goto :goto_2

    .line 584
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 586
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 610
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ᐝ(Lo/ﭜ;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 611
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˊ(Lo/ﭜ;)Lo/ﭜ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ﭜ$if;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 612
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ﭜ;->ˊ(Lo/ﭜ;Z)Z

    .line 613
    iget-object v0, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    iget-object v1, p0, Lo/ﭜ$ˊ;->ﮋ:Lo/ﭜ;

    invoke-static {v1}, Lo/ﭜ;->ʼ(Lo/ﭜ;)I

    move-result v1

    invoke-static {v0, v1}, Lo/ﭜ;->ˊ(Lo/ﭜ;I)V

    goto :goto_0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 618
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
