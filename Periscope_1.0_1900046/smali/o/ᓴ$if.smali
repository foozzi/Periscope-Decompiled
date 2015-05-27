.class Lo/ᓴ$if;
.super Lo/ᵅ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private ᒉ:Lo/ᵡ;

.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method public constructor <init>(Lo/ᓴ;Landroid/content/Context;Lo/ᵡ;)V
    .locals 11

    .line 690
    iput-object p1, p0, Lo/ᓴ$if;->ﾓ:Lo/ᓴ;

    .line 691
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    sget v5, Lo/ڊ$if;->actionOverflowMenuStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ᵅ;-><init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZI)V

    .line 693
    iput-object p3, p0, Lo/ᓴ$if;->ᒉ:Lo/ᵡ;

    .line 695
    invoke-virtual {p3}, Lo/ᵡ;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lo/ᵃ;

    move-object v6, v0

    .line 696
    invoke-virtual {v6}, Lo/ᵃ;->İ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    invoke-static {p1}, Lo/ᓴ;->ˏ(Lo/ᓴ;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lo/ᓴ;->ᐝ(Lo/ᓴ;)Lo/ᵊ;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/ᓴ;->ˏ(Lo/ᓴ;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᓴ$if;->setAnchorView(Landroid/view/View;)V

    .line 701
    :cond_1
    iget-object v0, p1, Lo/ᓴ;->ﾁ:Lo/ᓴ$aux;

    invoke-virtual {p0, v0}, Lo/ᓴ$if;->ˊ(Lo/ᵉ$if;)V

    .line 703
    const/4 v7, 0x0

    .line 704
    invoke-virtual {p3}, Lo/ᵡ;->size()I

    move-result v8

    .line 705
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 706
    invoke-virtual {p3, v9}, Lo/ᵡ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 707
    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 708
    const/4 v7, 0x1

    .line 709
    goto :goto_2

    .line 705
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 712
    :cond_3
    :goto_2
    invoke-virtual {p0, v7}, Lo/ᓴ$if;->setForceShowIcon(Z)V

    .line 713
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 717
    invoke-super {p0}, Lo/ᵅ;->onDismiss()V

    .line 718
    iget-object v0, p0, Lo/ᓴ$if;->ﾓ:Lo/ᓴ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᓴ;->ˊ(Lo/ᓴ;Lo/ᓴ$if;)Lo/ᓴ$if;

    .line 719
    iget-object v0, p0, Lo/ᓴ$if;->ﾓ:Lo/ᓴ;

    const/4 v1, 0x0

    iput v1, v0, Lo/ᓴ;->ﾊ:I

    .line 720
    return-void
.end method
