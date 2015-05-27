.class Lo/ain;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aif$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bFw:Lo/vn;

.field final synthetic bFx:Lo/ot;

.field final synthetic bGu:Lo/aim;


# direct methods
.method constructor <init>(Lo/aim;Lo/vn;Lo/ot;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/ain;->bGu:Lo/aim;

    iput-object p2, p0, Lo/ain;->bFw:Lo/vn;

    iput-object p3, p0, Lo/ain;->bFx:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 60
    iget-object v0, p0, Lo/ain;->bFx:Lo/ot;

    iget-object v1, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v1}, Lo/aim;->ˊ(Lo/aim;)Lo/zn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lo/ain;->bFw:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tR()V

    .line 62
    return-void
.end method

.method public init()V
    .locals 2

    .line 42
    iget-object v0, p0, Lo/ain;->bFw:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tQ()V

    .line 43
    iget-object v0, p0, Lo/ain;->bFx:Lo/ot;

    iget-object v1, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v1}, Lo/aim;->ˊ(Lo/aim;)Lo/zn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public pause()V
    .locals 0

    .line 67
    return-void
.end method

.method public resume()V
    .locals 0

    .line 72
    return-void
.end method

.method public ˊ(Lo/aif$if$if;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v0, p1}, Lo/aim;->ˊ(Lo/aim;Lo/aif$if$if;)Lo/aif$if$if;

    .line 49
    iget-object v0, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v0}, Lo/aim;->ˊ(Lo/aim;)Lo/zn;

    move-result-object v0

    invoke-virtual {v0}, Lo/zn;->uR()V

    .line 50
    return-void
.end method

.method public ˊ(Lo/aif$if$ˊ;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v0, p1}, Lo/aim;->ˊ(Lo/aim;Lo/aif$if$ˊ;)Lo/aif$if$ˊ;

    .line 55
    iget-object v0, p0, Lo/ain;->bGu:Lo/aim;

    invoke-static {v0}, Lo/aim;->ˊ(Lo/aim;)Lo/zn;

    move-result-object v0

    invoke-virtual {v0}, Lo/zn;->refresh()V

    .line 56
    return-void
.end method
