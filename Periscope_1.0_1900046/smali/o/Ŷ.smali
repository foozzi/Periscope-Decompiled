.class final Lo/Ŷ;
.super Lo/č;
.source ""


# instance fields
.field public final zu:B

.field public final zv:B


# direct methods
.method protected constructor <init>(BB)V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/č;-><init>(I)V

    .line 77
    iput-byte p1, p0, Lo/Ŷ;->zu:B

    .line 78
    iput-byte p2, p0, Lo/Ŷ;->zv:B

    .line 79
    return-void
.end method


# virtual methods
.method public 忄()Z
    .locals 2

    .line 86
    iget-byte v0, p0, Lo/Ŷ;->zu:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lo/Ŷ;->zu:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Lo/Ŷ;->zv:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Lo/Ŷ;->zv:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public אּ()Z
    .locals 2

    .line 94
    iget-byte v0, p0, Lo/Ŷ;->zu:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lo/Ŷ;->zu:B

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-byte v0, p0, Lo/Ŷ;->zv:B

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lo/Ŷ;->zv:B

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
