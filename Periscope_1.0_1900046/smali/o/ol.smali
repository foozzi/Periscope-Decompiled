.class Lo/ol;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic Sk:Lo/gk;

.field final synthetic Sl:Lo/jy;

.field final synthetic Sn:Lo/ok;


# direct methods
.method constructor <init>(Lo/ok;Lo/gk;Lo/jy;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/ol;->Sn:Lo/ok;

    iput-object p2, p0, Lo/ol;->Sk:Lo/gk;

    iput-object p3, p0, Lo/ol;->Sl:Lo/jy;

    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/ol;->Sk:Lo/gk;

    invoke-virtual {v0, p1, p2}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/ol;->Sk:Lo/gk;

    invoke-virtual {v0, p1}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lo/ol;->Sl:Lo/jy;

    invoke-virtual {v1}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    if-nez v2, :cond_0

    .line 31
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    .line 34
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    .line 35
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    return-object v2
.end method
