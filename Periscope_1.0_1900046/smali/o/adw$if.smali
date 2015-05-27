.class Lo/adw$if;
.super Lo/afx;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bzs:Lo/adw;


# direct methods
.method constructor <init>(Lo/adw;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lo/adw$if;->bzs:Lo/adw;

    invoke-direct {p0}, Lo/afx;-><init>()V

    return-void
.end method


# virtual methods
.method xo()Z
    .locals 2

    .line 823
    iget-boolean v0, p0, Lo/adw$if;->bCT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/adw$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lo/adw$if;->bzs:Lo/adw;

    invoke-virtual {v1}, Lo/adw;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method xp()Z
    .locals 2

    .line 828
    iget-object v0, p0, Lo/adw$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lo/adw$if;->bzs:Lo/adw;

    invoke-virtual {v1}, Lo/adw;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
