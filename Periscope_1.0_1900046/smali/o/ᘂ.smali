.class public Lo/ᘂ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒎ;
.implements Lo/ᒲ;


# instance fields
.field private final wR:J

.field private final wS:Lo/প;

.field private wT:Lo/ᘢ;

.field private wU:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lo/ᘂ;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lo/ᘂ;->wR:J

    .line 48
    new-instance v0, Lo/প;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/ᘂ;->wS:Lo/প;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᘂ;->wU:Z

    .line 50
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᒑ;Lo/ᒮ;)I
    .locals 6

    .line 68
    iget-object v0, p0, Lo/ᘂ;->wS:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-interface {p1, v0, v1, v2}, Lo/ᒑ;->read([BII)I

    move-result v5

    .line 69
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    .line 70
    const/4 v0, -0x1

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lo/ᘂ;->wS:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 75
    iget-object v0, p0, Lo/ᘂ;->wS:Lo/প;

    invoke-virtual {v0, v5}, Lo/প;->ʟ(I)V

    .line 79
    iget-object v0, p0, Lo/ᘂ;->wT:Lo/ᘢ;

    iget-object v1, p0, Lo/ᘂ;->wS:Lo/প;

    iget-wide v2, p0, Lo/ᘂ;->wR:J

    iget-boolean v4, p0, Lo/ᘂ;->wU:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/ᘢ;->ˊ(Lo/প;JZ)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᘂ;->wU:Z

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/ᒬ;)V
    .locals 2

    .line 54
    new-instance v0, Lo/ᘢ;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lo/ᒬ;->ר(I)Lo/ᒳ;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᘢ;-><init>(Lo/ᒳ;)V

    iput-object v0, p0, Lo/ᘂ;->wT:Lo/ᘢ;

    .line 55
    invoke-interface {p1}, Lo/ᒬ;->ᒯ()V

    .line 56
    invoke-interface {p1, p0}, Lo/ᒬ;->ˊ(Lo/ᒲ;)V

    .line 57
    return-void
.end method

.method public ᒮ()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᘂ;->wU:Z

    .line 62
    iget-object v0, p0, Lo/ᘂ;->wT:Lo/ᘢ;

    invoke-virtual {v0}, Lo/ᘢ;->ᒮ()V

    .line 63
    return-void
.end method

.method public ᚆ()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public ｰ(J)J
    .locals 2

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method
