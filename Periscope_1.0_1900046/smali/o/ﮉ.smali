.class Lo/ﮉ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ﭴ$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fd:Lo/ﭴ;

.field final synthetic Fe:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/ﭴ;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/ﮉ;->Fd:Lo/ﭴ;

    iput-object p2, p0, Lo/ﮉ;->Fe:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ˋ(Lo/ﭖ;)V
    .locals 2

    iget-object v0, p0, Lo/ﮉ;->Fd:Lo/ﭴ;

    invoke-static {v0}, Lo/ﭴ;->ˋ(Lo/ﭴ;)Lo/ﭖ;

    move-result-object v0

    iget-object v1, p0, Lo/ﮉ;->Fe:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lo/ﭖ;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
