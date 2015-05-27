.class Lo/ﭸ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ﺙ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe99<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic Fd:Lo/ﭴ;


# direct methods
.method constructor <init>(Lo/ﭴ;)V
    .locals 0

    iput-object p1, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ﭖ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    invoke-static {v0, p1}, Lo/ﭴ;->ˊ(Lo/ﭴ;Lo/ﭖ;)Lo/ﭖ;

    iget-object v0, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    invoke-static {v0}, Lo/ﭴ;->ˊ(Lo/ﭴ;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭴ$if;

    move-object v3, v0

    iget-object v0, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    invoke-static {v0}, Lo/ﭴ;->ˋ(Lo/ﭴ;)Lo/ﭖ;

    move-result-object v0

    invoke-interface {v3, v0}, Lo/ﭴ$if;->ˋ(Lo/ﭖ;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    invoke-static {v0}, Lo/ﭴ;->ˊ(Lo/ﭴ;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lo/ﭸ;->Fd:Lo/ﭴ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﭴ;->ˊ(Lo/ﭴ;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
