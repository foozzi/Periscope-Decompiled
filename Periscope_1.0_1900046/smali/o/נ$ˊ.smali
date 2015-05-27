.class Lo/נ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/נ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic ךּ:Lo/נ;


# direct methods
.method private constructor <init>(Lo/נ;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/נ;Lo/נ$1;)V
    .locals 0

    .line 684
    invoke-direct {p0, p1}, Lo/נ$ˊ;-><init>(Lo/נ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 687
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ˊ(Lo/נ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ˋ(Lo/נ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/נ;->ˊ(Lo/נ;Z)Z

    .line 693
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ˎ(Lo/נ;)Lo/נ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/נ$if;->start()V

    .line 696
    :cond_1
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ˎ(Lo/נ;)Lo/נ$if;

    move-result-object v2

    .line 697
    invoke-virtual {v2}, Lo/נ$if;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ˏ(Lo/נ;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 698
    :cond_2
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/נ;->ˋ(Lo/נ;Z)Z

    .line 699
    return-void

    .line 702
    :cond_3
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ᐝ(Lo/נ;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/נ;->ˎ(Lo/נ;Z)Z

    .line 704
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ʻ(Lo/נ;)V

    .line 707
    :cond_4
    invoke-virtual {v2}, Lo/נ$if;->ᖮ()V

    .line 709
    invoke-virtual {v2}, Lo/נ$if;->ᵙ()I

    move-result v3

    .line 710
    invoke-virtual {v2}, Lo/נ$if;->ᵛ()I

    move-result v4

    .line 711
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-virtual {v0, v3, v4}, Lo/נ;->ʻ(II)V

    .line 714
    iget-object v0, p0, Lo/נ$ˊ;->ךּ:Lo/נ;

    invoke-static {v0}, Lo/נ;->ʼ(Lo/נ;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method
