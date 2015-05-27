.class Lo/ᔥ;
.super Lo/ῑ$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ō:Lo/ᓴ;

.field final synthetic ţ:Lo/ᓴ$ˎ;


# direct methods
.method constructor <init>(Lo/ᓴ$ˎ;Landroid/view/View;Lo/ᓴ;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iput-object p3, p0, Lo/ᔥ;->ō:Lo/ᓴ;

    invoke-direct {p0, p2}, Lo/ῑ$ˊ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public Ӏ()Lo/ῑ;
    .locals 1

    .line 598
    iget-object v0, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iget-object v0, v0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ˊ(Lo/ᓴ;)Lo/ᓴ$ˏ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    return-object v0

    .line 602
    :cond_0
    iget-object v0, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iget-object v0, v0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ˊ(Lo/ᓴ;)Lo/ᓴ$ˏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓴ$ˏ;->Ӏ()Lo/ῑ;

    move-result-object v0

    return-object v0
.end method

.method public ײ()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iget-object v0, v0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->showOverflowMenu()Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public ᑉ()Z
    .locals 1

    .line 616
    iget-object v0, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iget-object v0, v0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ˋ(Lo/ᓴ;)Lo/ᓴ$ˋ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Lo/ᔥ;->ţ:Lo/ᓴ$ˎ;

    iget-object v0, v0, Lo/ᓴ$ˎ;->ﾓ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->hideOverflowMenu()Z

    .line 621
    const/4 v0, 0x1

    return v0
.end method
