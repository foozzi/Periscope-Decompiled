.class public Lo/Ϝ;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private closed:Z

.field private final tE:Lo/к;

.field private final tF:Lo/ϒ;

.field private zU:Z

.field private final zW:[B


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ϝ;->zU:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ϝ;->closed:Z

    .line 41
    iput-object p1, p0, Lo/Ϝ;->tF:Lo/ϒ;

    .line 42
    iput-object p2, p0, Lo/Ϝ;->tE:Lo/к;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lo/Ϝ;->zW:[B

    .line 44
    return-void
.end method

.method private ﾜ()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lo/Ϝ;->zU:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/Ϝ;->tF:Lo/ϒ;

    iget-object v1, p0, Lo/Ϝ;->tE:Lo/к;

    invoke-interface {v0, v1}, Lo/ϒ;->ˊ(Lo/к;)J

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Ϝ;->zU:Z

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lo/Ϝ;->closed:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/Ϝ;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Ϝ;->closed:Z

    .line 93
    :cond_0
    return-void
.end method

.method public open()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/Ϝ;->ﾜ()V

    .line 57
    return-void
.end method

.method public read()I
    .locals 3

    .line 61
    iget-object v0, p0, Lo/Ϝ;->zW:[B

    invoke-virtual {p0, v0}, Lo/Ϝ;->read([B)I

    move-result v2

    .line 62
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 63
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lo/Ϝ;->zW:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/Ϝ;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 75
    iget-boolean v0, p0, Lo/Ϝ;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 76
    invoke-direct {p0}, Lo/Ϝ;->ﾜ()V

    .line 77
    iget-object v0, p0, Lo/Ϝ;->tF:Lo/ϒ;

    invoke-interface {v0, p1, p2, p3}, Lo/ϒ;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2

    .line 82
    iget-boolean v0, p0, Lo/Ϝ;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 83
    invoke-direct {p0}, Lo/Ϝ;->ﾜ()V

    .line 84
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
