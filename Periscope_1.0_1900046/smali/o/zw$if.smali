.class Lo/zw$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/anh;>;"
    }
.end annotation


# instance fields
.field final synthetic bsm:Lo/zw;


# direct methods
.method constructor <init>(Lo/zw;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/zw$if;->bsm:Lo/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 127
    move-object v0, p1

    check-cast v0, Lo/anh;

    move-object v1, p2

    check-cast v1, Lo/anh;

    invoke-virtual {p0, v0, v1}, Lo/zw$if;->ˊ(Lo/anh;Lo/anh;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/anh;Lo/anh;)I
    .locals 4

    .line 130
    iget-object v0, p0, Lo/zw$if;->bsm:Lo/zw;

    iget-object v0, v0, Lo/zw;->bsh:Ljava/util/Map;

    invoke-virtual {p1}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v2, v0

    .line 131
    iget-object v0, p0, Lo/zw$if;->bsm:Lo/zw;

    iget-object v0, v0, Lo/zw;->bsh:Ljava/util/Map;

    invoke-virtual {p2}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v3, v0

    .line 132
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 133
    iget-object v0, p0, Lo/zw$if;->bsm:Lo/zw;

    invoke-virtual {v0, v2}, Lo/zw;->ˎ(Lo/xh;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lo/zw$if;->bsm:Lo/zw;

    invoke-virtual {v1, v3}, Lo/zw;->ˎ(Lo/xh;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0

    .line 134
    :cond_0
    if-eqz v2, :cond_1

    .line 135
    const/4 v0, -0x1

    return v0

    .line 137
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
