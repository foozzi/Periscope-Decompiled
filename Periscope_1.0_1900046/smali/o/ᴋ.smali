.class public Lo/ᴋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᔨ;
.implements Lo/ᔭ;


# instance fields
.field private mA:Lo/ᔨ;

.field private mB:Lo/ᔨ;

.field private mC:Lo/ᔭ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ᴋ;-><init>(Lo/ᔭ;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lo/ᔭ;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    .line 18
    return-void
.end method

.method private ᔭ()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ˎ(Lo/ᔨ;)Z

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

.method private ᖕ()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ˏ(Lo/ᔨ;)Z

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

.method private ᘆ()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    invoke-interface {v0}, Lo/ᔭ;->ᔨ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public begin()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->begin()V

    .line 89
    :cond_0
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->begin()V

    .line 92
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->clear()V

    .line 106
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->clear()V

    .line 107
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isComplete()Z

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

.method public isRunning()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isRunning()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->pause()V

    .line 97
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->pause()V

    .line 98
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->recycle()V

    .line 154
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->recycle()V

    .line 155
    return-void
.end method

.method public ˊ(Lo/ᔨ;Lo/ᔨ;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    .line 22
    iput-object p2, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    .line 23
    return-void
.end method

.method public ˎ(Lo/ᔨ;)Z
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/ᴋ;->ᔭ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->ᓷ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˏ(Lo/ᔨ;)Z
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/ᴋ;->ᖕ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ᴋ;->ᔨ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᐝ(Lo/ᔨ;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lo/ᴋ;->mC:Lo/ᔭ;

    invoke-interface {v0, p0}, Lo/ᔭ;->ᐝ(Lo/ᔨ;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->clear()V

    .line 75
    :cond_2
    return-void
.end method

.method public ᓷ()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ᴋ;->mA:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->ᓷ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᴋ;->mB:Lo/ᔨ;

    invoke-interface {v0}, Lo/ᔨ;->ᓷ()Z

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

.method public ᔨ()Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lo/ᴋ;->ᘆ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/ᴋ;->ᓷ()Z

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
