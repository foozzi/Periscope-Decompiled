.class public final Lo/ヾ$ʻ;
.super Lo/ヾ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u02bb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<TT;>.if;"
    }
.end annotation


# instance fields
.field final synthetic Em:Lo/ヾ;


# direct methods
.method public constructor <init>(Lo/ヾ;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/ヾ$ʻ;->Em:Lo/ヾ;

    invoke-direct {p0, p1, p2, p3}, Lo/ヾ$if;-><init>(Lo/ヾ;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected ᴭ()Z
    .locals 2

    iget-object v0, p0, Lo/ヾ$ʻ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˎ(Lo/ヾ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ヾ$ʻ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˏ(Lo/ヾ;)Lo/ᒴ$ˏ;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PostValidationCallback should not happen when mReportProgress is false ormConnectionProgressReportCallbacks is null"

    invoke-static {v0, v1}, Lo/ﺧ;->ˎ(ZLjava/lang/Object;)V

    iget-object v0, p0, Lo/ヾ$ʻ;->Em:Lo/ヾ;

    invoke-static {v0}, Lo/ヾ;->ˏ(Lo/ヾ;)Lo/ᒴ$ˏ;

    move-result-object v0

    invoke-interface {v0}, Lo/ᒴ$ˏ;->র()V

    const/4 v0, 0x1

    return v0
.end method
