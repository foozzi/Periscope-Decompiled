.class Lo/ϲ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cH:Lo/ɔ;


# direct methods
.method constructor <init>(Lo/ɔ;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lo/ϲ;->cH:Lo/ɔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lo/ϲ;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˋ(Lo/ɔ;)Lo/د;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ϲ;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˋ(Lo/ɔ;)Lo/د;

    move-result-object v0

    instance-of v0, v0, Lo/ך;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lo/ϲ;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˋ(Lo/ɔ;)Lo/د;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/د;->changeCursor(Landroid/database/Cursor;)V

    .line 193
    :cond_0
    return-void
.end method
