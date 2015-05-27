.class Lo/ᴒ;
.super Lo/ᚁ;
.source ""


# instance fields
.field private ww:I

.field private xg:Z

.field private xj:J


# direct methods
.method public constructor <init>(Lo/ᒳ;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lo/ᚁ;-><init>(Lo/ᒳ;)V

    .line 37
    invoke-static {}, Lo/ب;->Һ()Lo/ب;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 38
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;JZ)V
    .locals 2

    .line 47
    if-eqz p4, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᴒ;->xg:Z

    .line 49
    iput-wide p2, p0, Lo/ᴒ;->xj:J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lo/ᴒ;->ww:I

    .line 52
    :cond_0
    iget-boolean v0, p0, Lo/ᴒ;->xg:Z

    if-eqz v0, :cond_1

    .line 53
    iget v0, p0, Lo/ᴒ;->ww:I

    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ᴒ;->ww:I

    .line 54
    iget-object v0, p0, Lo/ᴒ;->wZ:Lo/ᒳ;

    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 56
    :cond_1
    return-void
.end method

.method public ᒮ()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᴒ;->xg:Z

    .line 43
    return-void
.end method

.method public ᴫ()V
    .locals 7

    .line 60
    iget-object v0, p0, Lo/ᴒ;->wZ:Lo/ᒳ;

    iget-wide v1, p0, Lo/ᴒ;->xj:J

    iget v4, p0, Lo/ᴒ;->ww:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᴒ;->xg:Z

    .line 62
    return-void
.end method
