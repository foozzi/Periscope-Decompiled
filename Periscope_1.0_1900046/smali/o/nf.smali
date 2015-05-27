.class public Lo/nf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nf$ˊ;,
        Lo/nf$if;
    }
.end annotation


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final QQ:Lo/mt;

.field final QR:Lo/mh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/mh<Lo/mr;>;"
        }
    .end annotation
.end field

.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v1

    invoke-virtual {v1}, Lo/mn;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v2

    invoke-virtual {v2}, Lo/mn;->bj()Lo/mh;

    move-result-object v2

    invoke-static {}, Lo/nf$if;->by()Lo/mt;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lo/nf;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mh;Lo/mt;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mh;Lo/mt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mh<Lo/mr;>;Lo/mt;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p4, p0, Lo/nf;->QQ:Lo/mt;

    .line 61
    iput-object p1, p0, Lo/nf;->dV:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 63
    iput-object p3, p0, Lo/nf;->QR:Lo/mh;

    .line 64
    return-void
.end method

.method private bx()V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lo/nf;->getScribeClient()Lo/nu;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v0, Lo/nw$if;

    invoke-direct {v0}, Lo/nw$if;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lo/nw$if;->וֹ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lo/nw$if;->ﹲ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lo/nw$if;->ﹷ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lo/nw$if;->ﹻ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lo/nw$if;->ﹼ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    const-string v1, "impression"

    invoke-virtual {v0, v1}, Lo/nw$if;->ﺑ(Ljava/lang/String;)Lo/nw$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/nw$if;->bU()Lo/nw;

    move-result-object v3

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Lo/nw;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lo/nu;->ˊ([Lo/nw;)V

    .line 127
    return-void
.end method

.method private ˊ(Landroid/app/Activity;Lo/nf$ˊ;)Z
    .locals 4

    .line 98
    invoke-static {p1}, Lo/nb;->ˆ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lo/nf;->QQ:Lo/mt;

    new-instance v1, Lo/nb;

    iget-object v2, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->bc()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lo/nb;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V

    invoke-virtual {v0, p1, v1}, Lo/mt;->ˊ(Landroid/app/Activity;Lo/ms;)Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ˋ(Landroid/app/Activity;Lo/lz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/app/Activity;Lo/lz<Lo/mr;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lo/nf;->bx()V

    .line 90
    new-instance v2, Lo/nf$ˊ;

    iget-object v0, p0, Lo/nf;->QR:Lo/mh;

    invoke-direct {v2, v0, p2}, Lo/nf$ˊ;-><init>(Lo/mh;Lo/lz;)V

    .line 91
    invoke-direct {p0, p1, v2}, Lo/nf;->ˊ(Landroid/app/Activity;Lo/nf$ˊ;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v2}, Lo/nf;->ˋ(Landroid/app/Activity;Lo/nf$ˊ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lo/ml;

    const-string v1, "Authorize failed."

    invoke-direct {v0, v1}, Lo/ml;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lo/nf$ˊ;->ˊ(Lo/mo;)V

    .line 95
    :cond_0
    return-void
.end method

.method private ˋ(Landroid/app/Activity;Lo/nf$ˊ;)Z
    .locals 4

    .line 108
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/nf;->QQ:Lo/mt;

    new-instance v1, Lo/my;

    iget-object v2, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->bc()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lo/my;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V

    invoke-virtual {v0, p1, v1}, Lo/mt;->ˊ(Landroid/app/Activity;Lo/ms;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bc()I
    .locals 1

    .line 44
    iget-object v0, p0, Lo/nf;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->bc()I

    move-result v0

    return v0
.end method

.method protected getScribeClient()Lo/nu;
    .locals 1

    .line 172
    invoke-static {}, Lo/oe;->getScribeClient()Lo/nu;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 138
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lo/nf;->QQ:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->bn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorize not in progress"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lo/nf;->QQ:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->bo()Lo/ms;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, p2, p3}, Lo/ms;->ˊ(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lo/nf;->QQ:Lo/mt;

    invoke-virtual {v0}, Lo/mt;->bm()V

    .line 149
    :cond_1
    :goto_0
    return-void
.end method

.method public ˊ(Landroid/app/Activity;Lo/lz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/app/Activity;Lo/lz<Lo/mr;>;)V"
        }
    .end annotation

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Cannot authorize, activity is finishing."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, p1, p2}, Lo/nf;->ˋ(Landroid/app/Activity;Lo/lz;)V

    .line 86
    :goto_0
    return-void
.end method
