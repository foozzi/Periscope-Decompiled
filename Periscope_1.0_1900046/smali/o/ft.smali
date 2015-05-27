.class public final Lo/ft;
.super Lo/fw;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fw;Ljava/lang/Iterable<Lo/fw;>;"
    }
.end annotation


# instance fields
.field private final Kt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/fw;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lo/fw;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 330
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lo/ft;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/ft;

    iget-object v0, v0, Lo/ft;->Kt:Ljava/util/List;

    iget-object v1, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/Number;
    .locals 2

    .line 160
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->g()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 335
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    .line 192
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->i()D

    move-result-wide v0

    return-wide v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<Lo/fw;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 2

    .line 226
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->j()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public k()J
    .locals 2

    .line 258
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->k()J

    move-result-wide v0

    return-wide v0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public l()I
    .locals 2

    .line 274
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->l()I

    move-result v0

    return v0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public m()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    invoke-virtual {v0}, Lo/fw;->m()Z

    move-result v0

    return v0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 125
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public ˊ(ILo/fw;)Lo/fw;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    return-object v0
.end method

.method public ˎ(Lo/fw;)V
    .locals 1

    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lo/fy;->Ku:Lo/fy;

    .line 61
    :cond_0
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public ᴿ(I)Lo/fw;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/ft;->Kt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;

    return-object v0
.end method
