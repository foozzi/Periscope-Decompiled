.class public final Lo/ヾ$ᐝ;
.super Lo/ヾ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u141d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<TT;>.if;"
    }
.end annotation


# instance fields
.field final synthetic Em:Lo/ヾ;


# direct methods
.method public constructor <init>(Lo/ヾ;)V
    .locals 2

    iput-object p1, p0, Lo/ヾ$ᐝ;->Em:Lo/ヾ;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/ヾ$if;-><init>(Lo/ヾ;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected ᴭ()Z
    .locals 2

    iget-object v0, p0, Lo/ヾ$ᐝ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˎ(Lo/ヾ;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ヾ$ᐝ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˏ(Lo/ヾ;)Lo/ᒴ$ˏ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mConnectionProgressReportCallbacks should not be null if mReportProgress"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-object v0, p0, Lo/ヾ$ᐝ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˏ(Lo/ヾ;)Lo/ᒴ$ˏ;

    move-result-object v0

    invoke-interface {v0}, Lo/ᒴ$ˏ;->য()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/ヾ$ᐝ;->Em:Lo/ヾ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ヾ;->ˋ(Lo/בֿ;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method
