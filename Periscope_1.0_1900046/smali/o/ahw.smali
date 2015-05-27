.class Lo/ahw;
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
.field final synthetic bFv:Lo/ahu;

.field final synthetic bFw:Lo/vn;

.field final synthetic bFx:Lo/ot;

.field final synthetic bFy:Lo/zz$if;


# direct methods
.method constructor <init>(Lo/ahu;Lo/vn;Lo/ot;Lo/zz$if;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/ahw;->bFv:Lo/ahu;

    iput-object p2, p0, Lo/ahw;->bFw:Lo/vn;

    iput-object p3, p0, Lo/ahw;->bFx:Lo/ot;

    iput-object p4, p0, Lo/ahw;->bFy:Lo/zz$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 110
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    invoke-virtual {v0}, Lo/zj;->uS()V

    .line 111
    iget-object v0, p0, Lo/ahw;->bFx:Lo/ot;

    iget-object v1, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v1}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lo/ahw;->bFw:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tR()V

    .line 113
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˊ(Lo/ahu;)Lo/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lo/ahg;->zD()Lo/zw;

    move-result-object v0

    iget-object v1, p0, Lo/ahw;->bFy:Lo/zz$if;

    invoke-virtual {v0, v1}, Lo/zw;->ˋ(Lo/zz$if;)V

    .line 114
    return-void
.end method

.method public init()V
    .locals 2

    .line 91
    iget-object v0, p0, Lo/ahw;->bFw:Lo/vn;

    invoke-virtual {v0}, Lo/vn;->tQ()V

    .line 92
    iget-object v0, p0, Lo/ahw;->bFx:Lo/ot;

    iget-object v1, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v1}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˊ(Lo/ahu;)Lo/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lo/ahg;->zD()Lo/zw;

    move-result-object v0

    iget-object v1, p0, Lo/ahw;->bFy:Lo/zz$if;

    invoke-virtual {v0, v1}, Lo/zw;->ˊ(Lo/zz$if;)V

    .line 94
    return-void
.end method

.method public pause()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    invoke-virtual {v0}, Lo/zj;->uS()V

    .line 119
    return-void
.end method

.method public resume()V
    .locals 4

    .line 123
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    invoke-virtual {v0}, Lo/zj;->uR()V

    .line 124
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/zj;->ﹾ(J)V

    .line 125
    return-void
.end method

.method public ˊ(Lo/aif$if$if;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0, p1}, Lo/ahu;->ˊ(Lo/ahu;Lo/aif$if$if;)Lo/aif$if$if;

    .line 99
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/zj;->ﹾ(J)V

    .line 100
    return-void
.end method

.method public ˊ(Lo/aif$if$ˊ;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0, p1}, Lo/ahu;->ˊ(Lo/ahu;Lo/aif$if$ˊ;)Lo/aif$if$ˊ;

    .line 105
    iget-object v0, p0, Lo/ahw;->bFv:Lo/ahu;

    invoke-static {v0}, Lo/ahu;->ˋ(Lo/ahu;)Lo/zj;

    move-result-object v0

    invoke-virtual {v0}, Lo/zj;->refresh()V

    .line 106
    return-void
.end method
