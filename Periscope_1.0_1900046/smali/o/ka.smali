.class final Lo/ka;
.super Lo/hi;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1600
    invoke-direct {p0}, Lo/hi;-><init>()V

    return-void
.end method


# virtual methods
.method public ʻ(Lo/jz;)V
    .locals 4

    .line 1602
    instance-of v0, p1, Lo/ic;

    if-eqz v0, :cond_0

    .line 1603
    move-object v0, p1

    check-cast v0, Lo/ic;

    invoke-virtual {v0}, Lo/ic;->M()V

    .line 1604
    return-void

    .line 1606
    :cond_0
    invoke-static {p1}, Lo/jz;->ᵢ(Lo/jz;)I

    move-result v3

    .line 1607
    if-nez v3, :cond_1

    .line 1608
    invoke-static {p1}, Lo/jz;->ⁱ(Lo/jz;)I

    move-result v3

    .line 1610
    :cond_1
    const/16 v0, 0xd

    if-ne v3, v0, :cond_2

    .line 1611
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lo/jz;->ˊ(Lo/jz;I)I

    goto :goto_0

    .line 1612
    :cond_2
    const/16 v0, 0xc

    if-ne v3, v0, :cond_3

    .line 1613
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lo/jz;->ˊ(Lo/jz;I)I

    goto :goto_0

    .line 1614
    :cond_3
    const/16 v0, 0xe

    if-ne v3, v0, :cond_4

    .line 1615
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lo/jz;->ˊ(Lo/jz;I)I

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lo/jz;->ﹶ(Lo/jz;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lo/jz;->ﹺ(Lo/jz;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/jz;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :goto_0
    return-void
.end method
