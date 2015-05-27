.class public Lo/afy;
.super Lo/adv;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afy$ˊ;,
        Lo/afy$if;
    }
.end annotation


# instance fields
.field private final bCV:Lo/amu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ady;)V
    .locals 3

    .line 14
    invoke-direct {p0, p1, p2}, Lo/adv;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 16
    new-instance v1, Lo/afy$if;

    invoke-direct {v1, p1, p2}, Lo/afy$if;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 17
    new-instance v2, Lo/afy$ˊ;

    invoke-direct {v2, p1, p2}, Lo/afy$ˊ;-><init>(Ljava/lang/String;Lo/ady;)V

    .line 18
    invoke-interface {p2}, Lo/ady;->xt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lo/amu;

    invoke-direct {v0, v1, v2}, Lo/amu;-><init>(Lo/ale;Lo/ale;)V

    iput-object v0, p0, Lo/afy;->bCV:Lo/amu;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lo/amu;

    invoke-direct {v0, v2, v1}, Lo/amu;-><init>(Lo/ale;Lo/ale;)V

    iput-object v0, p0, Lo/afy;->bCV:Lo/amu;

    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lo/afy;->bCV:Lo/amu;

    invoke-virtual {v0}, Lo/amu;->execute()Z

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 27
    iget-object v0, p0, Lo/afy;->bCV:Lo/amu;

    invoke-virtual {v0}, Lo/amu;->getIconResId()I

    move-result v0

    return v0
.end method

.method public getIconTint()I
    .locals 1

    .line 32
    iget-object v0, p0, Lo/afy;->bCV:Lo/amu;

    invoke-virtual {v0}, Lo/amu;->getIconTint()I

    move-result v0

    return v0
.end method

.method public ʲ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/afy;->bCV:Lo/amu;

    invoke-virtual {v0, p1}, Lo/amu;->ʲ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
