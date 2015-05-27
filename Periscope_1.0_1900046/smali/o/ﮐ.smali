.class Lo/ﮐ;
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


# direct methods
.method constructor <init>(Lo/ﭴ;)V
    .locals 0

    iput-object p1, p0, Lo/ﮐ;->Fd:Lo/ﭴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public ˋ(Lo/ﭖ;)V
    .locals 1

    iget-object v0, p0, Lo/ﮐ;->Fd:Lo/ﭴ;

    invoke-static {v0}, Lo/ﭴ;->ˋ(Lo/ﭴ;)Lo/ﭖ;

    move-result-object v0

    invoke-interface {v0}, Lo/ﭖ;->onResume()V

    return-void
.end method
