.class public Lo/amu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ale;


# instance fields
.field private final bNv:Lo/ale;

.field private final bNw:Lo/ale;

.field private bNx:Lo/ale;


# direct methods
.method public constructor <init>(Lo/ale;Lo/ale;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lo/amu;->bNv:Lo/ale;

    .line 13
    iput-object p2, p0, Lo/amu;->bNw:Lo/ale;

    .line 15
    iget-object v0, p0, Lo/amu;->bNv:Lo/ale;

    iput-object v0, p0, Lo/amu;->bNx:Lo/ale;

    .line 16
    return-void
.end method

.method private toggle()V
    .locals 2

    .line 19
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    iget-object v1, p0, Lo/amu;->bNv:Lo/ale;

    if-ne v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lo/amu;->bNw:Lo/ale;

    iput-object v0, p0, Lo/amu;->bNx:Lo/ale;

    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lo/amu;->bNv:Lo/ale;

    iput-object v0, p0, Lo/amu;->bNx:Lo/ale;

    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0}, Lo/ale;->execute()Z

    .line 49
    invoke-direct {p0}, Lo/amu;->toggle()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 28
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0}, Lo/ale;->getIconResId()I

    move-result v0

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 33
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0}, Lo/ale;->getIconTint()I

    move-result v0

    return v0
.end method

.method public xh()Lo/ali;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0}, Lo/ale;->xh()Lo/ali;

    move-result-object v0

    return-object v0
.end method

.method public xi()I
    .locals 1

    .line 43
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0}, Lo/ale;->xi()I

    move-result v0

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/amu;->bNx:Lo/ale;

    invoke-interface {v0, p1}, Lo/ale;->ʲ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
