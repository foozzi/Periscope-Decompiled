.class Lo/zp$ˊ;
.super Lo/zw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Lo/xh;>;)V"
        }
    .end annotation

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/zw;-><init>(Ljava/util/Map;I)V

    .line 165
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 230
    const-string v0, "main_provider"

    return-object v0
.end method

.method protected ˎ(Lo/xh;)Z
    .locals 1

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method protected ᐝ(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<Lo/anh;>;)V"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lo/zp$ˊ;->vb()Ljava/util/List;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lo/anh$if;->bNM:Lo/anh$if;

    invoke-static {v0}, Lo/anh;->ˊ(Lo/anh$if;)Lo/anh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anh;

    invoke-virtual {v0}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v0

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    if-eq v0, v1, :cond_1

    .line 187
    sget-object v0, Lo/anh$if;->bNM:Lo/anh$if;

    invoke-static {v0}, Lo/anh;->ˊ(Lo/anh$if;)Lo/anh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lo/anh$if;->bNN:Lo/anh$if;

    invoke-static {v0}, Lo/anh;->ˊ(Lo/anh$if;)Lo/anh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 193
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 194
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 197
    invoke-virtual {p0, v4}, Lo/zp$ˊ;->ｪ(I)Lo/xh;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    goto :goto_1

    .line 202
    :cond_2
    sget-object v0, Lo/anh$if;->bNN:Lo/anh$if;

    invoke-static {v0}, Lo/anh;->ˊ(Lo/anh$if;)Lo/anh;

    move-result-object v6

    .line 203
    add-int/lit8 v7, v4, -0x1

    .line 204
    if-lez v7, :cond_3

    .line 205
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anh;

    invoke-virtual {v0}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v0

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    if-eq v0, v1, :cond_3

    .line 206
    sget-object v0, Lo/anh$if;->bNO:Lo/anh$if;

    invoke-static {v0}, Lo/anh;->ˊ(Lo/anh$if;)Lo/anh;

    move-result-object v6

    .line 209
    :cond_3
    invoke-interface {v2, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    goto :goto_2

    .line 194
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lo/zp$ˊ;->bsl:I

    .line 217
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 218
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 219
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anh;

    invoke-virtual {v0}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v0

    sget-object v1, Lo/anh$if;->bNL:Lo/anh$if;

    if-ne v0, v1, :cond_5

    .line 220
    invoke-virtual {p0, v4}, Lo/zp$ˊ;->ｪ(I)Lo/xh;

    move-result-object v5

    .line 221
    invoke-virtual {v5}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_5

    .line 222
    iget v0, p0, Lo/zp$ˊ;->bsl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/zp$ˊ;->bsl:I

    .line 218
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 226
    :cond_6
    return-void
.end method
