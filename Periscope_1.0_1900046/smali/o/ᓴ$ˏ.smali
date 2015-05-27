.class Lo/ᓴ$ˏ;
.super Lo/ᵅ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cf"
.end annotation


# instance fields
.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method public constructor <init>(Lo/ᓴ;Landroid/content/Context;Lo/ᵁ;Landroid/view/View;Z)V
    .locals 6

    .line 673
    iput-object p1, p0, Lo/ᓴ$ˏ;->ﾓ:Lo/ᓴ;

    .line 674
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    sget v5, Lo/ڊ$if;->actionOverflowMenuStyle:I

    invoke-direct/range {v0 .. v5}, Lo/ᵅ;-><init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZI)V

    .line 675
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lo/ᓴ$ˏ;->setGravity(I)V

    .line 676
    iget-object v0, p1, Lo/ᓴ;->ﾁ:Lo/ᓴ$aux;

    invoke-virtual {p0, v0}, Lo/ᓴ$ˏ;->ˊ(Lo/ᵉ$if;)V

    .line 677
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 681
    invoke-super {p0}, Lo/ᵅ;->onDismiss()V

    .line 682
    iget-object v0, p0, Lo/ᓴ$ˏ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ˎ(Lo/ᓴ;)Lo/ᵁ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵁ;->close()V

    .line 683
    iget-object v0, p0, Lo/ᓴ$ˏ;->ﾓ:Lo/ᓴ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᓴ;->ˊ(Lo/ᓴ;Lo/ᓴ$ˏ;)Lo/ᓴ$ˏ;

    .line 684
    return-void
.end method
