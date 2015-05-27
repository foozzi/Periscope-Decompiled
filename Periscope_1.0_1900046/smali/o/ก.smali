.class public Lo/ก;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʢ$if;
.implements Lo/গ;


# instance fields
.field private enabled:Z

.field private final tR:[Lo/গ;

.field private tS:Lo/গ;


# virtual methods
.method public getTrackCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lo/ก;->tR:[Lo/গ;

    array-length v0, v0

    return v0
.end method

.method public ˋ(ILjava/lang/Object;)V
    .locals 2

    .line 103
    iget-boolean v0, p0, Lo/ก;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 104
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lo/ก;->tR:[Lo/গ;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/ก;->tS:Lo/গ;

    .line 107
    :cond_1
    return-void
.end method
