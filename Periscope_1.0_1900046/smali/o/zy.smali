.class Lo/zy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/anh;>;"
    }
.end annotation


# instance fields
.field private final bsh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lo/xh;>;"
        }
    .end annotation
.end field

.field private bso:Lo/zq;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Lo/xh;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lo/zy;->bsh:Ljava/util/Map;

    .line 15
    sget-object v0, Lo/zq;->bsa:Lo/zq;

    iput-object v0, p0, Lo/zy;->bso:Lo/zq;

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 9
    move-object v0, p1

    check-cast v0, Lo/anh;

    move-object v1, p2

    check-cast v1, Lo/anh;

    invoke-virtual {p0, v0, v1}, Lo/zy;->ˊ(Lo/anh;Lo/anh;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/anh;Lo/anh;)I
    .locals 4

    .line 20
    iget-object v0, p0, Lo/zy;->bsh:Ljava/util/Map;

    invoke-virtual {p1}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v2, v0

    .line 21
    iget-object v0, p0, Lo/zy;->bsh:Ljava/util/Map;

    invoke-virtual {p2}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v3, v0

    .line 23
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 24
    iget-object v0, p0, Lo/zy;->bso:Lo/zq;

    invoke-virtual {v0, v2, v3}, Lo/zq;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 25
    :cond_0
    if-eqz v2, :cond_1

    .line 26
    const/4 v0, -0x1

    return v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Lo/zq;)Lo/zy;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/zy;->bso:Lo/zq;

    .line 34
    return-object p0
.end method
