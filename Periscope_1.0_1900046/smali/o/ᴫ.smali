.class Lo/ᴫ;
.super Lo/ᚁ;
.source ""


# direct methods
.method public constructor <init>(Lo/ᒳ;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lo/ᚁ;-><init>(Lo/ᒳ;)V

    .line 34
    invoke-static {}, Lo/ب;->ӌ()Lo/ب;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 35
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;JZ)V
    .locals 10

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/প;->ʰ(I)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 50
    const/4 v8, 0x0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v7

    .line 53
    add-int/2addr v8, v7

    .line 54
    const/16 v0, 0xff

    if-eq v7, v0, :cond_0

    .line 56
    const/4 v9, 0x0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lo/প;->readUnsignedByte()I

    move-result v7

    .line 59
    add-int/2addr v9, v7

    .line 60
    const/16 v0, 0xff

    if-eq v7, v0, :cond_1

    .line 62
    invoke-static {v8, v9, p1}, Lo/ƫ;->ˊ(IILo/প;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lo/ᴫ;->wZ:Lo/ᒳ;

    invoke-interface {v0, p1, v9}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 64
    iget-object v0, p0, Lo/ᴫ;->wZ:Lo/ᒳ;

    move-wide v1, p2

    move v4, v9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1, v9}, Lo/প;->ʰ(I)V

    .line 68
    :goto_1
    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method public ᒮ()V
    .locals 0

    .line 40
    return-void
.end method

.method public ᴫ()V
    .locals 0

    .line 74
    return-void
.end method
