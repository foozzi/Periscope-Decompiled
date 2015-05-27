.class Lo/ᓐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final 宀:Lo/ᴖ;

.field final synthetic ﬥ:Lo/ᐞ;


# direct methods
.method constructor <init>(Lo/ᐞ;)V
    .locals 7

    .line 184
    iput-object p1, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lo/ᴖ;

    iget-object v1, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-static {v1}, Lo/ᐞ;->ˊ(Lo/ᐞ;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-static {v2}, Lo/ᐞ;->ˋ(Lo/ᐞ;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ᴖ;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lo/ᓐ;->宀:Lo/ᴖ;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-static {v0}, Lo/ᐞ;->ˎ(Lo/ᐞ;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-static {v0}, Lo/ᐞ;->ˏ(Lo/ᐞ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lo/ᓐ;->ﬥ:Lo/ᐞ;

    invoke-static {v0}, Lo/ᐞ;->ˎ(Lo/ᐞ;)Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Lo/ᓐ;->宀:Lo/ᴖ;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 192
    :cond_0
    return-void
.end method
