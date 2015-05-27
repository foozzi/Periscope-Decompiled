.class Lo/jh;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/sql/Timestamp;>;"
    }
.end annotation


# instance fields
.field final synthetic MU:Lo/gk;

.field final synthetic MV:Lo/jg;


# direct methods
.method constructor <init>(Lo/jg;Lo/gk;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lo/jh;->MV:Lo/jg;

    iput-object p2, p0, Lo/jh;->MU:Lo/gk;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 524
    move-object v0, p2

    check-cast v0, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, v0}, Lo/jh;->ˊ(Lo/kc;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/sql/Timestamp;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lo/jh;->MU:Lo/gk;

    invoke-virtual {v0, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 524
    invoke-virtual {p0, p1}, Lo/jh;->ՙ(Lo/jz;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public ՙ(Lo/jz;)Ljava/sql/Timestamp;
    .locals 4

    .line 526
    iget-object v0, p0, Lo/jh;->MU:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    move-object v3, v0

    .line 527
    if-eqz v3, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
