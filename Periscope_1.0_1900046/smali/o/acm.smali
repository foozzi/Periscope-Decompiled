.class public Lo/acm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final blm:Landroid/content/SharedPreferences;

.field private final bnF:Lo/zx;

.field private final bny:Lo/ot;

.field private final bxR:Lo/aci;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ot;Lo/zx;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/acm;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/acm;->blm:Landroid/content/SharedPreferences;

    .line 28
    iput-object p2, p0, Lo/acm;->bny:Lo/ot;

    .line 29
    iput-object p3, p0, Lo/acm;->bnF:Lo/zx;

    .line 30
    new-instance v0, Lo/aci;

    iget-object v1, p0, Lo/acm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lo/acm;->blm:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p2, v2}, Lo/aci;-><init>(Landroid/content/Context;Lo/ot;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lo/acm;->bxR:Lo/aci;

    .line 31
    return-void
.end method

.method private ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69
    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lo/acm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lo/acl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cookie"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 74
    if-eqz p3, :cond_0

    .line 75
    const-string v0, "registration_id"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_0
    iget-object v0, p0, Lo/acm;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-void
.end method


# virtual methods
.method tH()Lo/ot;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/acm;->bny:Lo/ot;

    return-object v0
.end method

.method public unregister()V
    .locals 3

    .line 65
    const-string v0, "unregister"

    iget-object v1, p0, Lo/acm;->bnF:Lo/zx;

    invoke-virtual {v1}, Lo/zx;->ve()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/acm;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public ı(Landroid/content/Context;)Z
    .locals 2

    .line 38
    invoke-static {p1}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ژ()V
    .locals 4

    .line 46
    iget-object v0, p0, Lo/acm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lo/acm;->ı(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lo/acn;

    iget-object v1, p0, Lo/acm;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lo/acn;-><init>(I)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lo/acm;->bxR:Lo/aci;

    invoke-virtual {v0}, Lo/aci;->wK()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "register"

    iget-object v1, p0, Lo/acm;->bnF:Lo/zx;

    invoke-virtual {v1}, Lo/zx;->ve()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/acm;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "register_token"

    iget-object v1, p0, Lo/acm;->bnF:Lo/zx;

    invoke-virtual {v1}, Lo/zx;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lo/acm;->ͺ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method
