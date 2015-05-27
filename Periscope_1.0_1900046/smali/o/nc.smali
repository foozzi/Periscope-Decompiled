.class public Lo/nc;
.super Landroid/app/Activity;
.source ""


# instance fields
.field QL:Lo/nd;

.field private QM:Lo/mr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private ˎ(Landroid/content/Intent;)Landroid/os/ResultReceiver;
    .locals 3

    .line 53
    const-string v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    move-object v2, v0

    .line 54
    if-nez v2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResultReceiver must not be null. This activity should not be started directly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-object v2
.end method

.method private ˏ(Landroid/content/Intent;)Lo/mr;
    .locals 6

    .line 63
    const-string v0, "session_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 65
    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->bj()Lo/mh;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lo/mh;->ᑊ(J)Lo/mg;

    move-result-object v0

    check-cast v0, Lo/mr;

    move-object v5, v0

    .line 67
    if-nez v5, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TwitterSession for id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-object v5
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/nc;->QL:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->bw()V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 94
    return-void
.end method

.method public onClickAllow(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/nc;->QL:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->bu()V

    .line 87
    invoke-virtual {p0}, Lo/nc;->finish()V

    .line 88
    return-void
.end method

.method public onClickNotNow(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/nc;->QL:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->bw()V

    .line 82
    invoke-virtual {p0}, Lo/nc;->finish()V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lo/me$ˏ;->tw__activity_share_email:I

    invoke-virtual {p0, v0}, Lo/nc;->setContentView(I)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lo/nc;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 40
    invoke-direct {p0, v3}, Lo/nc;->ˎ(Landroid/content/Intent;)Landroid/os/ResultReceiver;

    move-result-object v4

    .line 41
    invoke-direct {p0, v3}, Lo/nc;->ˏ(Landroid/content/Intent;)Lo/mr;

    move-result-object v0

    iput-object v0, p0, Lo/nc;->QM:Lo/mr;

    .line 42
    new-instance v0, Lo/nd;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;

    iget-object v2, p0, Lo/nc;->QM:Lo/mr;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/identity/ShareEmailClient;-><init>(Lo/mr;)V

    invoke-direct {v0, v1, v4}, Lo/nd;-><init>(Lcom/twitter/sdk/android/core/identity/ShareEmailClient;Landroid/os/ResultReceiver;)V

    iput-object v0, p0, Lo/nc;->QL:Lo/nd;

    .line 44
    sget v0, Lo/me$ˎ;->tw__share_email_desc:I

    invoke-virtual {p0, v0}, Lo/nc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 45
    invoke-virtual {p0, p0, v5}, Lo/nc;->ˊ(Landroid/content/Context;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to create ShareEmailActivity."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    invoke-virtual {p0}, Lo/nc;->finish()V

    .line 50
    :goto_0
    return-void
.end method

.method ˊ(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 6

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 75
    invoke-virtual {p0}, Lo/nc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/me$ᐝ;->tw__share_email_desc:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lo/nc;->QM:Lo/mr;

    invoke-virtual {v3}, Lo/mr;->getUserName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
